class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    Map<String, int> sMap = {};
    Map<String, int> tMap = {};

    for (var i = 0; i < s.length; i++) {
      sMap[s[i]] = (sMap[s[i]] ?? 0) + 1;
      tMap[t[i]] = (tMap[t[i]] ?? 0) + 1;
    }

    for (String key in sMap.keys) {
      if (sMap[key] != tMap[key]) return false;
    }

    return true;
  }
}
