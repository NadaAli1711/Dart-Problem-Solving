class Solution {
  bool searchMatrix(List<List<int>> matrix, int target) {
    int numCols = matrix[0].length;
    int top = 0;
    int down =  matrix.length - 1;
    while(top <= down){
        int midRow = (top + down) ~/ 2;
        int first = matrix[midRow][0];
        int last = matrix[midRow][numCols -1];
        if(target >= first && target <= last){
            int left = 0;
            int right = numCols - 1;
            while(left <= right){
                int mid = (left + right) ~/ 2;
                if(target == matrix[midRow][mid])return true;
                else if(target > matrix[midRow][mid]){
                    left = mid + 1;
                }else{
                    right = mid - 1;
                }
            }
            return false;
        }else if(target > last){
            top = midRow + 1;
        }else{
            down = midRow - 1;
        }
    }

    return false;
    
  }
}