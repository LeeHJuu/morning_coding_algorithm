class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> anagramsGroup = {};

    strs.forEach((str) {
      var sorted = str.split("")..sort();
      var sortedStr = sorted.join('');
      if (anagramsGroup.containsKey(sortedStr)) {
        anagramsGroup[sortedStr]!.add(str);
      } else {
        anagramsGroup[sortedStr] = [str];
      }
    });

    return anagramsGroup.values.toList();
  }
}
