class Solution {
  List<String> summaryRanges(List<int> nums) {
    if (nums.isEmpty) return [];
    if (nums.length == 1) return ["${nums.first}"];

    var saveRange = [nums[0]];
    List<String> resultRange = [];

    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i + 1] - nums[i] == 1) saveRange.add(nums[i + 1]);
      if (nums[i + 1] - nums[i] > 1) {
        resultRange.add(
            "${saveRange.first}${saveRange.length > 1 ? '->${saveRange.last}' : ''}");

        saveRange.clear();
        saveRange.add(nums[i + 1]);
      }
    }
    resultRange.add(
        "${saveRange.first}${saveRange.length > 1 ? '->${saveRange.last}' : ''}");

    return resultRange;
  }
}
