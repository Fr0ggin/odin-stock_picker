def stock_picker(stock)

  best_profit = 0
  best_buy_index = 0
  best_sell_index = 0

for i in (0...stock.length-1) do
  value = stock[i]
  buy_index = i
  max = stock[i+1..].max
  profit = max - value
  sell_index = stock.index(max)
  if profit > best_profit
    best_profit = profit
    best_buy_index = buy_index
    best_sell_index = sell_index
  end
end
  puts ("Buy on day #{best_buy_index} and sell on day #{best_sell_index} for a profit of #{best_profit}")
end

stock_picker([17,3,6,9,15,8,6,1,10])
