// class Solution {
//   List<int> dailyTemperatures(List<int> temperatures) {
//     var result = List.generate(temperatures.length, (index) => 0);

//     for (var i = 0; i < temperatures.length - 1; i++) {
//       for (var j = i + 1; j < temperatures.length; j++) {
//         if (temperatures[j] > temperatures[i]) {
//           result[i] = j - i;
//           break;
//         }
//       }
//     }
//     return result;
//   }
// }
class Solution {
  List<int> dailyTemperatures(List<int> temperatures) {
    var result = List.generate(temperatures.length, (index) => 0);
    var stack = <int>[];

    for (var i = 0; i < temperatures.length; i++) {
      while (stack.isNotEmpty && temperatures[i] > temperatures[stack.last]) {
        var index = stack.removeLast();
        result[index] = i - index;
      }
      stack.add(i);
    }
    return result;
  }
}
