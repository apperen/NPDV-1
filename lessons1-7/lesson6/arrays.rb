# encoding: utf-8
# используемые операции: создать/прочесть, добавить, выбрать элемент, удалить, удалить по индексу

# объявляем массив, содержащий четыре строки с названиями фруктов
fruits = ["банан", "апельсин", "манго"]
puts "массив, заданный в коде программы: " + fruits.to_s # выводим на экран

# другой, пустой массив, этот объект тоже имеет тип Array
basket = []

#  добавляем "яблоко"
basket << "apple"

# добавляем вишенку
basket.push("cherry")

# добавляем сразу два объекта одним методом
basket.push("mellon", "mango")

# выводим массив на экран
puts basket.to_s

# удаляем яблоко
basket.delete("apple")

puts basket.to_s

# выводим нулевой элемент (начало массива)
puts basket[0]

# выводим элемент с индексом два (третий по счету)
puts basket[2]

# удаляем элемент с индеском 2
basket.delete_at(2)

puts basket.to_s
