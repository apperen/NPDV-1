cars = [
	"Audi",#0
	"Honda",#1
	"ВАЗ",#2
	"Mitsubishi",#3
	"Skoda",#4
	"Mazda",#5
	"Toyota",#6
	"Ford",#7
	"Kia",#8
	"BMW",#9
	"Запорожец"#10
]

puts "Привет! У нас всего " + cars.size.to_s + " машин. Выберите любую от  1 до " + cars.size.to_s +  ". Вам какую?"
sleep 0.5
choice = gets.to_i
if (choice == 0)
	abort "0 = отсутствие машины."
elsif (choice < (cars.size + 1) && choice > -1)
	puts "Вы выбрали машину под номером " + choice.to_s + "!"
	abort "Ваша машина - " + cars [(choice - 1)]
elsif (choice < 0)
	puts "Возможно, вы ошиблись, и имеете ввиду не " + choice.to_s + " а " + choice.abs.to_s + "?"
	puts "1. Да, ошибочка вышла. Моё число " + choice.abs.to_s 
	puts "2. Никакой ошибки нет. Моё число " + choice.to_s
	sorry = gets.chomp
	if (sorry == "1")
		puts "Вы выбрали машину под номером " + choice.abs.to_s + "!"
		abort "Ваша машина - " + cars [(choice.abs - 1)]
	elsif (sorry == "2")
		abort "Такой машины нет."
	else
		abort "Можно выбрать только 1 или 2. Вы всё сломали."
	end
else
	abort "Такой машины нет."
end