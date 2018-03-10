def get_letters

	slovo = ARGV[0]

	if (Gem.win_platform? && ARGV[0])
   	 slovo = slovo.dup.force_encoding("IBM866").encode("IBM866", "cp1251").encode("UTF-8")
  	end

  	if (slovo == nil || slovo == "")
  		abort "Вы не ввели слово для игры"
  	end


  	return slovo.downcase.split("")
end

def get_user_input
	letter = ""

	while (letter == "")
		letter = STDIN.gets.encode("UTF-8").chomp
	end

	return letter.downcase
end

def check_result(letters, good_letters, bad_letters, user_input)
	if good_letters.include?(user_input)
		puts "Вы уже называли эту букву. Она есть в слове."
		return 0
	elsif bad_letters.include?(user_input)
		puts "Вы уже называли эту букву. Её нет в слове."
		return 0
	end

	if (letters.include?(user_input)) || 
		((letters.include?("ё")) && (user_input == "е")) || 
		((letters.include?("е")) && (user_input == "ё")) ||
		((letters.include?("и")) && (user_input == "й")) ||
		((letters.include?("й")) && (user_input == "и"))


		good_letters << user_input
		
		if good_letters.size == letters.uniq.size
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
		if (good_letters.include?(letter)) || 
			((good_letters.include?("ё")) && (letter == "е")) ||
			((good_letters.include?("е")) && (letter == "ё")) ||
			((good_letters.include?("и")) && (letter == "й")) ||
			((good_letters.include?("й")) && (letter == "и"))
			
			result += letter + " "
		else
			result += "__ "
		end
	end

	return result
end

def sklonenie (number, popitka, popitki, popitok)
	if (number == nil || !number.is_a?(Numeric))
		number = 0
	end

	ostatok = number % 10

	if (ostatok == 1)
		return popitka
	end

	if (ostatok >= 2 && ostatok <= 4)
		return popitki
	end

	if (ostatok > 4 || ostatok == 0)
		return popitok
	end
end

def print_status(letters, good_letters, bad_letters, errors)
	puts "\nСлово: " + get_word_for_print(letters, good_letters)
	
	if (errors > 0)
		puts "Ошибки (#{errors}): #{bad_letters.join(", ")}"
	end

	counter_errors = 7-errors
	if (errors >= 7)
		puts "Вы проиграли =("
	else
		if good_letters.size == letters.uniq.size
			puts "Вы выиграли\n\n\n"
		else
			puts "У вас осталось " + counter_errors.to_s + sklonenie(counter_errors, " ошибка", " ошибки", " ошибок")
		end
	end
end

def cls
	system "clear" or system "cls"
end