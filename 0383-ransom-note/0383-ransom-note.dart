class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    if (ransomNote.length > magazine.length) return false;
    Map<String, int> magazineMap = {};
    for (int i = 0; i < magazine.length; i++) {
      magazineMap[magazine[i]] = (magazineMap[magazine[i]] ?? 0) + 1;
    }
    for (int i = 0; i < ransomNote.length; i++) {
      final char = ransomNote[i];
      final count = magazineMap[char] ?? 0;

      if (count == 0) return false;
      magazineMap[char] = count - 1;
    }
    return true;
  }
}
