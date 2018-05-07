require './hamelion.rb'
require './notrandhamelion.rb'

puts "Привет, я хамелион!"
puts "Сейчас я несколько раз рандомно изменю свой цвет."
hamelion = Hamelion.new
sleep 0.3
hamelion = Hamelion.new
sleep 0.3
hamelion = Hamelion.new
sleep 0.3
hamelion = Hamelion.new
sleep 0.3

puts "Однако я могу делать это и осознанно!"
sleep 0.3

notrandhamelion = Notrandhamelion.new

notrandhamelion.change_color 'Цвет 1'
sleep 0.3
notrandhamelion.change_color 'Цвет 2'
sleep 0.3
notrandhamelion.change_color 'Цвет 3'
sleep 0.3
