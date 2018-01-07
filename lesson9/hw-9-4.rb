#колбаса
sausage_array = []
count = 0

def sausage_width(width, how_many_cut_off)
	count = 0
	sausage_array = []

	while (count <= width)
		sausage_array << count
		count += 1
	end

	sausage_array.delete(0)

	puts "Вот Ваша колбаса:"
	puts sausage_array.to_s

	if (sausage_array.size <= how_many_cut_off)
		puts "Общая длина колбасы - #{width}. Вы хотите оставить больший кусок, чем у Вас есть."
		puts "Это ломает логику. Возвращаю Вам колбасу полностью."
		puts sausage_array.to_s
	else
		puts "мухаха"
		sausage_array.pop(sausage_array.size - how_many_cut_off)
		puts "Вот Ваш кусок:"
		puts sausage_array.to_s
	end
end


puts "Привет! Какой длины Вам нужна колбаса?"
width = gets.to_i

puts "Сколько первых элементов вам отрезать?"
how_many_cut_off = gets.to_i
 
sausage_width(width, how_many_cut_off)
