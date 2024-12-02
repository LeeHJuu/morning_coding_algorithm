class Solution {
  bool isHappy(int n) {
    Set<int> seeds = {};

    while (true) {
      var nums = n.toString().split("").toList();
      var sum = 0;

      for (var num in nums) {
        sum += (int.parse(num) * int.parse(num));
      }

      print(sum);

      if (sum == 1) return true;
      if (seeds.contains(sum)) return false;

      seeds.add(sum);
      n = sum;
    }
  }
}

void main(List<String> args) {
  Solution s = Solution();
  s.isHappy(19);
}
