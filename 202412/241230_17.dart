class Solution {
  List<String> letterCombinations(String digits) {
    Map<String, List<String>> numberChar = {
      '2': ['a', 'b', 'c'],
      '3': ['d', 'e', 'f'],
      '4': ['g', 'h', 'i'],
      '5': ['j', 'k', 'l'],
      '6': ['m', 'n', 'o'],
      '7': ['p', 'q', 'r', 's'],
      '8': ['t', 'u', 'v'],
      '9': ['w', 'x', 'y', 'z'],
    };

    if (digits.isEmpty) return [];

    List<String> result = [''];

    for (var i = 0; i < digits.length; i++) {
      String digit = digits[i];
      List<String> letters = numberChar[digit]!;

      List<String> temp = [];
      for (String combination in result) {
        for (String letter in letters) {
          temp.add(combination + letter);
        }
      }
      result = temp;
    }

    return result;
  }
}
