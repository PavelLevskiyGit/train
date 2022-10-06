words = {
  "hello" => "привет",
  "good" => "хорошо",
  "today" => "сегодня",
  "life" => "жизнь",
  "stay" => "стоять"
}

def checkWords(words)
  for key in words do
    puts "введите перевод слова #{key[0]}"
    inp = gets.chomp!
    if inp == key[1]
      puts "Поздравляю вы ввели правильное слово"
    else 
      puts "неправильно ... правильно #{key[1]}"
    end
  end
  puts "конец"
end 

checkWords(words)
