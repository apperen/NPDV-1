count = 0

while (count == 0) do
	puts "Введите радиус круга:"
	radius = gets.to_f
	pi = 3.141592653589793238462643
	area = ((radius ** 2) * pi) 
	puts "Площадь круга = #{area}"
	
	puts "Для повторения нажмите Enter."
	choice = gets.chomp

	if (choice != "")
		count += 1
	end
end