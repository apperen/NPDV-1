# encoding: utf-8

# объявляем переменную hello и присваеваем ей значение - объект типа строки
hello = "привет, пацаны!"

# объявляем переменную hello2 и присваеваем ей пустое значение
# с помощью ключевого слова Руби - nil
hello2 = nil

# присваиваем этой переменной другое значение - новую строку
hello2 = "пока, девченки"

# вводим новую переменную hello3 и присваиваем ей значение переменной hello
hello3 = hello
# теперь обе переменные hello3 и hello указывают на один и тот же
# объект, строку - "привет, пацаны!"
# ВАЖНО – сам объект не дублируется мы просто одному объекту дали два разных "имени",
# но оба они указывают на один и тот же объект

# новая переменная devchenki, пустая
devchenki = nil

# условный оператор проверяет условие: переменная devchenki не должна быть пустой
if (devchenki != nil) # !=  значит "не равно"
  # если переменная devchenki действительно не пуста, указывает хоть на какой-нибудь объект
  # будет выполнятся код до слова "else"
	puts hello2

  #	...
else  # else – иначе
  # если переменная devchenki пуста, то будет выполнятся код до слова end
	puts hello
  # ...
end # конец оператора if

# после завершения кода в операторе if программа идет дальше до тех пор,
# пока не выполнит все инструкции...
puts "до свидания"
