# encoding: utf-8

# мужские имена
men = ["Gena", "George", "Misha"]

puts "Мужчины"
puts men.to_s

# женские имена
women = ["Katrin", "Liza", "Masha"]
puts "Женщины"
puts women.to_s

# склеиваем массив методом concat
men.concat(women)

puts "Все вместе"
puts men.to_s