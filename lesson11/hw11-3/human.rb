class Human
	def initialize(firstname, lastname)
		@age = rand(100) + 1
		@firstname = firstname
		@lastname = lastname
	end

	def say_age
		return @age
	end

	def say_name
		full_name = @firstname + " " + @lastname
		return full_name
	end
endссм 