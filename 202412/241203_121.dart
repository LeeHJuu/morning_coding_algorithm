class Solution {
  int maxProfit(List<int> prices) {
    int max = 0;

    for(var i = 0; i < prices.length - 1; i++){
      for(var j = i + 1; j < prices.length; j++){
        if(max < prices[j] - prices[i]) max = prices[j] - prices[i];
      }
    }

    return max;
  }
}