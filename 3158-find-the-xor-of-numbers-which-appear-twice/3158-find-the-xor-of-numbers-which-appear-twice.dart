class Solution {
  int duplicateNumbersXOR(List<int> nums) {
    int res = 0;
    Set<int> set = {};
    for (int num in nums) {
      if (set.contains(num)) {
        res ^= num;
      } else {
        set.add(num);
      }
    }
    return res;
  }
}
