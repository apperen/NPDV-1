require './../hw11-3/human.rb' 
require './../hw11-4/film.rb'
firstname = [] 
lastname = []
films = []
count = 3

puts "Введите имена трёх рандомных людей. ИМЯ - ENTER- ФАМИЛИЯ - ENTER"
puts "p.s. Они будут зрителями!"

while (count > 0) do
	puts "Осталось набрать людей для старта: #{count}"
	puts "Введите имя и нажмите Enter:"
	firstname << gets.chomp 

	puts "Введите фамилию и нажмите Enter:"
	lastname << gets.chomp 

	count -= 1 
end

puts "Хорошо, теперь назовите любого кинорежиссёра:"
author = gets.chomp

puts "Введите какой-нибудь его фильм:"

while (films.size < 3) do
	puts "Осталось фильмов ввести: #{(films.size - 3).abs}"
	films << gets.chomp
end

human1 = Human.new(firstname,lastname )
films1 = Film.new(author, films)

human2 = Human.new(firstname,lastname )
films2 = Film.new(author, films)

human3 = Human.new(firstname,lastname )
films3 = Film.new(author, films)

#на этот моменте count должен быть == 0
count += 1


while (count < 4) do
	puts "Итак, результаты:"
	puts "№#{count.to_s}: #{human1.say_name}. Возраст: #{human1.say_age.to_s}"
	puts "Любимый фильм: #{films1.film_for_me}. Режиссёр: #{films1.author_for_me}"
	count += 1

	if (count == 3)
		human2, human1 = human1, human2
		human1, human3 = human3, human1
	elsif (count == 2)
		human1, human2 = human2, human1
	end
end

puts "The End"