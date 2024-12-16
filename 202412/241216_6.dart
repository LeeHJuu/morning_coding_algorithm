class Solution {
  String convert(String s, int numRows) {
    if (numRows == 1) return s;

    var convertList = List.generate(numRows, (index) => '');
    print(convertList);

    int currentRow = 0;
    bool inMiddle = false;

    for (var char in s.split('')) {
      convertList[currentRow] += char;

      if (currentRow == numRows - 1 || currentRow == 0) inMiddle = !inMiddle;
      currentRow += inMiddle ? 1 : -1;
    }

    print(convertList);
    return convertList.join('');
  }
}
