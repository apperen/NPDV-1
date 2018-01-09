#продавец года
deal = "Договорились! Ура! Сделка завершена!
Видите, произвести торговую операцию оказалось довольно просто!"

def vibor(choice)
  until (choice == 1 || choice == 2)
    puts "Пожалуйста, выберите одно из предложенных действий."
    choice = gets.to_i
  end
end

def test_num(user_price)
  while (user_price == 0)
    puts "Пожалуйста, введите адекватное значение."
    user_price = gets.to_i
  end
end

def no_deal(program_price, user_price, deal, action) #задача - увеличить цену
  number = nil
  signal = false
  while (signal != true) do
    
    if (action == "купить")
      until (user_price >= 2000) do
        puts "Имейте совесть!"
        user_price = gets.to_i
      end
       if (user_price > (program_price - 1001))
         abort deal
       end
    else
      until (user_price <= 18000) do
        puts "Имейте совесть!"
        user_price = gets.to_i
      end
      if (user_price < (program_price + 1001))
         abort deal
       end
    end

    puts "Меня не очень устраивает Ваше предложение."

    if (action == "купить")  
      number = (user_price + ((program_price - user_price) / 1.2))
    else
      
      number = (user_price - ((user_price - program_price) / 1.2))
    end

    puts "Могу предложить за #{number.abs.to_i} руб. Устраивает?"
    puts "1. Да // 2. Нет"
  
    choice = gets.to_i
    vibor(choice)
    if (choice == 1)
      signal = true
    else
       puts "Укажите свою цену."
        user_price = gets.to_i
        test_num(user_price)
    end  
  end

  abort deal
end

program_price = 10000
user_price = nil


puts "Привет! Вы хотите что-то купить или продать?
1. Купить
2. Продать
"
choice = gets.to_i
vibor(choice)

if (choice == 1)
  action = "купить"
  operate = "продать вам"
else
  action = "продать"
  operate = "купить у вас"
end

puts "Какую вещь или услугу вы хотите #{action}?"
product = STDIN.gets.chomp


puts "Хорошо, я могу #{operate} #{product}. Только для Вас - моя цена - 10000 руб. Устраивает?
1. Да
2. Нет" 

choice = gets.to_i
vibor(choice)

if (choice == 1)
  abort deal
else
  puts "Укажите свою цену."
  user_price = gets.to_i
  test_num(user_price)
end

if (user_price == program_price)
  abort deal
else
  no_deal(program_price, user_price, deal, action)
end
