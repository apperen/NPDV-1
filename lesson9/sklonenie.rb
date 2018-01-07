def sklonenie (number, krokodil, krokodila, krokodilov)
	if (number == nil || !number.is_a?(Numeric))
		number = 0
	end

	ostatok = number % 10

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

skolko = ARGV[0].to_i

puts "#{skolko} " + 
	sklonenie(skolko, "негритёнок", "негритёнка", "негритят") + 
	" " + 
	sklonenie(skolko, "пошёл", "пошли", "пошли") + 
	" купаться в море!"

