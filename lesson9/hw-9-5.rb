def etching(choice, key, victory, count)
	if (choice == key)
		abort victory
	else
		if (choice > key)
			where = "нужно меньше"
		else 
			where = "нужно больше"
		end

		if ((key - choice).abs <= 2)
			puts "Тепло, #{where}"
		else
			puts "Холодно, #{where}"
		end
	end
end

key = rand(16)
victory = "Ура, вы выиграли! Это действительно число #{key}"

puts "Загадано число от 0 до 16, отгадайте какое?"
puts "Загадано число #{key}"

count = 1
while (count <= 3)
	choice = gets.to_i
	etching(choice, key, victory, count)
	count += 1
end

abort "Вы проиграли, увы."