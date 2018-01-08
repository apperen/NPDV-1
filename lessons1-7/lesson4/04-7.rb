# encoding: utf-8

# объявляем две переменные строки
string1 = "я первая строка"
string2 = "я вторая строка"

tmp_string = nil # временная переменная

# выводим на экран
puts "string1: " + string1
puts "string2: " + string2

puts "Меняем местами..."

tmp_string = string1 # сохранили первую строку во временной переменной
string1 = string2    # теперь string1 указывает на вторую строку
string2 = tmp_string # и наконец в string2 записываем первую строку из временной переменной


#  выводим изменившийся результат
puts "string1: " + string1
puts "string2: " + string2