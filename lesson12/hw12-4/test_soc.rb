class TestSoc
	def initialize(name, arhive)
		@finish = 0
		@finish = 0
		@name = name
		@question = arhive.question
		@result = arhive.result
	end

	def test
		for item in @question do
			puts item
			answer = STDIN.gets.downcase.chomp
			until (answer == "да" || answer == "нет" || answer == "иногда")
				puts "#{@name}, введите корректный ответ. (да / нет / иногда)"
				answer = STDIN.gets.downcase.chomp
			end
			if (answer == "да")
				@finish += 2
			elsif (answer == "иногда")
				@finish += 1
			end
		end

		if (@finish >= 30)
			@finish = @result[0]
		elsif (@finish >= 25)
			@finish = @result[1]
		elsif (@finish >= 19)
			@finish = @result[2]
		elsif (@finish >= 14)
			@finish = @result[3]
		elsif (@finish >= 9)
			@finish = @result[4]
		elsif (@finish >= 4)
			@finish = @result[5]
		else
			@finish = @result[5]
		end

		return @finish
	end
end