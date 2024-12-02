class Solution {
  String removeStars(String s) {
    var result = [];
    for (var i = 0; i < s.length; i++) {
      if (s[i] != "*") result.add(s[i]);
      if (s[i] == "*") result.removeLast();
    }
    return result.join();
  }
}
