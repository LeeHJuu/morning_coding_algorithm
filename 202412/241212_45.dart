import 'dart:math';

class Solution {
  int jump(List<int> nums) {
    if (nums.length == 1) return 0;

    int count = 0;
    int currentEnd = 0;
    int canJump = 0;
    for (var i = 0; i < nums.length; i++) {
      canJump = max(canJump, i + nums[i]);

      if (i == currentEnd) {
        count++;
        currentEnd = canJump;

        if (currentEnd >= nums.length - 1) break;
      }
    }

    return count;
  }
}
