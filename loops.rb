# A. Print out the array elements
def progA_for(arr)
    for num in arr
        p num
    end
end


def progA_while(arr)
    i = 0
    while i < arr.length
        p arr[i]
        i += 1
    end
end


def progA_loop(arr)
    i = 0
    loop do
        if i == arr.length
            break
        end
        p arr[i]
        i += 1
    end
end


# B. Print out the array elements except 5 and 6
def progB_for(arr)
    for num in arr
        if num == 5 && num == 6
            next
        end
        p num
    end
end


def progB_while(arr)
    i = 0
    while i < arr.length
        if arr[i] == 5 && arr[i] == 6
            i += 1
            next
        end
        p arr[i]
        i += 1
    end
end


def progB_loop(arr)
    i = 0
    loop do
        if i == arr.length
            break
        end
        if arr[i] == 5 && arr[i] == 6
            i += 1
            next
        end
        p arr[i]
        i += 1
    end
end


# C. Print out array elements less than 6
def progC_for(arr)
    for num in arr
        if num < 6
            p num
        end
    end
end


def progC_while(arr)
    i = 0
    while i < arr.length
        if arr[i] < 6
            p arr[i]
        end
        i += 1
    end
end


def progC_loop(arr)
    i = 0
    loop do
        if i == arr.length
            break
        end
        if arr[i] < 6
            p arr[i]
        end
        i += 1
    end
end


#D. Print out even numbers only
def progD_for(arr)
    for num in arr
        if num.even?
            p num
        end
    end
end


def progD_while(arr)
    i = 0
    while i < arr.length
        if arr[i].even?
            p arr[i]
        end
        i += 1
    end
end


def progD_loop(arr)
    i = 0
    loop do
        if i == arr.length
            break
        end
        if arr[i].even?
            p arr[i]
        end
        i += 1
    end
end


# E. Print out odd numbers only
def progE_for(arr)
    for num in arr
        if num.odd?
            p num
        end
    end
end


def progE_while(arr)
    i = 0
    while i < arr.length
        if arr[i].odd?
            p arr[i]
        end
        i += 1
    end
end


def progE_loop(arr)
    i = 0
    loop do
        if i == arr.length
            break
        end
        if arr[i].odd?
            p arr[i]
        end
        i += 1
    end
end


# F. Print out numbers from 2 to 9
def progF_for(arr)
    for num in arr
        if num >= 2 && num <= 9
            p num
        end
    end
end


def progF_while(arr)
    i = 0
    while i < arr.length
        if arr[i] >= 2 && arr[i] <= 9
            p arr[i]
        end
        i += 1
    end
end


def progF_loop(arr)
    i = 0
    loop do
        if i == arr.length
            break
        end
        if arr[i] >= 2 && arr[i] <= 9
            p arr[i]
        end
        i += 1
    end
end


=begin G. Print out each number indicating whether it's even or odd
Ex: 1 odd
2 even
3 odd
4 even .. 
=end
def progG_for(arr)
    for num in arr
        if num.even?
            p "even"
        else
            p "odd"
        end
    end
end


def progG_while(arr)
    i = 0
    while i < arr.length
        if arr[i].even?
            p "even"
        else
            p "odd"
        end
        i += 1
    end
end


def progG_loop(arr)
    i = 0
    loop do
        if i == arr.length
            break
        end
        if arr[i].even?
            p "even"
        else
            p "odd"
        end
        i += 1
    end
end


arr = [1,2,3,4,5,6,7,8,9,10]
### call method here


