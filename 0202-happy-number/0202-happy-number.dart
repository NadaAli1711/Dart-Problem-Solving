class Solution {
  bool isHappy(int n) {
    Set<int> set = {};
    int res = 0;
    while (res != 1) {
      res = 0;
      while (n != 0) {
        int temp = n % 10;
        res += temp * temp;
        n ~/= 10;
      }
      if (set.contains(res)) return false;
      set.add(res);
      n = res;
    }
    return true;
  }
}
