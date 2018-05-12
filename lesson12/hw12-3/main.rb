require './bodybilder.rb'

body1 = Bodybilder.new

a = 0
while a <= rand(50) do
	body1.bizepzi_up
	a +=1
end

a = 0
while a <= rand(50) do
	body1.trizepzi_up
	a +=1
end

a = 0
while a <= rand(50) do
	body1.delti_up
	a +=1
end

body2 = Bodybilder.new

a = 0
while a <= rand(50) do
	body2.bizepzi_up
	a +=1
end

a = 0
while a <= rand(50) do
	body2.trizepzi_up
	a +=1
end

a = 0
while a <= rand(50) do
	body2.delti_up
	a +=1
end


puts "Первый бодибилдер"
puts "Трицепсы: #{body1.bizepzi_up}"
puts "Бицепсы: #{body1.trizepzi_up}"
puts "Дельты: #{body1.delti_up}"
puts
puts "Второй бодибилдер"
puts "Трицепсы: #{body1.bizepzi_up}"
puts "Бицепсы: #{body1.trizepzi_up}"
puts "Дельты: #{body1.delti_up}"

