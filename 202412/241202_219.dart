class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    if (nums.length == nums.toSet().length) return false;

    Map<int, int> numsIndex = {};

    for (var i = 0; i < nums.length; i++) {
      if (numsIndex.containsKey(nums[i]) && i - (numsIndex[nums[i]]!) <= k)
        return true;
      numsIndex[nums[i]] = i;
    }
    return false;
  }
}
