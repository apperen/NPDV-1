#колбаса на реверсе
def sausage(width)
	count = 0
	sausage_array = []

	while (count <= width)
		sausage_array << count
		count += 1
	end

	puts "Вот ваша колбаса:"
	puts sausage_array.to_s

	sausage_many_off(how_many_cut_off)
	
end

def sausage(how_many_cut_off)

	puts "Какой кусок вы хотите отрезать?"
	how_many_cut_off = gets.abs.to_i

	sausage_array.pop(sausage_array.size - how_many_cut_off)

	if (width < (sausage_array.size - how_many_cut_off))
		puts "Так как вы хотите отрезать больше чем у вас есть, оставим вам колбасу целиком. На этот раз."
	end
end


puts "Привет! Какой длины Вам нужна колбаса?"
width = gets.to_i

sausage(width)