class Solution {
  int pivotIndex(List<int> nums) {
    int totalSum = 0;
    int leftSum = 0;
    for (int i = 0; i < nums.length; i++) {
      totalSum += nums[i];
    }
    for (int i = 0; i < nums.length; i++) {
      int rightSum = totalSum - nums[i] - leftSum;
      if (rightSum == leftSum) return i;
      leftSum += nums[i];
    }
    return -1;
  }
}
