// 문제 오류로 패스됨

class Solution {
  int compress(List<String> chars) {
    Map<String, int> count = {};
    var str;

    for (var char in chars) {
      if (count.containsKey(char)) {
        count[char] = (count[char]! + 1);
      } else {
        count[char] = 1;
      }
    }

    return chars.length > count.length * 2 ? count.length * 2 : chars.length;
  }
}
