/**
 * Entry point for the optimized cache
 *
 * Created by He, Hao at 2019/04/30
 */

#include <cstdint>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

#include "Cache.h"
#include "Debug.h"
#include "MemoryManager.h"

bool parseParameters(int argc, char **argv);
void printUsage();

const char *traceFilePath;
#ifdef MEMORY_YYX
int inclusionType = NINE;
int replacementType = LRU;
int ifUseVictimCache = false; // 1 :using Victim cache, 2: not use, but for comparison that have same L1 associatity
#endif

int main(int argc, char **argv) {
  if (!parseParameters(argc, argv)) {
    return -1;
  }

  Cache::Policy l1policy, l2policy;
  l1policy.cacheSize = 32 * 1024;
  l1policy.blockSize = 64;
  l1policy.blockNum = 32 * 1024 / 64;
  l1policy.associativity = 8;
  l1policy.hitLatency = 2;
  l1policy.missLatency = 8;
  l2policy.cacheSize = 256 * 1024;
  l2policy.blockSize = 64;
  l2policy.blockNum = 256 * 1024 / 64;
  l2policy.associativity = 8;
  l2policy.hitLatency = 8;
  l2policy.missLatency = 100;

  // Initialize memory and cache
  MemoryManager *memory = nullptr;
  Cache *l1cache = nullptr, *l2cache = nullptr;
  memory = new MemoryManager();
#ifdef MEMORY_YYX
  // l2cache = new Cache(memory, l2policy, nullptr, 1, 1, inclusionType);
  // l1cache = new Cache(memory, l1policy, l2cache, 1, 1, inclusionType);
  l2cache = new Cache(memory, l2policy, nullptr, 1, 1, inclusionType, nullptr, replacementType);
  if (1 == ifUseVictimCache){
    l1policy.associativity = 1;
    l1cache = new Cache(memory, l1policy, l2cache, 1, 1, inclusionType, nullptr, replacementType, true, 4, l1policy.hitLatency);
    // l1cache = new Cache(memory, l1policy, l2cache, 1, 1, inclusionType, nullptr, replacementType, true, 4, 0);
    l1cache->victimCacheCapacity = 4;
  }else{ 
    if (2 == ifUseVictimCache) // for comparison
      l1policy.associativity = 1;
    l1cache = new Cache(memory, l1policy, l2cache, 1, 1, inclusionType, nullptr, replacementType);
  }  
  l2cache->setUpperCache(l1cache);
  // For Belady
  // printf("hello 1\n");
  if (BELADY == replacementType){
    l1cache->preInputAddrGlobalBlockIDForBelady(traceFilePath);
    l2cache->preInputAddrGlobalBlockIDForBelady(traceFilePath);
  }
  // printf("done 1\n");
#else
  l2cache = new Cache(memory, l2policy);
  l1cache = new Cache(memory, l1policy, l2cache);
#endif

  memory->setCache(l1cache);
  // Read and execute trace in cache-trace/ folder
  std::ifstream trace(traceFilePath);
  if (!trace.is_open()) {
    printf("Unable to open file %s\n", traceFilePath);
    exit(-1);
  }

  char type; //'r' for read, 'w' for write
  uint32_t addr;
  while (trace >> type >> std::hex >> addr) {
#ifdef MEMORY_YYX
    // Belady
    if (BELADY == replacementType){
      l1cache->updateGlobalBlockIDCurrentTime(addr);
      l2cache->updateGlobalBlockIDCurrentTime(addr);
    }    
#endif    
    if (!memory->isPageExist(addr))
      memory->addPage(addr);
    switch (type) {
    case 'r':
      memory->getByte(addr);
      break;
    case 'w':
      memory->setByte(addr, 0);
      break;
    default:
      dbgprintf("Illegal type %c\n", type);
      exit(-1);
    }
  }

  // Output Simulation Results
  printf("L1 Cache:\n");
  l1cache->printStatistics();

  delete l1cache;
  delete l2cache;
  delete memory;
  return 0;
}

bool parseParameters(int argc, char **argv) {
  // Read Parameters
  printf("argc:%d\n", argc);
  if (argc > 1) {
    traceFilePath = argv[1];
  #ifdef MEMORY_YYX
    if (argc > 4){
      printf("You designate a fourth parameter, meaning you are deciding if you are using victim cache\n");
      // TODO
      ifUseVictimCache = atoi(argv[4]);
      if (ifUseVictimCache > 2){
        fprintf(stderr, "not valid ifUseVictimCache\n");
      }else if (2 == ifUseVictimCache){
        printf("you are using the version without victim cache for comparison\n");
      }else if (1 == ifUseVictimCache){
        printf("you are using the version with victim cache\n");
      }
    }  
    if (argc > 3) {
      inclusionType = atoi(argv[2]);
      replacementType = atoi(argv[3]);
      if (inclusionType >= 0 && inclusionType <= 2){
        switch (inclusionType)
        {
        case NINE:
          printf("inclusion type: NINE\n");
          break;
        case INCLUSIVE:
          printf("inclusion type: INCLUSIVE\n");
          break;          
        case EXCLUSIVE:
          printf("inclusion type: EXCLUSIVE\n");
          break;                  
        default:
          break;
        }
      }else{
        printf("please input the right inclusion type, range : 0-2, NINE:%d, inclusive:%d, exclusive:%d\n", NINE, INCLUSIVE, EXCLUSIVE);
        return false;
      }
      if (replacementType >= 0 && replacementType <= 2){
        switch (replacementType)
        {
        case LRU:
          printf("replacement type: LRU\n");
          break;
        case RRIP:
          printf("replacement type: RRIP\n");
          break;          
        case BELADY:
          printf("replacement type: BELADY\n");
          break;                  
        default:
          break;
        }
        return true;
      }else{
        printf("please input the right inclusion type, range : 0-2, NINE:%d, inclusive:%d, exclusive:%d\n", NINE, INCLUSIVE, EXCLUSIVE);
        return false;
      }

    }else{
      printf("not design the inclusion type at argv[2] and replacement type at argv[3]\n");
      return false;
    }
  #endif
    return true;
  } else {
    return false;
  }
}

void printUsage() { printf("Usage: CacheSim trace-file\n"); }