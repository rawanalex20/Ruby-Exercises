x = 1
puts x.to_s(2)

if x.even?
    puts "even"
else
    puts "odd"
end

x = x.to_f

x -= 2
puts x

x /= 2
puts x

x += 5 / 4
puts x

puts "Numerator " + x.numerator.to_s
puts "Denomerator " + x.denominator.to_s

x = x * 1 / 3
puts x

x = x.round(3)
puts x

y = x.to_s
puts y

y = y.to_i
puts y

y = y.to_f
puts y


