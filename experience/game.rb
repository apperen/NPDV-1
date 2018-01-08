key = rand(16).to_i
victory = "Вы выиграли! Это действительно число " + key.to_s

iteration = gets.to_i
if (iteration == key)
	abort victory
else
	if (iteration - key).abs < 3
		puts "Горячо"
	else
		if (iteration - key).abs <4
			puts "Тепло"
		end
	end
	if (iteration > key)
		puts "Нужно меньше"
	else
		puts "Нужно больше"
	end

	iteration = gets.to_i
	if (iteration == key)
		abort victory
	else
		if (iteration - key).abs < 3
			puts "Горячо"
		else
			if (iteration - key).abs <4
				puts "Тепло"
			end
		end
		if (iteration > key)
			puts "Нужно меньше"
		else
			puts "Нужно больше"
		end

		iteration = gets.to_i
		if (iteration == key)
			abort victory
		else
			puts "GAME OVER."
			if (iteration > key)
				puts "Нужно было меньше"
			else
				puts "Нужно было больше"
			end
			puts "ОТВЕТ = " + key.to_s
		end
	end
end

