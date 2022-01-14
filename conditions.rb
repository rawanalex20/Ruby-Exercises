puts "a : "
a = gets.to_i
puts "b : "
b = gets.to_i # assume user input is larger than a
puts "c : "
c = gets.to_i # assume user input is larger than b

if b - a == c - b
    puts 'A ', true
end

puts "a : "
a = gets.to_i
puts "b : "
b = gets.to_i
puts "c : "
c = gets.to_i

if (b - a).abs <= 1 && (c - a).abs >= 3 && (c - b).abs >= 3
    puts 'B ', true
elsif (c - a).abs <= 1 && (b - a).abs >= 3 && (b - c).abs >= 3
    puts 'B', true
end

a = ((rand() + 10) % 100).to_s
b = ((rand() + 10) % 100).to_s

if a[0] == b[0] || a[0] == b[1] || a[1] == b[0] || a[1] == b[1]
    puts 'C', true
end

puts "first num : "
a = gets.to_i
puts "second num : "
b = gets.to_i

if a == 11 || b == 11 || (a - b).abs == 11 || a + b == 11
    print 'D ', true
else
    puts 'D ',false
end

puts "first word : "
a = gets
puts "second word : "
b = gets

if a[0] != a[a.length - 2] && a[0] != a[a.length - 2] && a.count("x") == 0 && b.count("x") == 0
    puts "E", true
else
    puts 'E', false
end

# todo replace with regix
puts "word: "
a = gets
if a.include?("a") || a.include?("e") || a.include?("i") || a.include?("o") || a.include?("u")
    puts "F ", true
else
    puts "F ", false
end

puts "score: "
while (a = gets.to_i) do
    if a > -1 && a <= 100
        if a <= 49
            puts "G ", "fails"
        elsif a > 50 && a <= 60
            puts "G ", "pass"
        elsif a > 60 && a <= 70
            puts "G ", "good"
        elsif a > 70 && a <= 80
            puts "G ", "very good"
        elsif a > 80 && a <= 90
            puts "G ", "excellent"
        elsif a > 90 && a <= 100
            puts "G ", "incredible"
        else
            break
        end
    elsif a > 100 || a < -1
        puts "Please insert a score from 0 to 100"
    end

end
