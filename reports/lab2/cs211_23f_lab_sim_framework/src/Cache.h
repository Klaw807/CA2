/*
 * Basic cache simulator
 *
 * Created by He, Hao on 2019-4-27
 */

#ifndef CACHE_H
#define CACHE_H

#include <cstdint>
#include <vector>

#include "MemoryManager.h"

#define MEMORY_YYX
#ifdef MEMORY_YYX
#include <unordered_map>
#include <queue>

enum InclusionType {
  NINE = 0,
  INCLUSIVE = 1,
  EXCLUSIVE = 2,
  InclusionTypeNum
};  
enum ReplacementType {
  LRU = 0,
  RRIP = 1,
  BELADY = 2,
  ReplacementTypeNum
};  


#endif


class MemoryManager;

class Cache {
public:
  struct Policy {
    // In bytes, must be power of 2
    uint32_t cacheSize;
    uint32_t blockSize;
    uint32_t blockNum;
    uint32_t associativity;
    uint32_t hitLatency;  // in cycles
    uint32_t missLatency; // in cycles
  };

  struct Block {
    bool valid;
    bool modified;
    uint32_t tag;
    uint32_t id;
    uint32_t size;
    uint32_t lastReference;
    std::vector<uint8_t> data;
  #ifdef MEMORY_YYX
    int RRIPid;
  #endif
    Block() {}
    Block(const Block &b)
        : valid(b.valid), modified(b.modified), tag(b.tag), id(b.id),
          size(b.size) {
      data = b.data;
    #ifdef MEMORY_YYX
      RRIPid = -1;
    #endif
    }
  };

  struct Statistics {
    uint32_t numRead;
    uint32_t numWrite;
    uint32_t numHit;
    uint32_t numMiss;
    uint64_t totalCycles;
  };
#ifdef MEMORY_YYX
  // give default values of new valuable to be compatible with original initializator
  Cache(MemoryManager *manager, Policy policy, Cache *lowerCache = nullptr,
        bool writeBack = true, bool writeAllocate = true, int inclusionType = NINE,
        Cache *upperCache = nullptr, int replacementType = LRU,
        bool ifUsingVictimCache = false, int victimCacheCapacity = -1, int victimCacheLatency = -1);        
#else
  Cache(MemoryManager *manager, Policy policy, Cache *lowerCache = nullptr,
        bool writeBack = true, bool writeAllocate = true);    
#endif


  bool inCache(uint32_t addr);
  uint32_t getBlockId(uint32_t addr);
  uint8_t getByte(uint32_t addr, uint32_t *cycles = nullptr);
  void setByte(uint32_t addr, uint8_t val, uint32_t *cycles = nullptr);
  #ifdef MEMORY_YYX
  void exclusiveInvalidation(uint32_t addr);
  void setUpperCache(Cache *upperCache);
  int victimCacheCapacity;
  #endif  

  void printInfo(bool verbose);
  void printStatistics();

  Statistics statistics;

#ifdef MEMORY_YYX
  // BELADY
  std::unordered_map<uint32_t, std::vector<int>> globalBlockID2Times;
  std::unordered_map<uint32_t, int> globalBlockIDCurrentOrder; 
  const uint32_t MAXNEXTAPPEARTIME = UINT32_MAX;
  void preInputAddrGlobalBlockIDForBelady(const char * traceFilePath);
  void updateGlobalBlockIDCurrentTime(uint32_t addr);
  uint32_t getNextSameGlobalBlockIDTimeFromGlobalBlockID(uint32_t addr);
#endif
private:
  uint32_t referenceCounter;
  bool writeBack;     // default true
  bool writeAllocate; // default true
  #ifdef MEMORY_YYX
  int inclusionType;
  Cache* upperCache;
  int replacementType;
  //victimCache
  bool ifUsingVictimCache;
  std::queue<Block> victimCache;
  uint32_t victimCacheLatency; 
  // default: if using victim to search, then add to global cycle, if just write to victim cache, presume it written concurrently with L2, so it spare no time 
  #endif
  MemoryManager *memory;
  Cache *lowerCache;
  Policy policy;
  std::vector<Block> blocks;

  void initCache();
  void loadBlockFromLowerLevel(uint32_t addr, uint32_t *cycles = nullptr);
  uint32_t getReplacementBlockId(uint32_t begin, uint32_t end);
  void writeBlockToLowerLevel(Block &b);
  #ifdef MEMORY_YYX
  void updateLowerLevelAccordingToPolicy(int blockId);
  void writeBlockToMemory(Cache::Block &b);
  void backInvalidation(Cache *cache, uint32_t addr);
  void writeBlockToLowerLevelWithoutMemory(Block &b);
  // Victim Cache
  // bool loadBlockFromVictimCache(uint32_t addr, uint32_t *cycles = nullptr);
  #endif  

  // Utility Functions
  bool isPolicyValid();
  bool isPowerOfTwo(uint32_t n);
  uint32_t log2i(uint32_t val);
  uint32_t getTag(uint32_t addr);
  uint32_t getId(uint32_t addr);
  uint32_t getOffset(uint32_t addr);
  uint32_t getAddr(Block &b); // actually from b get the getGlobalUniqueBlockIDFromAddr with 0 offest
#ifdef MEMORY_YYX
  // BELADY
  uint32_t getGlobalUniqueBlockIDFromAddr(uint32_t addr);
  uint32_t getGlobalUniqueBlockIDFromBlock(Block &b); 
#endif  
};

#endif