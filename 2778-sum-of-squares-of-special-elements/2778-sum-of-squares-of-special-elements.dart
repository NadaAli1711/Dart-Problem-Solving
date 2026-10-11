class Solution {
  int sumOfSquares(List<int> nums) {
    int res = 0;
    int length = nums.length;
    for(int i = 0 ; i < length ; i++){
        if(length % (i + 1) == 0){
            res += nums[i] * nums[i];
        }
    }
    return res;
    
  }
}