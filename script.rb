def stock_picker(stocks)
  combination = [0, 0, 0]
  stocks.each_with_index do |v, i|
    x = 0
    while x < stocks.length && x < i
      difference = v - stocks[x]
      if difference > combination[2]
        combination = [x, i, difference]
      end
      x += 1
    end
  end
  combination[0..1]
end
p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])