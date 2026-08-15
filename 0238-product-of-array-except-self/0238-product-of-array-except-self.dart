class Solution {
  List<int> productExceptSelf(List<int> nums) {
    List<int> answer = [];
    answer.add(1);
    int temp = 1;
    // [1,1,2,6]

    for (int i = 1; i < nums.length; i++) {
      answer.add(nums[i - 1] * answer[i - 1]);
    }
    // [,,8,6]
    for (int i = nums.length - 2; i >= 0; i--) {
      temp *= nums[i + 1];
      answer[i] *= temp;
    }
    return answer;
  }
}
