print "a : "
a = gets.to_i
print "b : "
b = gets.to_i # assume user input is larger than a
print "c : "
c = gets.to_i # assume user input is larger than b

if b - a == c - b
    puts 'A. '+ true.to_s
else
    puts 'A. '+ false.to_s
end

print "a : "
a = gets.to_i
print "b : "
b = gets.to_i
print "c : "
c = gets.to_i

if (b - a).abs <= 1 && (c - a).abs >= 3 && (c - b).abs >= 3
    puts 'B. ' + true.to_s
elsif (c - a).abs <= 1 && (b - a).abs >= 3 && (b - c).abs >= 3
    puts 'B. ' + true.to_s
else
    puts 'B. ' + false.to_s
end
print "a: "
a = ((gets.to_i + 10) % 100).to_s
print "b: "
b = ((gets.to_i + 10) % 100).to_s

if a[0] == b[0] || a[0] == b[1] || a[1] == b[0] || a[1] == b[1]
    puts 'C. ' + true.to_s
else
    puts 'C. ' + false.to_s
end

print "first num : "
a = gets.to_i
print "second num : "
b = gets.to_i

if a == 11 || b == 11 || (a - b).abs == 11 || a + b == 11
    puts 'D. '+ true.to_s
else
    puts 'D. '+ false.to_s
end

print "first word : "
a = gets
print "second word : "
b = gets

if a[0] != a[a.length - 2] && a[0] != a[a.length - 2] && a.count("x") == 0 && b.count("x") == 0
    puts "E. " + true.to_s
else
    puts 'E. ' + false.to_s
end

print "word: "
a = gets
if a.match(/[aeiou]/)
    puts "F. " + true.to_s
else
    puts "F. " + false.to_s
end

print "score: "
while (a = gets.to_i) do
    if a > -1 && a <= 100
        if a <= 49
            puts "G. " + "fails"
        elsif a > 50 && a <= 60
            puts "G. " + "pass"
        elsif a > 60 && a <= 70
            puts "G. " + "good"
        elsif a > 70 && a <= 80
            puts "G. " + "very good"
        elsif a > 80 && a <= 90
            puts "G. " + "excellent"
        elsif a > 90 && a <= 100
            puts "G. " + "incredible"
        end
        print "score: "
    elsif a > 100 || a < -1
        puts "Please insert a score from 0 to 100"
        print "score: "
    else
        break
    end

end
