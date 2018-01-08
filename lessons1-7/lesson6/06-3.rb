# encoding: utf-8

# объявим массив марок автомобилей
cars = ["Ford", "Mercedes", "Maybach", "Citroen", "Mazda", "Toyota", "Lexus", "Nissan"]

puts "У нас всего " + cars.size.to_s + " машин. Вам какую?"

# спросим номер машины и преобразуем его в число методом to_i
number = gets.to_i

# проверка значения на допустимые пределы
if (number >= 0 && number < cars.size)
	puts "Поздравляем, вы получили:"
	puts cars[number]
else
	puts "Извините, машины с таким номером у нас нет :("
end

