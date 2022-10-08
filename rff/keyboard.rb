@keyboard = [
  [],%w(a b c), %w(d e f),
  %w(g h i), %w(j k l), %w(m n o),
  %w(p q r s), %w(t u v), %w(w x y z)
] 

def keyphone(number)
  result = []
  number.split('').each do |char|
    @keyboard.each_with_index do |key, index|
      key.each do |litter|
        if char != litter
          result << char
        elsif char == litter
          
        end
      end
    end
  end
end

keyphone("00022233wsdz")
