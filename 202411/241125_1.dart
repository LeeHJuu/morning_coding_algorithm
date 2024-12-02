// class Solution {
//   List<int> twoSum(List<int> nums, int target) {
//     var n = nums.length;
//     var result = [0, 0];
//     for (var i = 0; i < n - 1; i++) {
//       for (var j = i + 1; j < n; j++) {
//         if (nums[i] + nums[j] == target) return [i, j];
//       }
//     }

//     return result;
//   }
// }

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var result = [];
    for (var i = 0; i < nums.length; i++) {
      int n = target - nums[i];
      if (nums.contains(n) && i != nums.lastIndexOf(n))
        return [i, nums.lastIndexOf(n)];
    }
    return [];
  }
}
