puts "Игра ОРЁЛ или РЕШКА"

balance = 1000
puts "Ваш стартовый баланс: #{balance}"

count = 0
arr = [
	"орёл",
	"решка"
]

rate = (balance / 2)#((balance - (balance / 6)) / 1000)
stop = false
while (stop == false) do

	# puts "Введите сумму ставки:"
	# rate = gets.to_i.abs

	until (rate <= balance || rate >= 1) do
		puts "Ставка не может быть больше баланса"
		abort "Ставок сделано: #{count}"
		rate = gets.to_i.abs
		until (rate == 0)
			puts "Ставка не может быть равна 0" 
			rate = gets.to_i.abs
		end
	end
	
	puts
	puts "Ставка: #{rate.to_i}"
	# puts "ОРЁЛ или РЕШКА?"
	# program_result = rand(2)
	user_choice = rand(9) #STDIN.gets.chomp

	# until (user_choice == 0 || user_choice == 1)
	# #until (user_choice == "1" || user_choice == "2")
	# 	puts "Нажмите 1 + Ввод для выбора варианта ОРЁЛ"
	# 	puts "Нажмите 2 + Ввод для выбора варианта РЕШКА"
	# 	user_choice = STDIN.gets.chomp
	# end

	if (user_choice == "1")
		# puts "Ваш выбор: #{arr[0]}"
		user_result = 0
	else	
		# puts "Ваш выбор: #{arr[1]}"
		user_result = 1
	end
	# puts "Выбор программы: #{arr[program_result]}"
	if (user_choice >= 1 && user_result <= 6)
		#if (user_result == program_result)

		balance += (rate * 0.9)
		# rate = 1
		puts "+!"
		puts "Баланс: #{balance.to_i}"
		puts "Ставок сделано: #{count}"
		rate = (balance / 2)
		# puts "Прибыль: #{rate * 0.8}"
	else
		balance -= rate
		# rate = (rate * 2.5) 
		puts "-"
		puts "Баланс: #{balance.to_i}"
		puts "Ставок сделано: #{count}"
		rate = (balance / 2)
		if (balance <= 0)
			abort
		end
	end
	

	# puts "Для продолжения игры нажмите Ввод"
	# repeat = gets.chomp
	
	# if (repeat != "")
	# 	stop = true
	# end

	count += 1
	sleep 0.5
end 

puts "Ставок сделано: #{count}"
puts "Игра окончена."
puts "Общий результат: #{(balance - 10000).to_i}"
