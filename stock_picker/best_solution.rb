def stock_picker(prices)
  min_day = 0
  best_pair = nil
  best_profit = 0

  prices.each_with_index do |price, day|
    if price < prices[min_day]
      min_day = day
    end

    profit = price - prices[min_day]
    if profit > best_profit
      best_profit = profit
      best_pair = [min_day, day]
    end
  end

  best_pair
end

p stock_picker([17,3,6,9,15,8,6,1,10]) # => [1,4]

