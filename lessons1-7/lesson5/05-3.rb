# encoding: utf-8

# Спросим у пользователя курс доллара и переведём его ответ в число с плавающей точкой
puts "Сколько сейчас стоит 1 доллар?"
dollar_rate = gets.chomp.to_f

# Спросим у пользователя про его сбережения и точно также запишем их
puts "Сколько у вас рублей?"
rubles = gets.chomp.to_f

# Делим сумму в рублях на курс доллара и получаем сумму в долларах
# После этого округляем методом round до 2-го знака после запятой
# Обратите внимание на скобки, они важны: так мы говорим Ruby, что метод round нужно вызвать у результата

summa = (rubles/dollar_rate).round(2)

# Выводим результат на экран
puts "Ваши запасы равны: " + summa.to_s + " $"