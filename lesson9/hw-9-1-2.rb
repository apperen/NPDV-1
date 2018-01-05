def meth (radius)
	pi = 3.141592653589793238462643
	area = ((radius ** 2) * pi)
	puts "При радиусе, равном #{radius} площадь круга будет равняться #{area}"
end

number = 1
stop = false

while (stop == false) do

	puts "Введите радиус круга №#{number}"
	radius = gets.to_f

	meth (radius)

	number += 1

	puts "Посчитать ещё один?"
	choice = nil

	until (choice == 1 || choice == 2) do
		puts "1-да 2-нет"
		choice = STDIN.gets.to_i
	end

	if (choice == 2)
		stop = true
	end

end

