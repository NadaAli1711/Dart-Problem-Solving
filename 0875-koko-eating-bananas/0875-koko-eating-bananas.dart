class Solution {
  int minEatingSpeed(List<int> piles, int h) {
    int left = 1;
    int right = piles.reduce(max);
    while (left <= right) {
      int mid = (left + right) ~/ 2;
      int totalHours = 0;
      for (int i = 0; i < piles.length; i++) {
        totalHours += (piles[i] + mid - 1) ~/ mid;
      }
      if (totalHours <= h) {
        right = mid - 1;
      } else {
        left = mid + 1;
      }
    }
    return left;
  }
}
