#Соловьи
puts "Какая сейчас температура?"
temperature = STDIN.gets.to_i

until (temperature >= -80 && temperature <= 50 ) do
	puts "Пожалуйста, выберите температуру, при которой живут."
	temperature = STDIN.gets.to_i
end

puts "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима"
season = STDIN.gets.to_i

until (season == 0 || season == 1 || season == 2 || season == 3) do
	puts "Выберите корректное время года. "
	puts "(0 - весна, 1 - лето, 2 - осень, 3 - зима"
	season = STDIN.gets.to_i
end

sing = "Скорее идите в парк, соловьи поют!"
do_not_sing = "Сейчас соловьи молчат, греются или прохлаждаются :)"

if (season == 1)
	if (temperature >= 15 && temperature <= 35)
		puts sing
	else
		puts do_not_sing
	end
else
	if (temperature >= 22 && temperature <= 30)
		puts sing
	else
		puts do_not_sing
	end
end

 