class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    List<int> result = [];
    int top = 0;
    int bottom = matrix.length - 1;
    int left = 0;
    int right = matrix.first.length - 1;

    while (top <= bottom && left <= right) {
      for (int i = left; i <= right; i++) {
        result.add(matrix[top][i]);
      }
      top++;

      for (var i = top; i <= bottom; i++) {
        result.add(matrix[i][right]);
      }
      right--;

      if (top <= bottom) {
        for (int i = right; i >= left; i--) {
          result.add(matrix[bottom][i]);
        }
        bottom--;
      }

      if (left <= right) {
        for (var i = bottom; i >= top; i--) {
          result.add(matrix[i][left]);
        }
        left++;
      }
    }

    return result;
  }
}
