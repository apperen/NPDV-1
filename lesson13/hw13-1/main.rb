current_path = File.dirname(__FILE__)
file_path = current_path + "/text/#{ARGV[0]}"

if File.exist?(file_path)
	user_read = File.new(file_path, 'r:UTF-8')	
	array_content = user_read.readlines
	user_read.close
else
	abort "Файл #{ARGV[0]} не найден."
end

array_content.reverse!

counter = 0

for item in array_content do
	if (counter < (array_content.size - (array_content.size - 5)))
		puts item
		counter += 1
	end
end
