#calc
puts "Выберите операцию и введите два числа."
puts "1. Первое число:"
first_num = gets.to_i
puts "2. Второе число:"
second_num = gets.to_i
puts "3. Оператор:"
operator = nil

def minn (a, b)
	puts "#{a} - #{b} = #{a-b}"
end

def summ (a, b)
	puts "#{a} + #{b} = #{a+b}"
end

def umnoz (a, b)
	puts "#{a} * #{b} = #{a*b}"
end

def deli (a, b)
	puts "#{a} / #{b} = #{a/b}"
end

#без пробела между скобкой
minn(first_num, second_num) 
summ(first_num, second_num) 
umnoz(first_num, second_num) 
deli(first_num, second_num) 