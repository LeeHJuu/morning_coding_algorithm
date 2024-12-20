class Solution {
  String decodeString(String s) {
    var pattern = RegExp(r'(\d+)\[([a-zA-Z]*)\]');

    while (pattern.hasMatch(s)) {
      s = s.replaceAllMapped(pattern, (match) {
        int count = int.parse(match.group(1)!);
        String str = match.group(2)!;
        return str * count;
      });
    }
    print(s);
    return s;
  }
}

void main(List<String> args) {
  var input = "3[a2[c]]";

  var s = Solution();
  s.decodeString(input);
}
