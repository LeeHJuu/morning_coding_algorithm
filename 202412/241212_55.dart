import 'dart:math';

class Solution {
  bool canJump(List<int> nums) {
    int canJump = 0;
    for (var i = 0; i < nums.length; i++) {
      if (i > canJump) return false;

      canJump = max(canJump, i + nums[i]);

      if (canJump >= nums.length - 1) return true;
    }
    return false;
  }
}
