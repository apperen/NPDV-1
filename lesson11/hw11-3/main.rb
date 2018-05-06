require './human.rb'

human1 = Human.new('Билл','Гейтс')
human2 = Human.new('Стас','Михайлов')

puts "У нас есть два человека:"
puts "Одного зовут " + human1.say_name
puts "И ему " + human1.say_age.to_s
puts "Второго:" + human2.say_name
puts "И ему " + human2.say_age.to_s