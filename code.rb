def minimum_coins(num)
  if num >= 250
    return 'Number is to high.'
  end
  coin_values = [100, 50, 25, 10, 5, 1]
  coin_purse = ''

  coin_values.each do |coin|
    coin_purse << "#{coin} " * (num/coin)
    num = num % coin
  end
  coin_purse = coin_purse.split
  if coin_purse.size == 2
    "Would be 2: " + "#{coin_purse.join(', ')}."
  else
    "Would be " + "#{coin_purse.size}: " + "#{coin_purse.join(', ')}."
  end
end
