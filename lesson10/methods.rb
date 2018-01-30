def get_letters #преобразует в массив слово, которое загадано вместе с запуском программы
	slovo = ARGV[0]

	if (Gem.win_platform? && ARGV[0])
    slovo = slovo.dup.force_encoding("IBM866").encode("IBM866", "cp1251").encode("UTF-8")
  	end

  	if (slovo == nil || slovo == "")
  		abort "Вы не ввели слово для игры"
  	end

  	return slovo.split("")
end
# puts get_letters.to_s - проверка

def get_user_input # принимает букву от пользователя
	letter = ""

	while (letter == "" || letter.size > 1)
		letter = STDIN.gets.encode("UTF-8").chomp
	end

	return letter
end

#проверяем результат
def check_result(user_input, letters, good_letters, bad_letters)
	if (good_letters.include?(user_input) ||
		bad_letters.include?(user_input))
		return 0 #возврат. дальше не пойдёт
	end

	if (letters.include?(user_input)) 
		#можно написать include?(user_input)
		#можно написать include? user_input
		good_letters << user_input

		if (letters.uniq.size == good_letters.size) 
		#если слово отгадано
			return 1
		else
			return 0
		end
	else
		bad_letters << user_input
		return -1
	end
end

def get_word_for_print(letters, good_letters)
	result = ""

	for letter in letters do
		if good_letters.include?(letter)
			result += letter + " "
		else
			result += "__ "
		end
	end

	return result
end

#1.выводит загаданное слово  / 
#(если буква отгадана то показывать её, 
#если  нет то нижнее подчеркивание)
#2. показывать число ошибках и названные буквы
#3. если более 7 раз то сообщает о поражении
#4. есло слова угадано  говорит о победе
def print_status(letters, bad_letters, good_letters, errors)
	puts "\nСлово:" + get_word_for_print(letters, good_letters)
	#join выводит элементы массива в строку без скобок и тд
	
	puts "Ошибки (#{errors}): #{bad_letters.join(", ")}"

	if (errors >= 7)
		puts "Вы проиграли"
	else
		if (letters.uniq.size == good_letters.size)
			puts "Вы выиграли!\n\n Ура!"
		else
			puts "Ошибок осталось: " + (7 - errors).to_s	
		end
	end
end

def cls
	system "clear" or system "cls"
end
