def first(*_arr)
  puts "this is arr #{_arr}" 
end

def second()
   arr = [1,2,3]
   res = first(*arr)
   return res
end

puts second()
