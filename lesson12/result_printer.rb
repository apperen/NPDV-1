class ResultPrinter
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

	def print_status(game, counter_errors)
		cls
		puts "\nСлово: " + get_word_for_print(game.letters, game.good_letters)
		
		if (game.errors > 0)
			puts "Ошибки (#{game.errors}): #{game.bad_letters.join(", ")}"
		end

		print_viselitsa(game.errors)

		counter_errors = 7-game.errors
		if (game.errors >= 7)
			puts "Вы проиграли =("
		else
			if game.good_letters.size == game.letters.uniq.size
				puts "Вы выиграли\n\n\n"
			else
				puts "У вас осталось " + counter_errors.to_s + sklonenie(counter_errors, " ошибка", " ошибки", " ошибок")
			end
		end
	end

	def get_word_for_print(letters, good_letters)
		result = ""
	
		for letter_search in letters do
			if good_letters.include?(letter_search)
				
				result += letter_search + " "
			else
				result += "__ "
			end
		end

		return result
	end

	def cls
		system "clear" or system "cls"
	end

	def print_viselitsa(errors)
    # оператор case, аналогичен набору if (см. например http://www.programbeginner.ru/?p=337)
    case errors
    when 0
      	puts "
          _______
          |/
          |
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
    when 1
        puts "
          _______
          |/
          |     ( )
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
    when 2
        puts "
          _______
          |/
          |     ( )
          |      |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
    when 3
        puts "
          _______
          |/
          |     ( )
          |      |_
          |        \\
          |
          |
          |
          |
        __|________
        |         |
        "
    when 4
        puts "
          _______
          |/
          |     ( )
          |     _|_
          |    /   \\
          |
          |
          |
          |
        __|________
        |         |
        "
    when 5
        puts "
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |
          |
          |
        __|________
        |         |
        "

    when 6
        puts "
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        "
    when 7
        puts "
          _______
          |/     |
          |     (_)
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        "

		end
	end

end