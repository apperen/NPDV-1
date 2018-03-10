require "./methods.rb"

cls

puts "Игра виселица. Версия 01.1."

letters = get_letters #возвращает введённое в сторке слово

errors = 0

bad_letters = []
good_letters = []

while errors < 7 do 
	print_status(letters, good_letters, bad_letters, errors) #todo выводит статус: сколько букв отгадано, сколько ошибок
	
	puts "Введите следующую букву"
	user_input = get_user_input #разбирается с кодировками, делает букву нормальной

	result = check_result(letters, good_letters, bad_letters, user_input) #проверяет введённую букву (возв:-1 1 0)

	if (result == -1)
		errors += 1
	elsif (result == 1)
		break #досрочный выход из цикла
	end
end

print_status(letters, good_letters, bad_letters, errors) #todo выводит статус: сколько букв отгадано, сколько ошибок
