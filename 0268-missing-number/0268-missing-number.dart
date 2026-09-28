class Solution {
  int missingNumber(List<int> nums) {
    int temp = 0;
    int max = nums.length;
    for (int i = 0; i < nums.length; i++) {
      temp ^= nums[i];
    }
    for (int i = 1; i <= nums.length; i++) {
      temp ^= i;
    }
    return temp;
  }
}
