1. MultiCache and Replacement policy  
please go to trace0/ and run the sh_test.sh(please chmod +x sh_test.sh first), test.trace is the trace
the file name n_m.log   
n=0:NINE, n=1: INCLUSIVE, n=2: EXCLUSIVE;  
m=0:LRU, m=1: RRIP, m=2: BELADY

2. VICTIM cache  
please go to trace0_novictimCache_for_comparison/ and trace0_victimCache/  and run the sh_test.sh, test.trace is the trace
the file below the folder is described in 1.. You should make comparison between the same name file between trace0_novictimCache_for_comparison/ and trace0_victimCache/   

3. simulator with cache   
please go to simulator_cache_helloworld/ and simulator_cache_matrixmulti/ and simulator_cache_quicksort/ and and run the sh_test.sh  
the file name a_b_c_d.log   
a: means the inclusion policy  
b: means the L1 replacement policy  
c: means the L2 replacement policy
d: 1 means using victim cache otherwise no