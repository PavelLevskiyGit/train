# frozen_string_literal: true

weapon = {
  'лопата' => 1..3,
  'трактор' => 4..7,
  'устоновка' => 7..10
}

brigads = {
  'Бригада 1' => 30,
  'Бригада 2' => 30
}

def choise(*weap)
  res = weap[rand(0..2)]
  { res[0] => res[1] }
end

def progress(brigads, weapon)
  state_choise = choise(*weapon)
  summary = rand(state_choise.values[0])
  puts "Бригада #{brigads} копает инструментом #{state_choise.keys}"
  50.times do |_i|
    print '.'
    sleep rand(0.05..0.1)
  end
  puts ''
  puts "Бригада #{brigads} выкопала #{summary} картошин !"
  summary
end

def game(weapon, brigads)
  loop do
    res_brig_one = progress(brigads.keys[0], weapon)
    res_brig_two = progress(brigads.keys[1], weapon)
    brigads['Бригада 1']  = brigads.values[0] - res_brig_one
    brigads['Бригада 2']  = brigads.values[1] - res_brig_two
    next unless (brigads['Бригада 1']).negative? || (brigads['Бригада 2']).negative?

    puts 'Выкопали!'
    result = brigads['Бригада 1'] < brigads['Бригада 2'] ? 'Бригада 1' : 'Бригада 2'
    puts "Победила: #{result}!"
    exit
  end
end

game(weapon, brigads)
