// class Solution {
//   int removeDuplicates(List<int> nums) {
//     int check = 1;
//     int len = 1;

//     for (var i = 1; i < nums.length; i++) {
//       if (nums[i] == nums[i - 1]) {
//         check++;
//       } else {
//         check = 1;
//       }

//       if (check <= 2) {
//         nums[len] = nums[i];
//         len++;
//       }
//     }
//     return len;
//   }
// }
class Solution {
  int removeDuplicates(List<int> nums) {
    int len = 2;

    if (nums.length <= 2) return nums.length;

    for (var i = 2; i < nums.length; i++) {
      if (nums[i] != nums[len - 2]) {
        nums[len] = nums[i];
        len++;
      }
    }
    return len;
  }
}
