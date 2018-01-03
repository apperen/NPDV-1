# encoding: utf-8

puts "введите число 1:"

# считываем первое, преобразуем к числу методом to_i и записываем в переменную number1
number1 = gets.to_i 

# и так далее еще 2 раза:

puts "введите число 2:"
number2 = gets.to_i	

puts "введите число 3:"
number3 = gets.to_i

puts

# в обратном порядке
puts number3.to_s
puts number2.to_s
puts number1.to_s