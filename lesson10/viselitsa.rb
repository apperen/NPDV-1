require	"./methods.rb"
cls
puts "Игра Виселица. Версия 01"

letters = get_letters #возвращает введенное в командной строке слово

errors = 0

bad_letters = []
good_letters = []

while (errors < 7) do
	print_status(letters, bad_letters, good_letters, errors) 
	#будет выводить текущую ситуацию и рисовать виселицу

	puts "Введите следующую букву"

	user_input = get_user_input 
	#принимает от пользователя букву и разбирается с кодировками

	result = check_result(user_input, letters, good_letters, bad_letters)
	#проверяет результат

	if (result == -1)
		errors += 1
	elsif (result == 1)
		break
	end
end

print_status(letters, bad_letters, good_letters, errors) 
#будет выводить текущую ситуацию и рисовать виселицу
