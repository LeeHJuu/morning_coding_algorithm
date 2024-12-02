import 'dart:collection';

class RecentCounter {
  var queue = [];

  RecentCounter() {}

  int ping(int t) {
    queue.add(t);

    while (queue.isNotEmpty && queue.first < t - 3000) {
      queue.removeAt(0);
    }

    return queue.length;
  }
}
