#applique
def applique(quantity, row)
  count = 0
  result = nil
  unit_starting = ""
  while (count < quantity)
      unit_addendum = "#{row}"
      unit_starting = unit_starting + unit_addendum
      count += 1
  end

  puts "Вот ваш результат: "
  puts unit_starting
end


puts "Какую строчку склеиваем?"
row = STDIN.gets.chomp

puts "Сколько вам раз?"
quantity = gets.to_i.abs

applique(quantity, row)
