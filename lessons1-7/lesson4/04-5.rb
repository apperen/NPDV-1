# encoding: utf-8

# записываем текущее время в переменную t
t = Time.now

# выбираем из переменной t номер дня недели методом wday
wday  = t.wday

# проверяем номер дня недели (в руби неделя начинается с воскресенья – 
# нулевого дня, а заканчивается субботой – шестым днем)
if (wday == 0 || wday == 6)
  puts "Сегодня выходной!"
else
  puts "Сегодня будний день, за работу!"
end