class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = prices[0];
    int maxProfit = 0;
    for(int i = 1 ; i < prices.length ; i++ ){
        maxProfit = max(maxProfit, prices[i] - minPrice);
        minPrice = min(minPrice,prices[i]);
    }
    return maxProfit;
    
  }
}