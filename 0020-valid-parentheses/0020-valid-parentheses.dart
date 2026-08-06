class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    Map<String, String> map = {'{': '}', '(': ')', '[': ']'};
    bool stackUsedFlag = false;
    int i = 0;
    for (; i < s.length; i++) {
      if (s[i] != '}' && s[i] != ')' && s[i] != ']') {
        stack.add(s[i]);
        stackUsedFlag = true;
      } else {
        if (i < s.length) {
          if (!stack.isEmpty) {
            if (map[stack.last] != s[i]) return false;
            stack.removeLast();
          } else
            return false;
        }
      }
    }
    if (stack.isEmpty && stackUsedFlag) return true;
    return false;
  }
}
