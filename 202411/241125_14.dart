class Solution {
  String longestCommonPrefix(List<String> strs) {
    var standard = strs[0];
    var result = "";

    for (var i = 1; i < strs.length; i++) {
      if (strs[i].length < standard.length) standard = strs[i];
    }
    strs.remove(standard);

    for (var i = 0; i < standard.length; i++) {
      var check = strs.every((str) => str[i] == standard[i]);
      if (check) result += standard[i];
      if (!check) break;
    }

    return result;
  }
}
