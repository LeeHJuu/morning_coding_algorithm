class Solution {
  int lengthOfLongestSubstring(String s) {
    int max = 0;
    var list = [];
    for (var i = 0; i < s.length; i++) {
      if (list.contains(s[i])) {
        int index = list.indexOf(s[i]);
        if (index == 0) {
          list.removeAt(0);
        } else {
          list.removeRange(0, index + 1);
        }
        list.add(s[i]);
      }
      if (!list.contains(s[i])) {
        list.add(s[i]);
        if (list.length > max) max = list.length;
      }
    }
    return max;
  }
}

void main(List<String> args) {
  var input = "aabaab!bb";
  Solution s = Solution();
  var result = s.lengthOfLongestSubstring(input);
}
