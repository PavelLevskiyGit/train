hash = {
"I"=>1,
"V"=>5,
"X"=>10,
"L"=>50,
"C"=>100,
"D"=>500,
"M"=>1000
}

puts "input string IVXLCDM"
str = gets.chomp!
accum = 0
for i in 0..str.size do
  accum = accum + hash[str[i]].to_i
end
puts accum