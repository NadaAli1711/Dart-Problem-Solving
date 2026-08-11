class Solution {
  void moveZeroes(List<int> nums) {
    int index = 0;
    for(int i = 0;i<nums.length;i++){
        if(nums[i] != 0){
            nums[index] = nums[i];
            index++;
        }
    }

    nums.fillRange(index,nums.length,0);
  }
}