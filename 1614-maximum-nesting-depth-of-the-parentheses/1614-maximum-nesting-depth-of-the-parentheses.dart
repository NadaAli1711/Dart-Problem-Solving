class Solution {
  int maxDepth(String s) {
    int max = 0;
    int curr = 0;
    for(int i = 0 ; i < s.length ; i++){
        if(s[i] == '('){
            curr++;
        }else if(s[i] == ')'){
            max = max < curr ? curr : max;
            curr --;
        }
    }
    return max; 
  }
}