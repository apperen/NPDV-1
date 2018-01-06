#star
def star(quantity)
  count = 0
  result = nil
  unit_starting = ""
  while (count < quantity)
      unit_addendum = "*"
      unit_starting = unit_starting + unit_addendum
      count += 1
  end

  puts "Вот ваши звезды :)"
  puts unit_starting
end


puts " Сколько вам звезд на погоны?"
quantity = gets.to_i.abs

star(quantity)
