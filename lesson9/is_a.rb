value = ARGV[0].to_i

if (value == "")
	value = 0
end

if (value.is_a?(Numeric))
	puts "Это число"
else
	puts "Это не число"
end

puts "Полученный агрумент - #{value}."