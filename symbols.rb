symbol = :welcome_to_ruby

# A. Checks whether it starts with 'wel' or 'to' or 'zzz'
puts symbol.match?(/wel|tl|zzz/)

# B. Checks whether it ends with 'by' or 'zy'
puts symbol.match?(/by$|zy$/)

# C. Prints out the next symbol. Ex: :welcome_to_rubz
puts symbol.next

# D. Prints out the number of letters excluding the special characters.
puts symbol.to_s.gsub(/[^0-9A-Za-z]/, '').length

# E. Prints out the symbol capitalized then return it back to its original case
puts symbol.capitalize
puts symbol

# F. Print out the symbol converted to string, then print it back as symbol
symbol = symbol.to_s
puts symbol
symbol = symbol.to_sym
puts symbol

# G. Create prints an array of symbols out of each letter ex: arr=[:w,:e,:l,:c,:m,:o,....]
arr = []
for i in 0..symbol.length - 1
    arr.append(symbol[i].to_sym)
end
puts "#{arr}"