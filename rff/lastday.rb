def emu()
  humans = 1000
  machines = 1000
  loop do
    humans_rand = rand(1..10)
    machines_rand = rand(1..10)
    humans -= humans_rand
    machines -= machines_rand
    if humans <= 0 || machines <= 0
     return humans > machines ? "humans win!!" : "machines win"
    end
  end
end

puts emu
