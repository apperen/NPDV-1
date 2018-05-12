puts "Врага какого персонажа вы хотите узнать?"
hero = STDIN.gets.chomp.downcase
heroes = ["бэтмен", "шерлок холмс", "буратино", "фродо бэггинс", "моцарт"]

if !heroes.include?(hero)
	puts "Не удалось найти врага."
else
	case hero
		when "бэтмен"
			puts "Джокер"
		when "шерлок холмс"
			puts "Профессор Мориарти"
		when "буратино"
			puts "Карабас-Барабас"
		when "фродо бэггинс"
			puts "Саурон"
		when "моцарт"
			puts "Сальери"
	end
end
