class Solution {
  bool isIsomorphic(String s, String t) {
    var matchedWord = {};

    for (var i = 0; i < s.length; i++) {
      if (matchedWord.containsKey(s[i])) {
        if (matchedWord[s[i]] != t[i]) return false;
      } else {
        if (matchedWord.containsValue(t[i])) return false;
        matchedWord[s[i]] = t[i];
      }
    }

    return true;
  }
}
