require "./bridge.rb" 
#подключение файла с новым классом

puts "Поехали!"

sleep 0.5

puts "Внезапно река!"

sleep 0.5

bridge = Bridge.new 
#активация класса. сделано == initialize сработает автоматически

sleep 0.5
if !bridge.is_opened?
	bridge.open
end

sleep 0.5

puts "Поехали дальше!"

# sleep(2.hours) не робит в руби

puts bridge.is_opened?.to_s
