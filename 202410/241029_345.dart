void main(List<String> args) {
  String reverseVowels(String s) {
    String changedStr = "";
    List<String> targetWord = [
      'a',
      'e',
      'i',
      'o',
      'u',
      'A',
      'E',
      'I',
      'O',
      'U'
    ];

    int count = 0;
    int length = s.length;
    List<String> saveWords = [];

    for (var i = 0; i < s.length; i++) {
      if (targetWord.contains(s[i])) {
        count += 1;
        saveWords.add(s[i]);
      }
    }

    for (var i = 0; i < length; i++) {
      if (targetWord.contains(s[i])) {
        changedStr += saveWords[count - 1];
        count -= 1;
      } else {
        changedStr += s[i];
      }
    }
    return changedStr;
  }
}
