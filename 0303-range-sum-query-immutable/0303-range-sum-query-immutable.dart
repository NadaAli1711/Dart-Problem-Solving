class NumArray {
  late final List<int> numArray;

  NumArray(List<int> nums) {
    numArray = nums;
  }

  int sumRange(int left, int right) {
    int res = 0;
    for (int i = left; i <= right; i++) {
      res += numArray[i];
    }
    return res;
  }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * NumArray obj = NumArray(nums);
 * int param1 = obj.sumRange(left,right);
 */
