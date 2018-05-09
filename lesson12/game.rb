class Game
	def initialize(slovo)
		@letters = get_letters(slovo)

		@errors = 0

		@good_letters = []
		@bad_letters = []

		@status = 0
	end

	def get_letters(slovo)
		if (slovo == nil || slovo == "")
  			abort "Вы не ввели слово для игры."
  		end

  		return slovo.split("")
	end

	#1. спросить букву с консоли
	#2. проверить результат
	def ask_next_letter
		puts "Введите следующую букву:"

		letter = STDIN.gets.encode("UTF-8").chomp

		while (letter == "") do
			puts "Вы не ввели букву."
			letter = STDIN.gets.encode("UTF-8").chomp
		end

		next_step(letter)
	end

	def next_step(letter)
		if @status == -1|| @status == 1
			return
		end

		if @good_letters.include?(letter) || @bad_letters.include?(letter)
			return
		end

		if @letters.include?(letter)
			@good_letters << letter
		elsif @letters.include?(letter.upcase)
			@good_letters << letter.upcase
		elsif @letters.include?(letter.downcase)
			@good_letters << letter.downcase
		elsif @letters.include?("и") && letter == "й"
			@good_letters << "и"
		elsif @letters.include?("й") && letter == "и"
			@good_letters << "й"
		elsif @letters.include?("ё") && letter == "е"
			@good_letters << "ё"		
		elsif @letters.include?("е") && letter == "ё"
			@good_letters << "е"
		else
			@bad_letters << letter
			@errors += 1

			if @errors >= 7
				@status = -1
			end
		end

		if @good_letters.size == @letters.uniq.size
			@status = 1
		end
	end

	def letters
		@letters #return можно опустить если это последняя строчка метода
	end

	def good_letters
		@good_letters
	end

	def bad_letters
		@bad_letters
	end

	def status
		@status
	end

	def errors
		return @errors #а можно и не опускать
	end
end