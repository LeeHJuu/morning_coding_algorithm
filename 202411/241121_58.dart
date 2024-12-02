class Solution {
  int lengthOfLastWord(String s) {
    var words = s.trim().split(" ");
    return words.last.length;
  }
}