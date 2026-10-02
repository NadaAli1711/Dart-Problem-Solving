class Solution {
  String addBinary(String a, String b) {
    int carry = 0;
    int i = a.length - 1;
    int j = b.length - 1;
    StringBuffer buffer = StringBuffer();
    while (i >= 0 || j >= 0 || carry > 0) {
      int sum = carry;
      if (i >= 0) {
        sum += int.parse(a[i]);
        i--;
      }
      if (j >= 0) {
        sum += int.parse(b[j]);
        j--;
      }
      buffer.write(sum % 2);
      carry = sum ~/ 2;
    }
    return buffer.toString().split('').reversed.join('');
  }
}
