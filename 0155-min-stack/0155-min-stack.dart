class MinStack {
  final List<int> stack = [];
  final List<int> minStack = [];

  MinStack() {}

  void push(int value) {
    stack.add(value);
    if (minStack.isEmpty || value <= minStack.last) minStack.add(value);
  }

  void pop() {
    int val = stack.removeLast();
    if (minStack.last == val) minStack.removeLast();
  }

  int top() {
    return stack.last;
  }

  int getMin() {
    return minStack.last;
  }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * MinStack obj = MinStack();
 * obj.push(value);
 * obj.pop();
 * int param3 = obj.top();
 * int param4 = obj.getMin();
 */
