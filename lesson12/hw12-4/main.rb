#тест на общительность
require './test_soc.rb'
require './arhive.rb'
arhive = Arhive.new

puts "Здравствуйте, как к Вам можно обращаться?"
name = STDIN.gets.chomp

if (name == nil || name == "")
	name = "Человечек"
	puts "Вы некорректно ввели своё имя, поэтому в этот раз Вас будут звать #{name}"
end

puts "Хорошо. #{name}, ответьте на несколько вопросов."
puts "Отвечайте честно, ведь врать себе нет смысла."

testing = TestSoc.new(name, arhive)
puts testing.test
