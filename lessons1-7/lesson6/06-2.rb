# encoding: utf-8

# исходный массив
numbers = [1, 2, 3, 4, 5]

puts "исходный массив:"
puts numbers.to_s

puts "массив в обратном порядке:"
puts numbers.reverse.to_s


puts "исходный массив (не изменился):"
puts numbers.to_s

numbers.reverse! # метод reverse! меняет сам массив numbers

puts "исходный массив (после изменения):"
puts numbers.to_s