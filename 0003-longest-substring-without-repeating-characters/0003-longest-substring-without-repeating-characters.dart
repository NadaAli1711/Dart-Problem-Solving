class Solution {
  int lengthOfLongestSubstring(String s) {
    if(s.length == 0)return 0;
    Map<String,int> uniqueMap = {};
    int left = 0;
    uniqueMap[s[left]] = left;
    int right = 1;
    int maxLenght = 1;
    
    while(right < s.length){
        if(uniqueMap.containsKey(s[right]) && uniqueMap[s[right]]! >= left){
            left = uniqueMap[s[right]]! + 1;

        }
        uniqueMap[s[right]] = right;
        maxLenght = max(maxLenght, right - left + 1);
        right++;
    }
    return maxLenght;
  


    
  }
}