class Solution {
  int maxProfit(List<int> prices) {
    int totalMargin = 0;
    int? stock;

    for (var i = 0; i < prices.length - 1; i++) {
      if (prices[i] < prices[i + 1]) {
        if (stock == null) {
          stock = prices[i];
        }
      } else if (prices[i] > prices[i + 1]) {
        if (stock != null) {
          totalMargin += prices[i] - stock;
          stock = null;
        }
      }
    }

    if (stock != null && prices.last > stock)
      totalMargin += prices.last - stock;

    return totalMargin;
  }
}
