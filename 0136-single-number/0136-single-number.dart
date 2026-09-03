class Solution {
  int singleNumber(List<int> nums) {
    return nums.reduce((a, b) => a ^ b);
  }
}
