class Solution {
  int romanToInt(String s) {
    Map<String, int> roman = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int result = 0;

    for (var i = 0; i < s.length; i++) {
      if (i + 1 < s.length && roman[s[i]]! < roman[s[i + 1]]!) {
        result += (roman[s[i + 1]]! - roman[s[i]]!);
        i++;
      } else {
        result += roman[s[i]]!;
      }
    }

    return result;
  }
}
