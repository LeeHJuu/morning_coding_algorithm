import 'dart:math';

class Solution {
  int minCostClimbingStairs(List<int> cost) {
    var len = cost.length;

    var total = [];

    total.add(cost[0]);
    total.add(cost[1]);

    for (var i = 2; i < len; i++) {
      var n = cost[i] + min(total[i - 1], total[i - 2]);
      total.add(n);
    }

    return min(total[len - 1], total[len - 2]);
  }
}

void main(List<String> args) {
  Solution s = Solution();
  var cost = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1];
  s.minCostClimbingStairs(cost);
}
