import 'dart:math';

class RandomizedSet {
  List<int> nums = [];

  RandomizedSet();

  bool insert(int val) {
    if (nums.indexOf(val) < 0) {
      nums.add(val);
      return true;
    }
    return false;
  }

  bool remove(int val) {
    if (nums.indexOf(val) >= 0) {
      nums.remove(val);
      return true;
    }
    return false;
  }

  int getRandom() {
    int index = Random().nextInt(nums.length);
    return nums[index];
  }
}
