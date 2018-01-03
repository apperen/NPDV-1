# encoding: utf-8

puts "Что у вас на руках? 1. Рубли 2. Доллары"
currency = gets.chomp


puts "Сколько сейчас стоит 1 доллар?"
dollar_rate = gets.chomp.to_f


if currency == "1"
	puts "Сколько у вас рублей?"
	rubles = gets.chomp.to_f

	# делим сумму в рублях на курс доллара - получаем сумму в долларах, 
	# и после этого округляем методом round до 2-го знака после запятой
	summa = (rubles / dollar_rate).round(2)

	puts "Ваши запасы равны: " + summa.to_s + " $"
else
	puts "Сколько у вас долларов?"
	dollars = gets.chomp.to_f

	# умножаем сумму в долларах на курс доллара - получаем сумму в рублях, 
	# и после этого округляем методом round до 2-го знака после запятой
	summa = (dollars * dollar_rate).round(2)

	puts "Ваши запасы равны: " + summa.to_s + " руб."
end

