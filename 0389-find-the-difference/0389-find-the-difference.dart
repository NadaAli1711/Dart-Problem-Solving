class Solution {
  String findTheDifference(String s, String t) {
    int res = 0;
    for(int i = 0 ; i < s.length ; i++){
        res ^= s.codeUnitAt(i);
    }
    for(int i = 0 ; i < t.length ; i++){
        res ^= t.codeUnitAt(i);
    }
    return String.fromCharCode(res);
  }
}