class Solution {
  void rotate(List<int> nums, int k) {
    int len = nums.length;
    int index = k % len;

    var rotateList = nums.sublist(0, len - index);

    nums.addAll(rotateList);
    nums.removeRange(0, len - index);
  }
}
