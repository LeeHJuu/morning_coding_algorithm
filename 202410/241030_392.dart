void main(List<String> args) {
  bool isSubsequence(String s, String t) {
    var count = 0;

    for (var i = 0; i < t.length; i++) {
      for (var j = 0; j < s.length; j++) {
        if (s[j] == t[i]) {
          count++;
        }
      }
    }
    return count == s.length;
  }
}
