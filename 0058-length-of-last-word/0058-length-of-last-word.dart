class Solution {
  int lengthOfLastWord(String s) {
    int count = 0;
    String trimmedString = s.trim();
    for(int i = trimmedString.length - 1 ; i >= 0 ; i--){
        if(trimmedString[i] == ' ')break;
        count++;
    }
    return count;
  
  }
}