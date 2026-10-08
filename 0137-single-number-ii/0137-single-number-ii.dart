class Solution {
  int singleNumber(List<int> nums) {
    int res = 0;
    for(int i = 0 ; i < 32 ; i++){
        int countBit = 0;
        for(int num in nums){
            countBit += (num >> i) & 1;
        }
        if(countBit % 3 != 0){
            res |= (1 << i);
        }
    }
    if((res & (1 << 31)) != 0){
        res -= (1 << 32);
    }
    return res;
    
  }
}