class Solution {
  int reverseBits(int n) {
    int res = 0;
    int lastBit = 0;
    for (int i = 0; i < 32; i++) {
      res = res << 1;
      lastBit = n & 1;
      res = res | lastBit;
      n = n >> 1;
    }
    return res;
  }
}
