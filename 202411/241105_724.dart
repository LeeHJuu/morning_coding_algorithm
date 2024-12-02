void main(List<String> args) {
  int pivotIndex(List<int> nums) {
    var leftSum = 0;
    var index = -1;

    var sum = nums.reduce((a, b) => a + b);

    for (var i = 0; i < nums.length; i++) {
      if (i != 0) {
        leftSum += nums[i - 1];
      }

      var rightSum = sum - leftSum - nums[i];

      if (leftSum == rightSum) {
        index = i;
        break;
      }
    }

    return index;
  }
}
