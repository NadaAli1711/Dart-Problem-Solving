class Solution {
  bool isPalindrome(String s) {
    String cleanString = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'),'');
    return cleanString == cleanString.split('').reversed.join('');
    
  }
}