class Solution {
  int lengthOfLastWord(String s) {
  List<String> splited = s.trim().split(' ');
  String lastWord = splited[splited.length - 1];
    return lastWord.length;
  }
}