void main(List<String> args) {
  List<int> productExceptSelf(List<int> nums) {
    List<int> multiplied = [];

    for (var i = 0; i < nums.length; i++) {
      List<int> child = [...nums];
      child.removeAt(i);

      var multiple = child.reduce((a, b) => a * b);
      multiplied.add(multiple);
    }

    return multiplied;
  }
}
