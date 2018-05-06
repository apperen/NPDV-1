class Film
	def initialize(author, result, arr_filmez)
		@new_author = author
		@new_result = arr_filmez.sample
	end

	def choice_aut
		return @new_author
	end

	def choice_film
		return @new_result
	end
end
