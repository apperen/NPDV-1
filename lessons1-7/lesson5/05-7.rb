# encoding: utf-8


# Получим текущий час (число от 0 до 23), используя класс Time, встроенный в Ruby
hour = Time.now.hour

# Проверяем различные диапазоны чисел

if (hour >= 6 && hour < 10)
  puts "Дело было утром"
end

if (hour >= 10 && hour < 17)
  puts "Это случилось днём"
end

if (hour >= 17 && hour < 23)
  puts "Смеркалось..."
end

if (hour == 23 || hour < 6)
  puts "Тиха украинская ночь..."
end
