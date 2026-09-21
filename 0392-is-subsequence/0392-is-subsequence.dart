class Solution {
  bool isSubsequence(String s, String t) {
    if (s == t || s.length == 0) return true;
    int sPointer = 0;
    int tPointer = 0;
    while (tPointer < t.length) {
      if (t[tPointer] == s[sPointer]) {
        sPointer++;
        if (sPointer == s.length) return true;
      }
      tPointer++;
    }
    return false;
  }
}
