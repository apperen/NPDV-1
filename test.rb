#test
array = [8371, 5980, 3825, 14502, 21385, 92730]

for item in array do
	if ((item % 15) == 0)
		puts "Число #{item} делится на 15."
	end	
end

# variable = [
# "w",
# "h",
# "a",
# "t",
# "'",
# "s",
# " ",
# "g",
# "o",
# "i",
# "n",
# "g",
# " ",
# "o",
# "n",
# "?"
# ]
   
 variable = "{what's going on?:;##754658$}"
 var = variable.gsub(/[^\d]/, '').to_i
 puts var
# puts perem.join(",")