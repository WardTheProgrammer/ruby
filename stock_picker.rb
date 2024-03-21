def stock_picker(prices)
  buy = nil
  sell = nil
  result = []
  max_profit = 0
  prices.each_with_index do |price, index|
      for i in (index + 1..prices.length - 1)
        if prices[i] - price > max_profit
          max_profit = prices[i] - price
          buy = index
          sell = i
        end
      end
  end
  result = [buy, sell]
  return result
end
