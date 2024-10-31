void main(List<String> args) {
  double findMaxAverage(List<int> nums, int k) {
    var max;

    // max값 초기화
    var firstSum = 0;
    for (var i = 0; i < k; i++) {
      firstSum += nums[i];
    }
    max = firstSum;

    var sum = max;
    for (var i = k; i < nums.length; i++) {
      sum = sum - nums[i - k] + nums[i];
      if (sum > max) {
        max = sum;
      }
    }

    return max / k;
  }
}
