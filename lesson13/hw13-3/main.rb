current_path = File.dirname(__FILE__)

que_path = current_path + "/docs/questions.txt"
ans_path = current_path + "/docs/answers.txt"

if File.exist?(que_path)
	que_conn = File.new(que_path, 'r:UTF-8')
	questions = que_conn.readlines
	que_conn.close
end

if File.exist?(ans_path)
	ans_conn = File.new(ans_path, 'r:UTF-8')
	answers = ans_conn.readlines
	ans_conn.close
end

number_quest = 0
errors = 0

puts "Мини-викторина. Ответьте на вопросы."

while number_quest < questions.size do
	puts questions[number_quest]
	user_answer = STDIN.gets.to_i

	if user_answer == answers[number_quest].to_i
		puts "Верно.\n"
	else
		puts "Неверно. Правильный ответ: #{answers[number_quest]}\n"
		errors += 1
	end

	puts
	number_quest +=1
end

system "clear" or system "cls"

puts "Всего было вопросов: #{questions.size}"
puts "Правильных ответов: #{(questions.size - errors).to_s}"

if errors != 0
	puts "Неправильных ответов: #{errors.to_s}"
else
	puts "Высший балл!"
end