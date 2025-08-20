def stock_picker(stock_price) 
  halfway = stock_price.length / 2
  min_price = stock_price.min(halfway)
  max_price = stock_price.max(halfway)
  valid_days = min_price.product(max_price)
  .map{|pair| [stock_price.index(pair[0]), stock_price.index(pair[1])]}
  .filter{|pair| pair[1] > pair[0] }
  .sort{|pair_a, pair_b| pair_a[0] <=> pair_b[0]}

  valid_days.reduce(0){|best, curr| 
    best_profit = stock_price[best[1]] - stock_price[best[0]]
    curr_profit = stock_price[curr[1]] - stock_price[curr[0]]
    curr_profit > best_profit ? curr : best
  }
end

p stock_picker([17,3,6,9,15,8,6,1,10])
[1,4]  # for a profit of $15 - $3 == $12