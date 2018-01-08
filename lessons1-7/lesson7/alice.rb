# encoding: utf-8

# массив, с введенными именами
names = []

# заранее объявляем переменную, которую используем в условии цикла
user_input = nil

while user_input != "" do
  user_input = gets.encode("UTF-8").chomp

  # добавляем имя
  names << user_input
end

# выводим результаты
for item in names do
  puts "C нами " + item
  sleep 1

  if (item == "Элис")
    puts "Элис??? Кто такая Элис?"
    sleep 1
    break # специальная команда досрочного прерывания цикла
  end
end


puts "Что это за девочка и где она живет?"
sleep 1
puts "А вдруг она не курит? А вдруг она не пьёт?"
sleep 1
puts "А мы с такими рожами возьмем да и припрёмся к Элис... :)"