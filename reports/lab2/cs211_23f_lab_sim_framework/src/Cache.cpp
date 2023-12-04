/*
 * Implementation of a simple cache simulator
 *
 * Created By He, Hao in 2019-04-27
 */

#include <cstdio>
#include <cstdlib>

#include "Cache.h"

#ifdef MEMORY_YYX
Cache::Cache(MemoryManager *manager, Policy policy, Cache *lowerCache,
             bool writeBack, bool writeAllocate, int inclusionType,
             Cache *upperCache, int replacementType,
             bool ifUsingVictimCache, int victimCacheCapacity, int victimCacheLatency) {
  this->referenceCounter = 0;
  this->memory = manager;
  this->policy = policy;
  this->lowerCache = lowerCache;
  if (!this->isPolicyValid()) {
    fprintf(stderr, "Policy invalid!\n");
    exit(-1);
  }
  this->initCache();
  this->statistics.numRead = 0;
  this->statistics.numWrite = 0;
  this->statistics.numHit = 0;
  this->statistics.numMiss = 0;
  this->statistics.totalCycles = 0;
  this->writeBack = writeBack;
  this->writeAllocate = writeAllocate;
  // yyx add below
  this->inclusionType = inclusionType; 
  this->upperCache = upperCache; 
  this->replacementType = replacementType; 
  this->ifUsingVictimCache = ifUsingVictimCache;
  this->victimCacheCapacity = victimCacheCapacity;
  if (this->ifUsingVictimCache && this->policy.associativity > 1){
    fprintf(stderr, "Using victimCache but not direct associatity\n");
    exit(-1);
  }
  if (this->ifUsingVictimCache){
    printf("Using victim cache\n");
    this->victimCacheLatency = victimCacheLatency;
    if (this->victimCacheLatency < 0){
      fprintf(stderr, "Please specify victimCacheLatency!\n");
      exit(-1);
    }    
  }
}
#else
Cache::Cache(MemoryManager *manager, Policy policy, Cache *lowerCache,
             bool writeBack, bool writeAllocate) {
  this->referenceCounter = 0;
  this->memory = manager;
  this->policy = policy;
  this->lowerCache = lowerCache;
  if (!this->isPolicyValid()) {
    fprintf(stderr, "Policy invalid!\n");
    exit(-1);
  }
  this->initCache();
  this->statistics.numRead = 0;
  this->statistics.numWrite = 0;
  this->statistics.numHit = 0;
  this->statistics.numMiss = 0;
  this->statistics.totalCycles = 0;
  this->writeBack = writeBack;
  this->writeAllocate = writeAllocate;
}
#endif

bool Cache::inCache(uint32_t addr) {
  return getBlockId(addr) != -1 ? true : false;
}

uint32_t Cache::getBlockId(uint32_t addr) {
  uint32_t tag = this->getTag(addr);
  uint32_t id = this->getId(addr);
  // printf("0x%x 0x%x 0x%x\n", addr, tag, id);
  // iterate over the given set
  for (uint32_t i = id * policy.associativity;
       i < (id + 1) * policy.associativity; ++i) {
    if (this->blocks[i].id != id) {
      fprintf(stderr, "Inconsistent ID in block %d\n", i);
      exit(-1);
    }
    if (this->blocks[i].valid && this->blocks[i].tag == tag) {
      return i;
    }
  }
  // Victim Cache below
  // fail first
  if (this->ifUsingVictimCache){
    bool ifVictimCacheHit = 0;
    if (policy.associativity != 1){
      fprintf(stderr, "Using Victim cache but policy.associativity != 1\n");
      exit(-1);
    }    
    // Full associatity
    const int victimCacheSize = victimCache.size();
    for (size_t i = 0; i < victimCacheSize; i++)
    {
      // 访问队列的前端元素
      Cache::Block frontBlock = victimCache.front();
      victimCache.pop();
      if (getGlobalUniqueBlockIDFromAddr(addr) == getGlobalUniqueBlockIDFromBlock(frontBlock)){
        // if hit then add latency, if miss, then L1 miss, use L1 miss latency is ok because it assumes L2 and victim cache concurrently runs
        this->statistics.totalCycles += this->victimCacheLatency;        
        // Full associatity, if hit, swap
        if (ifVictimCacheHit){
          fprintf(stderr, "ERROR: hit 2 times in VictimCache：%d\n", i);
          exit(-1);
        }
        victimCache.push(this->blocks[id]);
        writeBlockToLowerLevel(this->blocks[id]);
        this->blocks[id] = frontBlock;
        ifVictimCacheHit = 1;
        // printf("victimCache hit\n");
      }else{
        // other remain the same
        victimCache.push(frontBlock);
      }
    }
    if (victimCache.size() != victimCacheSize){
      fprintf(stderr, "ERROR: after swap, victimCache.size() != victimCacheSize\n");
      exit(-1);
    }
    if (ifVictimCacheHit){
      return id;
    }    
  }

  return -1;
}

uint8_t Cache::getByte(uint32_t addr, uint32_t *cycles) {
  this->referenceCounter++;
  this->statistics.numRead++;

  // If in cache, return directly
  int blockId;
  if ((blockId = this->getBlockId(addr)) != -1) {
    uint32_t offset = this->getOffset(addr);
    this->statistics.numHit++;
    this->statistics.totalCycles += this->policy.hitLatency;
    this->blocks[blockId].lastReference = this->referenceCounter;
#ifdef MEMORY_YYX
    if (RRIP == this->replacementType){
      this->blocks[blockId].RRIPid = 0;
    }
#endif        
    if (cycles) *cycles = this->policy.hitLatency;
    return this->blocks[blockId].data[offset];
  }

  // Else, find the data in memory or other level of cache
  this->statistics.numMiss++;
  this->statistics.totalCycles += this->policy.missLatency;
  this->loadBlockFromLowerLevel(addr, cycles);

  // The block is in top level cache now, return directly
  if ((blockId = this->getBlockId(addr)) != -1) {
    uint32_t offset = this->getOffset(addr);
    this->blocks[blockId].lastReference = this->referenceCounter;
    return this->blocks[blockId].data[offset];
  } else {
    fprintf(stderr, "Error: data not in top level cache!\n");
    exit(-1);
  }
}

void Cache::setByte(uint32_t addr, uint8_t val, uint32_t *cycles) {
  this->referenceCounter++;
  this->statistics.numWrite++;

  // If in cache, write to it directly
  int blockId;
  if ((blockId = this->getBlockId(addr)) != -1) {
    uint32_t offset = this->getOffset(addr);
    this->statistics.numHit++;
    this->statistics.totalCycles += this->policy.hitLatency;
    this->blocks[blockId].modified = true;
    this->blocks[blockId].lastReference = this->referenceCounter;
    this->blocks[blockId].data[offset] = val;
    #ifdef MEMORY_YYX
    //RRIP
    this->blocks[blockId].RRIPid = 0; 
    this->updateLowerLevelAccordingToPolicy(blockId);
    #else
    if (!this->writeBack) {
      this->writeBlockToLowerLevel(this->blocks[blockId]);
      this->statistics.totalCycles += this->policy.missLatency;
    }
    #endif
    if (cycles) *cycles = this->policy.hitLatency;
    return;
  }

  // Else, load the data from cache
  // TODO: implement bypassing
  this->statistics.numMiss++;
  this->statistics.totalCycles += this->policy.missLatency;

  if (this->writeAllocate) {
    this->loadBlockFromLowerLevel(addr, cycles);

    if ((blockId = this->getBlockId(addr)) != -1) {
      uint32_t offset = this->getOffset(addr);
      this->blocks[blockId].modified = true;
      this->blocks[blockId].lastReference = this->referenceCounter;
      this->blocks[blockId].data[offset] = val;
    #ifdef MEMORY_YYX
      //RRIP done as read miss
      updateLowerLevelAccordingToPolicy(blockId);
    #endif      
      return;
    } else {
      fprintf(stderr, "Error: data not in top level cache!\n");
      exit(-1);
    }
  } else {
    if (this->lowerCache == nullptr) {
      this->memory->setByteNoCache(addr, val);
    } else {
      this->lowerCache->setByte(addr, val);
    }
  }
}

void Cache::printInfo(bool verbose) {
  printf("---------- Cache Info -----------\n");
  printf("Cache Size: %d bytes\n", this->policy.cacheSize);
  printf("Block Size: %d bytes\n", this->policy.blockSize);
  printf("Block Num: %d\n", this->policy.blockNum);
  printf("Associativiy: %d\n", this->policy.associativity);
  printf("Hit Latency: %d\n", this->policy.hitLatency);
  printf("Miss Latency: %d\n", this->policy.missLatency);

  if (verbose) {
    for (int j = 0; j < this->blocks.size(); ++j) {
      const Block &b = this->blocks[j];
      printf("Block %d: tag 0x%x id %d %s %s (last ref %d)\n", j, b.tag, b.id,
             b.valid ? "valid" : "invalid",
             b.modified ? "modified" : "unmodified", b.lastReference);
      // printf("Data: ");
      // for (uint8_t d : b.data)
      // printf("%d ", d);
      // printf("\n");
    }
  }
}

void Cache::printStatistics() {
  printf("-------- STATISTICS ----------\n");
  printf("Num Read: %d\n", this->statistics.numRead);
  printf("Num Write: %d\n", this->statistics.numWrite);
  printf("Num Hit: %d\n", this->statistics.numHit);
  printf("Num Miss: %d\n", this->statistics.numMiss);
  printf("Total Cycles: %llu\n", this->statistics.totalCycles);
  if (this->lowerCache != nullptr) {
    printf("---------- LOWER CACHE ----------\n");
    this->lowerCache->printStatistics();
  }
}

bool Cache::isPolicyValid() {
  if (!this->isPowerOfTwo(policy.cacheSize)) {
    fprintf(stderr, "Invalid Cache Size %d\n", policy.cacheSize);
    return false;
  }
  if (!this->isPowerOfTwo(policy.blockSize)) {
    fprintf(stderr, "Invalid Block Size %d\n", policy.blockSize);
    return false;
  }
  if (policy.cacheSize % policy.blockSize != 0) {
    fprintf(stderr, "cacheSize %% blockSize != 0\n");
    return false;
  }
  if (policy.blockNum * policy.blockSize != policy.cacheSize) {
    fprintf(stderr, "blockNum * blockSize != cacheSize\n");
    return false;
  }
  if (policy.blockNum % policy.associativity != 0) {
    fprintf(stderr, "blockNum %% associativity != 0\n");
    return false;
  }
  return true;
}

void Cache::initCache() {
  this->blocks = std::vector<Block>(policy.blockNum);
  for (uint32_t i = 0; i < this->blocks.size(); ++i) {
    Block &b = this->blocks[i];
    b.valid = false;
    b.modified = false;
    b.size = policy.blockSize;
    b.tag = 0;
    b.id = i / policy.associativity;
    b.lastReference = 0;
    b.data = std::vector<uint8_t>(b.size);
#ifdef MEMORY_YYX
    b.RRIPid = (1<<policy.associativity)-1;
#endif    
  }
}

void Cache::loadBlockFromLowerLevel(uint32_t addr, uint32_t *cycles) {
  uint32_t blockSize = this->policy.blockSize;

  // Initialize new block from memory
  Block b;
  b.valid = true;
  b.modified = false;
  b.tag = this->getTag(addr);
  b.id = this->getId(addr);
  b.size = blockSize;
  b.data = std::vector<uint8_t>(b.size);
#ifdef MEMORY_YYX
// RRIP
  b.RRIPid = (1<<(this->policy.associativity))-2;
  
#endif  
  uint32_t bits = this->log2i(blockSize);
  uint32_t mask = ~((1 << bits) - 1);
  uint32_t blockAddrBegin = addr & mask;
  for (uint32_t i = blockAddrBegin; i < blockAddrBegin + blockSize; ++i) {
    if (this->lowerCache == nullptr) {
      b.data[i - blockAddrBegin] = this->memory->getByteNoCache(i);
      if (cycles) *cycles = 100;
    } else 
      b.data[i - blockAddrBegin] = this->lowerCache->getByte(i, cycles);
  }
#ifdef MEMORY_YYX
  if (EXCLUSIVE == this->inclusionType && this->lowerCache){
    // invalid next level cache
    this->lowerCache->exclusiveInvalidation(addr);
  }
#endif
  // Find replace block
  uint32_t id = this->getId(addr);
  uint32_t blockIdBegin = id * this->policy.associativity;
  uint32_t blockIdEnd = (id + 1) * this->policy.associativity;
  uint32_t replaceId = this->getReplacementBlockId(blockIdBegin, blockIdEnd);
  Block replaceBlock = this->blocks[replaceId];
  // yyx comment: if writeThrough or no valid or no modified, just throw away
  if (this->writeBack && replaceBlock.valid &&
      replaceBlock.modified) { // write back to memory
    this->writeBlockToLowerLevel(replaceBlock);
    this->statistics.totalCycles += this->policy.missLatency;
  }

  #ifdef MEMORY_YYX
  // whenever valid be replaced, need to check
  if (replaceBlock.valid && INCLUSIVE == this->inclusionType)
    backInvalidation(this->upperCache, addr);
  // victimCache
  if (replaceBlock.valid && this->ifUsingVictimCache){
    // FIFO
    if (victimCache.size() == victimCacheCapacity){
      victimCache.pop();
    }
    victimCache.push(replaceBlock);
  }

  #endif

  this->blocks[replaceId] = b;
}

uint32_t Cache::getReplacementBlockId(uint32_t begin, uint32_t end) {
#ifdef MEMORY_YYX
  uint32_t resultId = begin;
  switch (this->replacementType)
  {
  case LRU:{
    // Find invalid block first
    for (uint32_t i = begin; i < end; ++i) {
      if (!this->blocks[i].valid){
        return i;
      }
    }
    // Otherwise use LRU
    uint32_t min = this->blocks[begin].lastReference;
    for (uint32_t i = begin; i < end; ++i) {
      if (this->blocks[i].lastReference < min) {
        resultId = i;
        min = this->blocks[i].lastReference;
      }
    }
    break;
  }
  case RRIP:{
    // if RRIPid is (1<<associaty)-1 ,then is invalid or need to be evicted
    uint32_t max_RRIPid = this->blocks[begin].RRIPid;
    uint32_t max_index = begin;
    const uint32_t FULLRRIPid = (1<<(this->policy.associativity))-1;
    for (uint32_t i = begin; i < end; ++i) {
      if (this->blocks[i].RRIPid < 0){
        // robust
        printf("this->blocks[i].RRIPid not initialized\n");
        exit(-1);
      }
      if (FULLRRIPid == this->blocks[i].RRIPid) {
        resultId = i;
        return resultId;
      }else if (this->blocks[i].RRIPid > max_RRIPid){
        max_RRIPid = this->blocks[i].RRIPid;
        max_index = i;
      }else if (FULLRRIPid < this->blocks[i].RRIPid){
        // Robust test
        printf("FULLRRIPid < this->blocks[i].RRIPid\n");
        exit(-1);
      }
    }
    // no FULLRRIPid == this->blocks[i].RRIPid, add everyone's RRID with (FULLRRIPid - max_RRIPid)
    uint32_t add_RRIP = FULLRRIPid - max_RRIPid;
    resultId = max_index;
    for (uint32_t i = begin; i < end; ++i) {
      this->blocks[i].RRIPid += add_RRIP;
    }
    break;
  }
  case BELADY:{
    // Find invalid block first
    for (uint32_t i = begin; i < end; ++i) {
      if (!this->blocks[i].valid){
        return i;
      }
    }
    // Otherwise use BELADY
    uint32_t nextAppearTime_t = getNextSameGlobalBlockIDTimeFromGlobalBlockID(getGlobalUniqueBlockIDFromBlock(this->blocks[begin]));
    uint32_t max_t = nextAppearTime_t;
    for (uint32_t i = begin; i < end; ++i) {
      nextAppearTime_t = getNextSameGlobalBlockIDTimeFromGlobalBlockID(getGlobalUniqueBlockIDFromBlock(this->blocks[i]));
      if (nextAppearTime_t > max_t) {
        resultId = i;
        max_t = nextAppearTime_t;
      }
    }
    break;
  }
  default:
    printf("ERROR: NO designated ReplacementPolicy\n");
    exit(-1);
    break;
  }
  return resultId;
#else
  // Find invalid block first
  for (uint32_t i = begin; i < end; ++i) {
    if (!this->blocks[i].valid)
      return i;
  }

  // Otherwise use LRU
  uint32_t resultId = begin;
  uint32_t min = this->blocks[begin].lastReference;
  for (uint32_t i = begin; i < end; ++i) {
    if (this->blocks[i].lastReference < min) {
      resultId = i;
      min = this->blocks[i].lastReference;
    }
  }
  return resultId;  
#endif

}

void Cache::writeBlockToLowerLevel(Cache::Block &b) {
  uint32_t addrBegin = this->getAddr(b);
  if (this->lowerCache == nullptr) {
    for (uint32_t i = 0; i < b.size; ++i) {
      this->memory->setByteNoCache(addrBegin + i, b.data[i]);
    }
  } else {
    for (uint32_t i = 0; i < b.size; ++i) {
      this->lowerCache->setByte(addrBegin + i, b.data[i]);
    }
  }
}

#ifdef MEMORY_YYX
void Cache::backInvalidation(Cache *cache, uint32_t addr){
  if (nullptr == cache) return;
  // If in cache, return directly
  int blockId = this->getBlockId(addr);
  if (-1 == blockId)
    return;
  this->blocks[blockId].valid = false;
  // recurse
  backInvalidation(this->upperCache, addr);
}

void Cache::exclusiveInvalidation(uint32_t addr){
  int blockId = this->getBlockId(addr);
  if (-1 == blockId)
    return;
  this->blocks[blockId].valid = false;
}

void Cache::setUpperCache(Cache *upperCache){
  this->upperCache = upperCache;
}

void Cache::writeBlockToLowerLevelWithoutMemory(Cache::Block &b) {
  uint32_t addrBegin = this->getAddr(b);
  if (this->lowerCache != nullptr) {
    for (uint32_t i = 0; i < b.size; ++i) {
      this->lowerCache->setByte(addrBegin + i, b.data[i]);
    }
  }
}

void Cache::writeBlockToMemory(Cache::Block &b) {
  uint32_t addrBegin = this->getAddr(b);
  for (uint32_t i = 0; i < b.size; ++i) {
    this->memory->setByteNoCache(addrBegin + i, b.data[i]);
  }
}

void Cache::updateLowerLevelAccordingToPolicy(int blockId) {
    if (!this->writeBack) {
      if (EXCLUSIVE == this->inclusionType){
        // just write memory
        this->writeBlockToMemory(this->blocks[blockId]);
      }else{
        this->writeBlockToLowerLevel(this->blocks[blockId]);
      }
      this->statistics.totalCycles += this->policy.missLatency;    
    }else if(INCLUSIVE == this->inclusionType){
    // writeback but inclusive, need to write down until last level of cache
    // in this case, high level must have this cache line since inclusive; so will always go to this code in every level
      this->writeBlockToLowerLevelWithoutMemory(this->blocks[blockId]);
      this->statistics.totalCycles += this->policy.missLatency;
    }
}

void Cache::preInputAddrGlobalBlockIDForBelady(const char * traceFilePath){
  // Read and execute trace in cache-trace/ folder
  std::ifstream trace(traceFilePath);
  if (!trace.is_open()) {
    printf("Unable to open file %s\n", traceFilePath);
    exit(-1);
  }

  char type; //'r' for read, 'w' for write
  uint32_t addr;
  uint32_t counter = 0; // time after may start at 1 the same as referenceCounter
  while (trace >> type >> std::hex >> addr) {
    counter++;
    uint32_t globalBlockID = this->getGlobalUniqueBlockIDFromAddr(addr);
    this->globalBlockID2Times[globalBlockID].push_back(counter);
  }  
}

void Cache::updateGlobalBlockIDCurrentTime(uint32_t addr){
  uint32_t globalBlockID = this->getGlobalUniqueBlockIDFromAddr(addr);
  int currentOrder = 0;
  if (!globalBlockIDCurrentOrder.count(globalBlockID)){
    // then default globalBlockIDCurrentOrder[addr] as 0
    currentOrder = 0;
  }else{
    currentOrder = globalBlockIDCurrentOrder[globalBlockID]+1;
  }
  globalBlockIDCurrentOrder[globalBlockID] = currentOrder;
  // printf("updateGlobalBlockIDCurrentTime globalBlockIDCurrentOrder[%u] = %d of addr:%0x\n", globalBlockID, currentOrder, addr);
}  

uint32_t Cache::getNextSameGlobalBlockIDTimeFromGlobalBlockID(uint32_t globalBlockID){
  int currentOrder = 0;
  if (!globalBlockIDCurrentOrder.count(globalBlockID)){
    printf("ERROR: no possible that !globalBlockIDCurrentOrder.count(globalBlockID:%d) of addr: %0x, \
    please check if you have updateGlobalBlockIDCurrentTime() before doing mem operation\n", globalBlockID);
    exit(-1);
  }else{
    currentOrder = globalBlockIDCurrentOrder[globalBlockID];
  }
  int nextOrder = currentOrder+1;
  if (nextOrder < globalBlockID2Times[globalBlockID].size()){
    return globalBlockID2Times[globalBlockID][nextOrder];
  }else if (globalBlockID2Times[globalBlockID].size() == nextOrder){
    return MAXNEXTAPPEARTIME;
  }else{
    printf("unable to appear that globalBlockID2Times[globalBlockID].size() < nextOrder");
    exit(-1);
  }
}  
#endif

bool Cache::isPowerOfTwo(uint32_t n) { return n > 0 && (n & (n - 1)) == 0; }

uint32_t Cache::log2i(uint32_t val) {
  if (val == 0)
    return uint32_t(-1);
  if (val == 1)
    return 0;
  uint32_t ret = 0;
  while (val > 1) {
    val >>= 1;
    ret++;
  }
  return ret;
}

uint32_t Cache::getTag(uint32_t addr) {
  uint32_t offsetBits = log2i(policy.blockSize);
  uint32_t idBits = log2i(policy.blockNum / policy.associativity);
  uint32_t mask = (1 << (32 - offsetBits - idBits)) - 1;
  return (addr >> (offsetBits + idBits)) & mask;
}

uint32_t Cache::getId(uint32_t addr) {
  uint32_t offsetBits = log2i(policy.blockSize);
  uint32_t idBits = log2i(policy.blockNum / policy.associativity);
  uint32_t mask = (1 << idBits) - 1;
  return (addr >> offsetBits) & mask;
}

uint32_t Cache::getOffset(uint32_t addr) {
  uint32_t bits = log2i(policy.blockSize);
  uint32_t mask = (1 << bits) - 1;
  return addr & mask;
}

uint32_t Cache::getAddr(Cache::Block &b) {
  uint32_t offsetBits = log2i(policy.blockSize);
  uint32_t idBits = log2i(policy.blockNum / policy.associativity);
  return (b.tag << (offsetBits + idBits)) | (b.id << offsetBits);
}

#ifdef MEMORY_YYX
uint32_t Cache::getGlobalUniqueBlockIDFromAddr(uint32_t addr) {
  uint32_t offsetBits = log2i(policy.blockSize);
  uint32_t idBits = log2i(policy.blockNum / policy.associativity);  
  return  (this->getTag(addr) << idBits) | this->getId(addr);
}  

uint32_t Cache::getGlobalUniqueBlockIDFromBlock(Cache::Block &b) { 
  uint32_t offsetBits = log2i(policy.blockSize);
  uint32_t idBits = log2i(policy.blockNum / policy.associativity);
  return (b.tag << idBits) | b.id;  
}  
#endif
