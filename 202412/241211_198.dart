import 'dart:math';

class Solution {
  int rob(List<int> nums) {
    if (nums.length == 1) return nums[0];

    var maxNum = [nums[0], max(nums[0], nums[1])];

    for (var i = 2; i < nums.length; i++) {
      var newSum = max(maxNum[i - 1], maxNum[i - 2] + nums[i]);
      maxNum.add(newSum);
    }

    return maxNum.last;
  }
}

void main(List<String> args) {
  Solution s = Solution();
  var nums = [1, 2, 3, 1];
  s.rob(nums);
}
