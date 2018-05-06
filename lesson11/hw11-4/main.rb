require './film.rb'
puts "Привет! Я помогу тебе выбрать фильм для досуга!"
puts " Фильмы какого режиссера вы хотите посмотреть?"

sleep 0.5
arr_filmez = []
author = gets.chomp

sleep 0.5
puts "Ок. Введите свой любимый фильм этого режиссёра"
filmez = gets.chomp.to_s
while (filmez == "")
	puts "Нельзя оставлять это поле пустым. Попробуйте ещё раз."
	filmez = gets.chomp.to_s
	arr_filmez << filmez
end

sleep 0.5
puts "Хорошо. Введите ещё один хороший фильм."
filmez = gets.chomp.to_s
while (filmez == "")
	puts "Нельзя оставлять это поле пустым. Попробуйте ещё раз."
	filmez = gets.chomp.to_s
	arr_filmez << filmez
end

sleep 0.5
puts "Осталось немного. Последний фильм."
filmez = gets.chomp.to_s
while (filmez == "")
	puts "Нельзя оставлять это поле пустым. Попробуйте ещё раз."
	filmez = gets.chomp.to_s
	arr_filmez << filmez
end
puts "тыгыдым"
puts arr_filmez.to_s

sleep 0.5
result = "1"
film = Film.new(author, result, arr_filmez)
film.choice_aut
film.choice_film


puts "И сегодня вечером рекомендую посмотреть: #{new_result}" 
puts "Режиссера: #{new_author}"

