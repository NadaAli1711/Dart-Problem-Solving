class Solution {
  List<int> dailyTemperatures(List<int> temperatures) {
    List<int> stack = [];
    List<int> answer = List<int>.filled(temperatures.length,0);
    for(int i = 0 ; i < temperatures.length ; i++){
        while(!stack.isEmpty && temperatures[i] > temperatures[stack.last]){
            answer[stack.last] = i - stack.last;
            stack.removeLast();
        }
        stack.add(i);
        
    }
    return answer;
  }
}