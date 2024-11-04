void main(List<String> args) {
  int largestAltitude(List<int> gain) {
    int height = 0;
    int highest = 0;

    for (int i in gain) {
      height += i;
      if (height > highest) {
        highest = height;
      }
    }

    return highest;
  }
}
