value = gets.to_i

#puts value.class 
# if (value.is_a?(Numeric) == true)
# это не работает тк to_i превращает текст в 0, 
#а если без него - данные остаются в "" и читаются как String

if (value != 0)
	puts "Это число"
else
	puts "Это не число, или ноль."
end