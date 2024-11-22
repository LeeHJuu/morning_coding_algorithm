class Solution {
  int removeDuplicates(List<int> nums) {
    int len = 1;
    for (var i = 1; i < nums.length; i++) {
      if (nums[i - 1] != nums[i]) {
        nums[len] = nums[i];
        len++;
      }
    }
    return len;
  }
}
