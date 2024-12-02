class Solution {
  int singleNumber(List<int> nums) {
    var check = [];

    nums.forEach((n) {
      if (!check.contains(n)) {
        check.add(n);
      } else {
        check.remove(n);
      }
    });

    return check[0];
  }
}
