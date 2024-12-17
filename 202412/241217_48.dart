class Solution {
  void rotate(List<List<int>> matrix) {
    for (var i = 0; i < matrix.length; i++) {
      for (var j = i + 1; j < matrix.length; j++) {
        int temp = matrix[i][j];
        matrix[i][j] = matrix[j][i];
        matrix[j][i] = temp;
      }
    }
    for (var i = 0; i < matrix.length; i++) {
      matrix[i] = matrix[i].reversed.toList();
    }
  }
}
