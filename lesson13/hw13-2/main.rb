current_path = File.dirname(__FILE__)
file_name = "text.txt"
file_path = current_path + "/docs/#{file_name}"


if File.exist?(file_path)
	connect = File.new(file_path, 'r:UTF-8')
	lines = connect.readlines
	connect.close
else
	abort "File #{file_name} not found."
end

empty_counter = 0

for item in lines do
	if item.strip == ""
		empty_counter += 1
	end
end

puts "Открываем файл: #{file_name}"
puts "Всего строк: #{lines.length}"
puts "Пустых строк: #{empty_counter}"