# frozen_string_literal: true

@array_one =  Array.new(10, 1)
@array_two =  Array.new(10, 1)

def shot(arr)
  sleep(1)
  select_shot = rand(0..9)
  if arr[select_shot] == 1
    arr[select_shot] = 0
    puts "Робот по индексу #{select_shot} уничножен"
  else
    puts "Промах по индексу#{select_shot}"
  end
  sleep(1)
end

def game_check?
  robots_kill_one = @array_one.count { |x| x == 1 }
  robots_kill_two = @array_two.count { |x| x == 1 }
  if robots_kill_one.zero?
    puts "Комманда 2 победила, в комманде осталось #{robots_kill_two} роботов"
    return true
  end
  if robots_kill_two.zero?
    puts "Комманда 1 победила, в комманде осталось #{robots_kill_one} роботов"
    return true
  end
  false
end

def stats
  robots_kill_one = @array_one.count { |x| x == 1 }
  robots_kill_two = @array_two.count { |x| x == 1 }
  puts "В первой комманде осталось роботов: #{robots_kill_one}"
  puts "Во второй комманде осталось роботов: #{robots_kill_two}"
end

def game
  loop do
    puts 'Комманда 1 наносит удар'
    shot(@array_two)
    exit if game_check?
    stats
    sleep 3
    puts ''
    puts 'Комманда 2 наносит удар'
    shot(@array_one)
    exit if game_check?
    stats
    sleep 3
    puts ''
  end
end

game
