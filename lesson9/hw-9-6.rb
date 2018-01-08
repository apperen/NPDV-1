def sklonenie (number, krokodil, krokodila, krokodilov)
  if (number == nil || !number.is_a?(Numeric))
    number = 0
  end

  ostatok = number % 10

  if (number == 11 || number == 12 || number == 13 || number == 14)
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

until (skolko <= 110 && skolko >= 0) do
  puts "Пожалуйста, введите человеческое число."
  skolko = STDIN.gets.to_i
end

puts "#{skolko} " + 
  sklonenie(skolko, "негритёнок", "негритёнка", "негритят") + 
  " " + 
  sklonenie(skolko, "пошёл", "пошли", "пошли") + 
  " купаться в море!"

#based on the book of Agatha Christie