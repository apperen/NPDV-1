def sklonenie (number, krokodil, krokodila, krokodilov)
  if (number == nil || !number.is_a?(Numeric))
    number = 0
  end

  value = nil

  if (number >= 100000 && number <= 999999)
  	value = 
  elsif (number >= 10000 && number <= 99999)
  	value = 
  elsif (number >= 1000 && number <= 9999)
  	value = 
  elsif (number >= 100 && number <= 999)
  	value = 
  	

  ostatok = number % 10

  if (number >= 11 && number <= 14)
      return krokodilov
  else
    if (ostatok == 1)
      return krokodil
    end

    if (ostatok >= 2 && ostatok <= 4)
      return krokodola
    end

    if (ostatok > 4 || ostatok == 0)
      return krokodilov
    end
  end
end

skolko = ARGV[0].to_i

until (skolko < 1000000 && skolko >= 0) do
  puts "Пожалуйста, введите человеческое число. (Меньше миллиона)"
  skolko = STDIN.gets.to_i
end

puts "#{skolko} " + 
  sklonenie(skolko, "негритёнок", "негритёнка", "негритят") + 
  " " + 
  sklonenie(skolko, "пошёл", "пошли", "пошли") + 
  " купаться в море!"

#based on the book of Agatha Christie