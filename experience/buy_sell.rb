def vibor(choice)
	until (choice == 1 || choice == 2)
		puts "Пожалуйста, выберите одно из предложенных действий."
		choice = gets.to_i
	end
end

def test_num(user_price)
	while (user_price == 0)
		puts "Пожалуйста, введите адекватное значение."
		user_price = gets.to_i
	end
end

def no(program_price, user_price, action)
	if (action == "купить")
		while (program_price != user_price)
			if (program_price > user_price)
				program_price = user_price + (user_price / 2)
				if (program_price > 10000)
					program_price = (10000 - 500)
				end

				puts "Ну, это уже слишком. Давайте за #{program_price}. Устраивает?"
				puts "1. Да // 2. Нет "
				
				choice = gets.to_i
				vibor(choice)
				if (choice == 1)
					user_price = program_price
				else
					puts "Укажите свою цену."
					user_price = gets.to_i
					test_num(user_price)
				end
			else
				puts "Ура! Сделка завершена!"
			end
		end

		puts "Ура! Сделка завершена!"
	else
		until (user_price < 50000)
			puts "Имейте совесть!"
			user_price = gets.to_i
			test_num(user_price)
		end

		while (program_price != user_price)
			if (program_price < user_price)
				program_price = user_price - (user_price / 2)
				if (program_price < 10000)
					program_price = (10000 + 500)
				end

				puts "Ну, это уже слишком. Давайте за #{program_price}. Устраивает?"
				puts "1. Да // 2. Нет "
				
				choice = gets.to_i
				vibor(choice)
				if (choice == 1)
					user_price = program_price
				else
					puts "Укажите свою цену."	
					user_price = gets.to_i
					test_num(user_price)
				end
			else
				puts "Ура! Сделка завершена!"
			end
		end

		puts "Ура! Сделка завершена!"
	end
end

program_price = 10000
user_price = nil


puts "Привет! Вы хотите что-то купить или продать?
1. Купить
2. Продать
"
choice = gets.to_i
vibor(choice)

if (choice == 1)
	action = "купить"
	operate = "продать вам"
else
	action = "продать"
	operate = "купить у вас"
end

puts "Какую вещь или услугу вы хотите #{action}?"
product = STDIN.gets.chomp


puts "Хорошо, я могу #{operate} #{product}. Только для Вас - моя цена - 10000 руб. Устраивает?
1. Да
2. Нет" 

choice = gets.to_i
vibor(choice)

if (choice == 1)
	puts "Ура! Сделка завершена!"
else
	puts "Укажите свою цену."
	user_price = gets.to_i
	test_num(user_price)

	if (action == "купить")
		if (user_price > program_price)
			puts "Ура! Сделка завершена!"
		else
			no(program_price, user_price, action)
		end

	else

		if (user_price < program_price)
			puts "Ура! Сделка завершена!"
		else
			no(program_price, user_price, action)
		end
	end
end



