require './film.rb'
puts "Фильмы какого режиссера вы хотите посмотреть?"
author = gets.encode("UTF-8").chomp
sleep 0.4

count = 3
films = []
while (count > 0) do
	puts "Какой-нибудь его хороший фильм?"
	films << gets.encode("UTF-8").chomp
	count -= 1
end

film = Film.new(author, films)



puts "И сегодня вечером рекомендую посмотреть: #{film.film_for_me}."
puts "Режиссера: #{film.author_for_me}."