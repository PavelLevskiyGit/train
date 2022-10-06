random = rand(1..10)

puts "Я загадал число от 1 до 10, попробуй угадай!"

loop do
  answer = gets.to_i
  if random == answer
    puts "Ты угадал!"
    exit
  else 
    puts "Неправильно попробуй еще раз!"
  end
end
