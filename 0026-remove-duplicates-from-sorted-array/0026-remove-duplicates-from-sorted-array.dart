class Solution {
  int removeDuplicates(List<int> nums) {
    int writeIndex = 1;
    for(int readIndex = 1 ; readIndex < nums.length ;readIndex++){
        if(nums[readIndex] != nums[writeIndex - 1]){
            nums[writeIndex] = nums[readIndex];
            writeIndex++;
        }
    }
   return writeIndex;
  }
}
