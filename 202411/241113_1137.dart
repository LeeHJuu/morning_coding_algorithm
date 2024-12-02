class Solution {
  int tribonacci(int n) {
    var tribonacci = [0, 1, 1];

    // n이 2보다 큰 경우
    if (n > 2) {
      for (var i = 3; i <= n; i++) {
        var newValue =
            tribonacci[i - 1] + tribonacci[i - 2] + tribonacci[i - 3];
        tribonacci.add(newValue);
      }
    }
    return tribonacci[n];
  }
}

void main(List<String> args) {
  Solution s = new Solution();
  print(s.tribonacci(4));
}
