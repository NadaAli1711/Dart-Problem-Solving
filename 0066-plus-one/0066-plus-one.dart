class Solution {
  List<int> plusOne(List<int> digits) {
    int carry = 1;
    int i = digits.length - 1;
    while (i >= 0 || carry > 1) {
      int temp = digits[i] + carry;
      digits[i] = temp % 10;
      carry = temp ~/ 10;
      i--;
    }
    if (carry > 0) digits.insert(0, 1);
    return digits;
  }
}
