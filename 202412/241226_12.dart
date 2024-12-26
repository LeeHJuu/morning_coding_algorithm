class Solution {
  String intToRoman(int num) {
    var value = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    var symbol = [
      'M',
      'CM',
      'D',
      'CD',
      'C',
      'XC',
      'L',
      'XL',
      'X',
      'IX',
      'V',
      'IV',
      'I'
    ];
    var result = '';

    for (var i = 0; i < symbol.length; i++) {
      while (num >= value[i]) {
        result += symbol[i];
        num -= value[i];
      }
    }
    return result;
  }
}
