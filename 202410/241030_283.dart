void main(List<String> args) {
  void moveZeroes(List<int> nums) {
    
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == 0) {
        nums.removeAt(i);
        nums.add(0);
      }
    }
  }
}
