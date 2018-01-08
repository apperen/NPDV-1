puts "Привет! Для какой лотереи нужны числа?
1. 4 из 20 (*2)
2. 5 из 36 (+1)
3. 6 из 45
4. 7 из 49
5. 6 из 49"

choice = gets.to_i
until (choice == 1 || choice == 2 || choice == 3 || choice == 4 || choice == 5) do
	puts "Пожалуйста, выберите один из предложенных вариантов."
	choice = gets.to_i
end 

if (choice == 1) #4 из 20
	puts "Сколько комбинаций сгенерировать?"

	quantity = gets.to_i

	while (quantity < 1 || quantity > 100) do
		puts "Пожалуйста, введите число от 1 до 100."
		quantity = gets.to_i
	end

	field_one = []
	field_two = []
	count = 0

	while (count <= quantity) do

		while (field_one.uniq.size < 4)do
			field_one << rand(21)
			field_one.delete(0)
		end

		while (field_two.uniq.size < 4)do
			field_two << rand(21)
			field_two.delete(0)
		end

		puts field_one.uniq.to_s  + " + " + field_two.uniq.to_s
		field_one = []
		field_two = []
		count += 1
	end
	abort "Количество успешно сгенерированных комбинаций: " + quantity.to_s + ". Удачи!"

elsif (choice == 2) #5 из 36
	puts "Сколько комбинаций сгенерировать?"

	quantity = gets.to_i

	while (quantity < 1 || quantity > 100) do
		puts "Пожалуйста, введите число от 1 до 100."
		quantity = gets.to_i
	end

	field_one = []
	field_two = []
	count = 0

	while (count <= quantity) do

		while (field_one.uniq.size < 5)do
			field_one << rand(37)
			field_one.delete(0)
		end

		while (field_two.uniq.size < 1)do
			field_two << rand(5)
			field_two.delete(0)
		end

		puts field_one.uniq.to_s  + " + " + field_two.uniq.to_s

		field_one = []
		field_two = []
		count += 1
	end
	abort "Количество успешно сгенерированных комбинаций: " + quantity.to_s + ". Удачи!"

elsif (choice == 3) #6 из 45
	puts "Сколько комбинаций сгенерировать?"

	quantity = gets.to_i

	while (quantity < 1 || quantity > 100) do
		puts "Пожалуйста, введите число от 1 до 100."
		quantity = gets.to_i
	end

	field_one = []
	field_two = []
	count = 0

	while (count <= quantity) do

		while (field_one.uniq.size < 6)do
			field_one << rand(46)
			field_one.delete(0)
		end

		puts field_one.uniq.to_s

		field_one = []
		count += 1
	end
	abort "Количество успешно сгенерированных комбинаций: " + quantity.to_s + ". Удачи!"

elsif (choice == 4) #7 из 49
	puts "Сколько комбинаций сгенерировать?"

	quantity = gets.to_i

	while (quantity < 1 || quantity > 100) do
		puts "Пожалуйста, введите число от 1 до 100."
		quantity = gets.to_i
	end

	field_one = []
	field_two = []
	count = 0

	while (count <= quantity) do

		while (field_one.uniq.size < 7)do
			field_one << rand(50)
			field_one.delete(0)
		end

		puts field_one.uniq.to_s

		field_one = []
		count += 1
	end
	abort "Количество успешно сгенерированных комбинаций: " + quantity.to_s + ". Удачи!"

elsif (choice == 5) #6 из 49
	puts "Сколько комбинаций сгенерировать?"

	quantity = gets.to_i

	while (quantity < 1 || quantity > 100) do
		puts "Пожалуйста, введите число от 1 до 100."
		quantity = gets.to_i
	end

	field_one = []
	field_two = []
	count = 0

	while (count <= quantity) do

		while (field_one.uniq.size < 6)do
			field_one << rand(50)
			field_one.delete(0)
		end

		puts field_one.uniq.to_s

		field_one = []
		count += 1
	end
	abort "Количество успешно сгенерированных комбинаций: " + quantity.to_s + ". Удачи!"

end