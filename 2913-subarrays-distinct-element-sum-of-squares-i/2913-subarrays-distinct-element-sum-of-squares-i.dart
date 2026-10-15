class Solution {
  int sumCounts(List<int> nums) {
    int count = 0;
    for(int i = 0 ; i < nums.length ; i++){
        Set<int> set = {};
        for(int j = i; j < nums.length ; j++){
            set.add(nums[j]);
            count += set.length * set.length ;
        }
    }    
    return count;
  }
}