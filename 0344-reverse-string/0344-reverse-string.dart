class Solution {
  void reverseString(List<String> s) {
    // we could use this way to convert double into int
    //     int mid = (s.length / 2).toInt();
    int mid = s.length ~/ 2;
    for (int i = 0; i < mid; i++) {
      String temp = s[i];
      s[i] = s[s.length - i - 1];
      s[s.length - i - 1] = temp;
    }
  }
}
