class Solution {
  bool wordPattern(String pattern, String s) {
    Map<String, String> mapping = {};
    var splitedStr = s.split(" ");

    if (pattern.length != splitedStr.length) {
      return false;
    }

    for (var i = 0; i < pattern.length; i++) {
      if (mapping.containsKey(pattern[i])) {
        if (mapping[pattern[i]] != splitedStr[i]) {
          return false;
        }
      }
      if (!mapping.containsKey(pattern[i])) {
        mapping[pattern[i]] = splitedStr[i];
      }
    }

    if (mapping.values.toSet().length != mapping.length) {
      return false;
    }

    return true;
  }
}
