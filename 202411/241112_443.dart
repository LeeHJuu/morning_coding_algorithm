class Solution {
  int compress(List<String> chars) {
    Map<String, int> count = {};

    chars.forEach((c) {
      count[c] = count[c] == null ? 1 : count[c]! + 1;
    });

    List<String> result = [];

    for (var key in count.keys) {
      result.add(key);
      if (count[key]! > 1) {
        result.addAll(count[key].toString().split(''));
      }
    }

    chars.clear();
    chars.addAll(result);

    return chars.length;
  }
}

void main(List<String> args) {
  Solution s = Solution();
  print(s.compress(
      ["a", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b"]));
}
