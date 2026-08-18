class Solution {
  int evalRPN(List<String> tokens) {
    List<int> stack = [];
    for(int i = 0 ; i < tokens.length ; i++){
        if(tokens[i] != '+' && tokens[i] != '-' && tokens[i] != '*' &&tokens[i] != '/' ){
            stack.add(int.parse(tokens[i]));
        }else{
            int secondNum = stack.removeLast();
            int firstNum = stack.removeLast();
            if(tokens[i] == '+' ){
                stack.add(firstNum + secondNum);
                }
            else if(tokens[i] == '-' ){
                stack.add(firstNum - secondNum);
                }
            else if(tokens[i] == '*' ){
                stack.add(firstNum * secondNum);
                }
            else if(tokens[i] == '/' ){
                stack.add(firstNum ~/ secondNum);
                }
        }
    }
    return stack.removeLast();
    
  }
}