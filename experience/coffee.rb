puts "Рады приветствовать Вас в нашем кафе!"
puts "Пожалуйста, подождите минуту, мы готовим кофе."


variety = nil #вид черный или разбавленный
temperature = nil #горячий или холодный
taste = nil #вкусный или невкусный
packaging = nil #c cобой или без упаковки

choice = rand(10)
if (choice >= 0 && choice <= 3) 
	variety = "черный"
else
	variety = "разбавленный"
end

choice = rand(10)
if (choice >= 0 && choice <= 3) 
	temperature = "горячий"
else
	temperature = "холодный"
end

choice = rand(10)
if (choice >= 0 && choice <= 3) 
	taste = "вкусный"
else
	taste = "невкусный"
end

choice = rand(10)
if (choice >= 0 && choice <= 3) 
	packaging = "с собой"
else
	packaging = "без упаковки"
end

puts "Итог. Кофе получился:"
puts "1)" + variety
puts "2)" + temperature
puts "3)" + taste
puts "4)" + packaging
