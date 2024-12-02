void main(List<String> args) {
  String reverseWords(String s) {
    var words = s.trim().split(" ").where((word) => word.isNotEmpty).toList();
    var reverseWords = words.reversed;

    return reverseWords.join(" ");
  }
}
