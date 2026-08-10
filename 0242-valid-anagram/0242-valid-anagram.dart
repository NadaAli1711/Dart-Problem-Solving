class Solution {
  bool isAnagram(String s, String t) {
    List<String> sLetters = s.split('');
    sLetters.sort();
    List<String> tLetters = t.split('');
    tLetters.sort();

    return sLetters.toString() == tLetters.toString();
  }
}