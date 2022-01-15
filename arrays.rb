def get_array(n)
    arr = []
    for i in 0..n - 1
        arr[i] = gets.to_i
    end
    return arr
end


def get_2d_array(rows, cols)
    arr3 = []
    for i in 0..rows - 1
        puts "row #{i}"
        arr3.append([])
        for j in 0..cols - 1
            arr3[i][j] = gets
        end
    end
    return arr
end


=begin
A. Write a Ruby program for each of the following to get it out of an array of integers.
ex:[1,2,3,4,5]
a. Max #=> 5
b. Min #=> 1
c. Count #=>5
d. Sum #=> 15
e. Multiplication of all elements #=> 120
=end
def prog1
    print "number of elements: "
    n = gets.to_i
    arr = get_array(n)
    #arr = [1, 2, 2, 6, 3, 4, 6, 11, 4, 13, 9, 10, 10, 11, 6, 1, 2, 10]

    puts "Max: " + arr.max.to_s
    puts "Min: " + arr.min.to_s
    puts "Count: " + arr.count.to_s
    puts "Sum: " + arr.sum.to_s
    product = 1
    for i in 0..arr.max - 1
        product *= arr[i]
    end
    puts "Product: " + product.to_s
end


# B. Write a Ruby program to check whether a value exists in an array using array APIs.
def prog2
    print "number of elements: "
    n = gets.to_i
    arr = get_array(n)
    print "value: "
    x = gets.to_i
    if arr.include?(x)
        puts "exists"
    else
        puts "do not exist"
    end
end


=begin
C. Write a ruby program that gets the count of each element in the array.ex: if
a=[1,1,2,2,3,3,3] the output will be result=[[1,2],[2,2],[3,3]]
=end
def prog3
    print "number of elements: "
    n = gets.to_i
    arr = get_array(n)
    count_arr = Array.new(arr.max) { |e| e = 0 }
    arr.each do |i|
        count_arr[i - 1] += 1
    end
    result = []
    for i in 0..arr.max - 1
        if count_arr[i] > 0
            result.append([i + 1, count_arr[i]])
        end
    end
    puts "result: #{result}"
end


=begin
D. Write two Ruby programs to compute the sum of elements in a given array of integers
using iterators/reducers
=end
def prog4
    print "number of elements: "
    n = gets.to_i
    arr = get_array(n)
    sum = 0
    arr.each do |i|
        sum += i 
    end
    puts "1st prog"
    puts "sum: #{sum}"
    puts "2nd prog"
    puts "sum: #{arr.collect.sum}"
end


# E. Write a Ruby program to remove duplicate elements from a given array using array APIs.
def prog5
    print "number of elements: "
    n = gets.to_i
    arr = get_array(n)
    uniq_arr = arr.uniq
    puts "unique elements: #{uniq_arr}"
end


=begin
F. Write a Ruby program to create a new array of length 2 containing the middle two
elements from a given array of integers of even length 2 or more using arrays APIs
=end
def prog6
    n = 0
    while true
        print "number of elements: "
        n = gets.to_i
        if n.odd?
            puts "enter even number "
        elsif arr.count < 2
            puts "less than 2"
        else
            break
        end
    end
    arr = get_array(n)
    # arr1 = [1, 2, 2, 6, 3, 4, 6, 11, 4, 13, 9, 10, 10, 11, 6, 1, 2, 10]
    mid = (arr.count - 1) / 2
    arr_2 = [arr[mid], arr[mid + 1]]
    puts "2 elements array: #{arr_2}"
end


=begin
G. Write a Ruby program to find the largest value from a given array of integers of odd
length. The array length will be a least 1 using array APIs.
=end
def prog7
    n = 0
    while true
        print "number of elements: "
        n = gets.to_i
        if n.even?
            puts "enter odd number "
        elsif arr1.count < 1
            puts "less than 1"
        else
            break
        end
    end
    arr = get_array(n)
    # arr2 = [2, 6, 3, 4, 6, 11, 4, 13, 9]
    puts arr2.max
end


=begin
H. Write a Ruby program to compute the sum of the numbers of a given array except the
number 17 and numbers that come immediately after a 17. Return 0 for an empty array
using array APIs.
=end
def prog8
    print "number of elements: "
    n = gets.to_i
    arr = get_array(n)
    if arr.count == 0
        puts 0
    else
        index = arr.index(17)
        sum = arr2.slice(0, index - 1).sum
        puts sum
    end
end


# I. Write a Ruby program to check whether all items are identical in a given array using array APIs.
def prog9
    print "number of elements: "
    n = gets.to_i
    arr = get_array(n)
    if arr.count < 2
        puts true
    else
        for i in 1..arr.count - 1
            if arr[i] != arr[i - 1]
                puts false
                break
            end
        end
    end
end


=begin
J. Given an input text output it transposed.
Roughly explained, the transpose of a matrix:
ABC
DEF
is given by:
AD
BE
CF
=end
def prog10
    print "number of rows: "
    rows = gets.to_i
    print "number of columns: "
    cols = gets.to_i
    arr = get_2d_array(rows, col)
    # arr = [['a', 'b', 'c'], ['d', 'e', 'f']]
    arr_transpose = []
    if arr.count > 0
        for i in 0..arr[0].count - 1
            arr_transpose.append([])
        end
    end
    for i in arr
        for j in 0..i.count - 1
            arr_transpose[j].append(i[j])
        end
    end
    puts arr_transpose
end


### call method here

