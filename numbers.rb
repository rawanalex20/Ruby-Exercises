x = 1

# A. Print out the binary presentation of 1
puts x.to_s(2)

# B. Print out whether it's even or odd
if x.even?
    puts "even"
else
    puts "odd"
end

# C. Subtract 2, print the result
x -= 2
puts x

# D. Divide the result by 2,print the result
x = x.to_f
x /= 2
puts x

# E. Add 1/1/4, print the result
x += Rational("5/4")
puts x

# F. print the numerator and denominator of result
puts "Numerator: #{x.numerator.to_s}"
puts "Denomerator: #{x.denominator.to_s}"

# G. Multiply by 1/3 , print the result
x = x * 1 / 3
puts x

# H. Round to 3 decimal places, print the result
x = x.round(3)
puts x

# I. Save the result as a string y, print the result
y = x.to_s
puts y

# J. Convert y to integer,print it
y = y.to_i
puts y

# K. Convert y to decimal,print it
y = y.to_f
puts y


