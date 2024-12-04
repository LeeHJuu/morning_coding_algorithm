class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    if (ransomNote.length > magazine.length) return false;

    var ransomNoteList = ransomNote.split("");
    var magazineList = magazine.split("");

    for (var c in ransomNoteList) {
      var index = magazineList.indexOf(c);
      if (index == -1) return false;
      if (index != -1) magazineList.removeAt(index);
    }
    return true;
  }
}
