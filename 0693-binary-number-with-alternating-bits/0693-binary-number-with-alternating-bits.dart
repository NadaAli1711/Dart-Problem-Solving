class Solution {
  bool hasAlternatingBits(int n) {
    if (n == 0 || n == 1) return true;
    int temp = n & 1;
    while (n != 0) {
      n = n >> 1;
      int currentDigit = n & 1;
      if (currentDigit == temp) return false;
      temp = currentDigit;
    }
    return true;
  }
}
