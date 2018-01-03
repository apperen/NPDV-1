# encoding: utf-8

# исходный массив
numbers = [1, 2, 3, 4, 5, 6, 7]

puts "исходный массив:"
puts numbers.to_s

reverse_numbers = [] # новый массив, куда положим исходный в обратном порядке

# проходим в цикле по массиву numbers
for item in numbers do
	reverse_numbers.unshift(item) # и добавляем каждый элемент в начало нового массива
end

puts "новый массив, полученный из исходного:"
puts reverse_numbers.to_s