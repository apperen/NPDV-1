#камень-ножницы-бумага
arr = [
	"Камень",
	"Ножницы",
	"Бумага"
]

program = rand (3)

puts "Привет! Поиграем?
Введите вариант: 0 - камень, 1 - ножницы, 2 - бумага"
user  = gets.to_i
puts "Ваш выбор: " + arr[user]
puts "Выбор программы: " + arr[program]

if (user == program)
	abort "Ничья!"
else
	if (user == 0 && program == 1 ) || (user == 1 && program == 2 ) || (user == 2 && program == 0 )
		abort "Вы выиграли :)"
	else
		abort "Вы проиграли :("
	end
end



