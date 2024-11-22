class Solution {
  int majorityElement(List<int> nums) {
    var numMap = {};
    nums.forEach((n) {
      if (numMap.containsKey(n)) {
        numMap[n]++;
      }
      if (!numMap.containsKey(n)) {
        numMap[n] = 1;
      }
    });

    var result;
    var max = 0;

    numMap.forEach(
      (key, value) {
        if (value > max) {
          max = value;
          result = key;
        }
      },
    );

    return result;
  }
}