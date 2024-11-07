class Solution {
  bool increasingTriplet(List<int> nums) {
    var first = nums[0];
    var prevNum;

    for (var i = 1; i < nums.length; i++) {
      if (nums[i] <= first) {
        first = nums[i];
      }
      if (nums[i] > first) {
        if (prevNum != null) {
          if (nums[i] > prevNum) {
            return true;
          }
        }
        prevNum = nums[i];
      }
    }
    return false;
  }
}
