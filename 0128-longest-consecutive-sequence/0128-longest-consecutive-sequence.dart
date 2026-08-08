class Solution {
  int longestConsecutive(List<int> nums) {
    int length = nums.length;
    if (length <= 1) return length;
    nums.sort();
    int longestConsecutive = 1;
    int counter = 1;
    for (int i = 1; i < length; i++) {
      if (nums[i] == nums[i - 1] + 1) {
        counter++;
        longestConsecutive = max(longestConsecutive, counter);
      } else if (nums[i] == nums[i - 1]) {
        continue;
      } else {
        counter = 1;
      }
    }
    return longestConsecutive;
  }
}
