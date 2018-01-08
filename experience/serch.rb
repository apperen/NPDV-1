#this is search (but it's not exactly)
count = 1
arr = []

puts "Какой длины должен быть массив?"
width = gets.to_i

while (count <= width) do
	arr << rand(100)
	count += 1
end

puts arr.to_s

if (arr.size == width)
	puts "Всё верно. Сгененированный массив сответвует запросу."
	puts "Длина массива: " + arr.size.to_s
else
	puts "Что-то пошло не так."
end

count = 0

puts "Что нужно найти в массиве? Число от 0 до 99."
object = gets.to_i
puts "Найдено совпадений:" + count.to_s

for item in arr
	if (item == object)
		count += 1
		puts "Найдено совпадений:" + count.to_s
	end
end



