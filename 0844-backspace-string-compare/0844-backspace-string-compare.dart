class Solution {
  bool backspaceCompare(String s, String t) {
    if(s == t) return true;
    List<String> sStack = [];
    List<String> tStack = [];
    for(int i = 0 ; i < s.length ; i++){
        if(s[i] == '#'){
            if(sStack.isNotEmpty){
                sStack.removeLast();}
        }else{
            sStack.add(s[i]);
        }
    }
    for(int i = 0 ; i < t.length ; i++){
        if(t[i] == '#'){
            if(tStack.isNotEmpty){
            tStack.removeLast();}
        }else{
            tStack.add(t[i]);
        }
    }
    return sStack.join() == tStack.join();
  }
}