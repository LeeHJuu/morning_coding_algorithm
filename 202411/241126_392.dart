class Solution {
  bool isSubsequence(String s, String t) {
    var index = 0;
    var count = 0;

    for (var i = 0; i < s.length; i++) {
      for (var j = index; j < t.length; j++) {
        if (s[i] == t[j]) {
          index = j + 1;
          count++;
          break;
        }
      }
    }

    return s.length == count;
  }
}
