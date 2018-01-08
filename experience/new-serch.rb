#search ?
count = 0
arr = []
puts "Какой длины должен быть массив?"
width = gets.to_i

until (width < 1000001 && width > 0) do
	puts "Некорректное значение. Какой длины должен быть массив?"
	width = gets.to_i
end

puts "Из диапазона каких чисел должен состоять массив?
Например, если нужно получить диапазон случайных чисел от 0 до 99 - введите 100."
number = gets.to_i

until (number < 1001 && number > 0) do 
 	puts "Некорректное значение. Попробуйте снова."
 	number = gets.to_i
 end 

while (count <= width) do
	arr << rand(number.abs)
	count += 1
end

puts "Показать массив?
1. Да
2. Нет"
choice = gets.to_i
if (choice == 1)
	puts arr.to_s
end

puts "Пересчитать массив полностью?
1. Да
2. Нет"
choice = gets.to_i
if (choice == 1)
	count = 0
	object = 0	#с какого числа начинаем

	while (object <= (number.abs - 1)) # убираем 1 лишний цикл
		for item in arr
			if (item == object)
				count += 1
			end
		end

		if (count != 0)
			puts "Число " + object.to_s + " встречается в массиве " + count.to_s + " раз(а)" 
		end

		object += 1
		count = 0
	end
else
	abort "ok. see you"
end