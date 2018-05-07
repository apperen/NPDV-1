class Human
	def initialize(firstname, lastname)
		@age = rand(100) + 1

		#взависимости от того на какой файл это работает 
		#firstname and lastname могут быть как Array так и String

		if (firstname.class == Array)
			@firstname = firstname.sample
		else
			@firstname = firstname
		end

		if (lastname.class == Array)
			@lastname = lastname.sample
		else
			@lastname = lastname
		end

		# @firstname = firstname старая версия
		# @lastname = lastname
	end

	def say_age
		return @age
	end

	def say_name
		full_name = @firstname + " " + @lastname
		return full_name
	end
end