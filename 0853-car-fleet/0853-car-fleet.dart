class Solution {
  int carFleet(int target, List<int> position, List<int> speed) {
    if (position.length == 0) return 0;
    if (position.length == 1) return 1;
    int fleetSum = 1;
    List<double> stack = [];
    Map<int, int> map = {};
    for (int i = 0; i < position.length; i++) {
      map[position[i]] = speed[i];
    }
    position.sort((a, b) => b.compareTo(a));
    for (int i = 0; i < position.length; i++) {
      double currentTime = (target - position[i]) / map[position[i]]!;
      if (!stack.isEmpty && currentTime > stack.first) {
        fleetSum++;
        stack.clear();
      }
      stack.add(currentTime);
    }

    return fleetSum;
  }
}
