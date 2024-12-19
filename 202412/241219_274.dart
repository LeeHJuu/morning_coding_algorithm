class Solution {
  int hIndex(List<int> citations) {
    int hIndex = 0;
    for (var i = 1; i < citations.length + 1; i++) {
      var count = citations.where((n) => n >= i).length;
      print(count);
      if (i > count) break;
      hIndex = i;
    }
    return hIndex;
  }
}
// class Solution {
//   int hIndex(List<int> citations) {
//     citations.sort((a, b) => b.compareTo(a));

//     int hIndex = 0;
//     for (var i = 0; i < citations.length; i++) {
//       if (citations[i] >= i + 1) {
//         hIndex = i + 1;
//       } else {
//         break;
//       }
//     }

//     return hIndex;
//   }
// }
