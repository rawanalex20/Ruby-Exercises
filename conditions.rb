=begin
A. Write a Ruby program to check three given integers (a:smallest,b,c:largest) and return
true if the three values are equally spaced, so the difference between a and b is the
same as the difference between b and c.
=end
def progA
    print "a: "
    a = gets.to_i
    print "b: "
    b = gets.to_i # assume user input is larger than a
    print "c: "
    c = gets.to_i # assume user input is larger than b

    if b - a == c - b
        puts true
    else
        puts false
    end
end

=begin
B. Write a Ruby program to check three given integers a, b, c and return true if one of b or c
is close (difference out of a by at most 1), while the other is far, difference from both
other values by 3 or more.
=end
def progB
    print "a : "
    a = gets.to_i
    print "b : "
    b = gets.to_i
    print "c : "
    c = gets.to_i

    if (b - a).abs <= 1 && (c - a).abs >= 3 && (c - b).abs >= 3
        puts true
    elsif (c - a).abs <= 1 && (b - a).abs >= 3 && (b - c).abs >= 3
        puts true
    else
        puts false
    end
end

=begin
C. Write a Ruby program to check two given integers, each in the range 10..99, return true
if there is a digit that appears in both numbers.
=end
def progC
    print "a: "
    a = ((gets.to_i + 10) % 100).to_s
    print "b: "
    b = ((gets.to_i + 10) % 100).to_s

    if a[0] == b[0] || a[0] == b[1] || a[1] == b[0] || a[1] == b[1]
        puts true
    else
        puts false
    end
end

=begin
D. Write a Ruby program to check two given integers and return true if either one is 11 or
their sum or difference is 11 otherwise return false.
=end
def progD
    print "first num : "
    a = gets.to_i
    print "second num : "
    b = gets.to_i

    if a == 11 || b == 11 || (a - b).abs == 11 || a + b == 11
        puts true
    else
        puts false
    end
end

=begin
E. Write a Ruby program to check whether 2 strings start and end with
different letters and both of them doesn't include letter "x".
=end
def progE
    print "first word : "
    a = gets
    print "second word : "
    b = gets

    if a[0] != a[a.length - 2] && a[0] != a[a.length - 2] && a.count("x") == 0 && b.count("x") == 0
        puts true
    else
        puts false
    end
end

=begin
F. Write a Ruby program that checks whether a string contains a vowel.
=end
def progF
    print "word: "
    a = gets
    if a.match(/[aeiou]/)
        puts true
    else
        puts false
    end
end

=begin
G. Write a Ruby program that keeps getting an integer at the console less than 100 score
from the user, and exists when he inserts -1.
If he inserted a number out of range, print the message :"Please insert a score from 0 to
100".
Your program shall print out the corresponding evaluation as follows:
0-49:fail.
50-60:pass
60-70:good
70-80:very good
80-90:excellent
90-100:incredible
=end
def progG
    print "score: "
    while (a = gets.to_i) do
        if a > -1 && a <= 100
            if a <= 49
                puts "fails"
            elsif a > 50 && a <= 60
                puts "pass"
            elsif a > 60 && a <= 70
                puts "good"
            elsif a > 70 && a <= 80
                puts "very good"
            elsif a > 80 && a <= 90
                puts "excellent"
            elsif a > 90 && a <= 100
                puts "incredible"
            end
            print "score: "
        elsif a > 100 || a < -1
            puts "Please insert a score from 0 to 100"
            print "score: "
        else
            break
        end
    end
end


### Call method here
