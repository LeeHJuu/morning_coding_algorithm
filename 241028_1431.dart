void main(List<String> args) {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    int max = candies.reduce((current, next) => current > next ? current : next);

    return candies.map((candy) => candy + extraCandies >= max).toList();
  }
}

