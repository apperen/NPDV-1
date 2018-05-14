current_path = File.dirname(__FILE__)
#заменяет точку, запускает программу именно из той папки, где она лежит

file_path = current_path + '/data/quotes.txt' 
#точка означает текущую папку, не ту где лежит программа, а ту, откуда запускаем

if File.exist?(file_path)
	f = File.new(file_path, 'r:UTf-8')
	lines = f.readlines
	f.close
	puts "Афоризм дня: #{lines.sample}" 
else
	puts "Файл не найден"
end