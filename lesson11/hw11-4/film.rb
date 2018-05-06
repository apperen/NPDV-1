class Film
	def initialize(author, films)
		@author = author
		@films = films.sample
	end

	def author_for_me
		return @author
	end

	def film_for_me
		return @films
	end
end
