class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> map = {};
    for (int i = 0; i < nums.length; i++) {
      int res = target - nums[i];
      if (map.containsKey(res))
        return [map[res]!, i];
      else {
        map[nums[i]] = i;
      }
    }
    return [];
  }
}
