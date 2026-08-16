class Solution {
  bool isValidSudoku(List<List<String>> board) {
    List<Set<String>> rows = List<Set<String>>.generate(9, (_) => {});
    List<Set<String>> cols = List<Set<String>>.generate(9, (_) => {});
    List<Set<String>> boxes = List<Set<String>>.generate(9, (_) => {});
    for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {
        String currentChar = board[i][j];
        int boxIndex = (i ~/ 3) * 3 + (j ~/ 3);
        if (currentChar == '.') continue;
        if (rows[i].contains(currentChar) ||
            cols[j].contains(currentChar) ||
            boxes[boxIndex].contains(currentChar))
          return false;
        rows[i].add(currentChar);
        cols[j].add(currentChar);
        boxes[boxIndex].add(currentChar);
      }
    }
    return true;
  }
}
