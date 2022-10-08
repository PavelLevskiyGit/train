# frozen_string_literal: true

words = {
  'hello' => 'привет',
  'good' => 'хорошо',
  'today' => 'сегодня',
  'life' => 'жизнь',
  'stay' => 'стоять'
}

def ask(*keys)
  puts "Введите перевод слова #{keys[0]} или q для выхода"
  askw = gets.chomp!
  if keys[1] == askw
    true
  elsif askw == 'q'
    askw
  else
    false
  end
end

def ask_word(words)
  words.each do |key|
    res = ask(*key)
    puts 'Верно!' if res == true
    if res == 'q'
      puts 'Досвидания'
      exit
    end
    puts 'Неверно' unless res
  end
end

ask_word(words)
