// Approach 1:
// ---------------------------------------------------------------------------

class Solution {
  int lengthOfLastWord(String s) {
    int count = 0;
    String trimmedString = s.trim();
    for (int i = trimmedString.length - 1; i >= 0; i--) {
      if (trimmedString[i] == ' ') break;
      count++;
    }
    return count;
  }
}

// Approach 2:
// ---------------------------------------------------------------------------
class Solution {
  int lengthOfLastWord(String s) {
    final words = s.trim().split(' ');
    return words.last.length;
  }
}

// Approach 3:
// ---------------------------------------------------------------------------
class Solution {
  int lengthOfLastWord(String s) {
    List<String> splited = s.trim().split(' ');
    String lastWord = splited[splited.length - 1];
    return lastWord.length;
  }
}

// Approach 4:
// ---------------------------------------------------------------------------
class Solution {
  int lengthOfLastWord(String s) {
    String trimmedString = s.trim();
    int count = 0;
    int i = trimmedString.length - 1;
    while (trimmedString[i] != ' ') {
      count++;
      if (i != 0) {
        i--;
      }
    }
    return count;
  }
}
