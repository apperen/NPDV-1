class Buratino
	def initialize
		@nose_length = 2
	end

	def long_nose
		@nose_length += 1
		@nose_length
	end

	def short_nose
		@nose_length -= 1
		@nose_length
	end

	def normal_nose
		@nose_length
	end
end