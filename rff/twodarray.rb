arr = [
  ["a","b","c"],
  ["d","e","f"],
  ["g","h","i"]
]

0.upto(2) do |i|
  0.upto(2) do |j|
    print arr[i][j]
  end
end 

puts""
print "new array"
puts ""

arr2 = [
  %w(a b c),
  %w(a b c),
  %w(a b c)
]

arr2.each do |row|
  row.each do |col|
    print col
  end
end
