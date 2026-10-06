class Solution {
  String toHex(int num) {
    if (num == 0) return "0";
    const String hex = "0123456789abcdef";
    StringBuffer res = StringBuffer();
    // we check length as dart is 64 bit based not 32 so 32 result lengt of 32/4 = 8
    while (num != 0 && res.length < 8) {
      // get last 4 digits from right do and with 1111 wich is 15
      int digit = num & 15;
      res.write(hex[digit]);
      // remove last 4 bits
      num = num >> 4;
    }
    return res.toString().split('').reversed.join('');
  }
}
