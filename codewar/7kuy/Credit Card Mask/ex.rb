puts "enter str" 
str = gets.chomp!

def maskify(cc) 
fourstr = ""
grat = ""
  if cc.size > 4
    for s in -4..-1 do
      fourstr += cc[s]
    end
    for g in 0..cc.size - 5 do
      grat += "#"
    end
    return grat + fourstr
  else
    return cc
  end
end

puts maskify(str)