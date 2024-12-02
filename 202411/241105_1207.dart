void main(List<String> args) {
  bool uniqueOccurrences(List<int> arr) {
    var frequency = {};

    for (var i in arr) {
      if (frequency.keys.contains(i)) {
        frequency[i] += 1;
      } else {
        frequency[i] = 1;
      }
    }

    if (frequency.values.toSet().length == frequency.values.length) {
      return true;
    }
    return false;
  }
}
