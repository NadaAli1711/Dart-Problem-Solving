class Solution {
  double findMaxAverage(List<int> nums, int k) {
    double temp = 0;
    for (int i = 0; i < k; i++) {
      temp += nums[i];
    }
    double max = temp / k;
    int left = 0;
    int right = k;
    while (right < nums.length) {
      temp = temp - nums[left] + nums[right];
      left++;
      right++;
      max = (max > (temp / k)) ? max : (temp / k);
    }

    return max;
  }
}
