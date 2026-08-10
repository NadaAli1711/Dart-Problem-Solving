class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> set = nums.toSet();
    return nums.length != set.length;
  }
}