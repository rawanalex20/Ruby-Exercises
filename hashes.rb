# Gets all employees name
def progA1(hash)
    arr_names = []
    hash.each_value do |value|
        arr_names.append(value[:name])
    end
    puts "Names: #{arr_names}"
end


# Gets all employee IDs ex:[10,21,113,...]
def progA2(hash)
    arr_ids = []
    hash.each_key do |key|
        arr_ids.append(key)
    end
    puts "IDs: #{arr_ids}"
end


# Gets employees with the highest salary in an array along their ID
def progA3(hash)
    max_sal = 0
    hash.each_value do |value|
        if value[:salary].to_i > max_sal
            max_sal = value[:salary]
        end
    end
    highest_sal_hash = {}
    hash.each do |key, value|
        if value[:salary] == max_sal
            highest_sal_hash[key] = value
        end
    end
    puts "Highest salaries: #{highest_sal_hash}"
end


# Gets employees with lowest salary in a hash keeping their IDs
def progA4(hash)
    min_sal = max_sal
    hash.each_value do |value|
        if value[:salary] != nil && value[:salary] < min_sal
            min_sal = value[:salary]
        end
    end
    lowest_sal_hash = {}
    hash.each do |key, value|
        if value[:salary] == min_sal
            lowest_sal_hash[key] = value
        end
    end
    puts "Lowest salaries: #{lowest_sal_hash}"
end


# Gets average salaries
def progA5(hash)
    sum = 0
    count = 0
    hash.each_value do |value|
        if value[:salary] != nil
            sum += value[:salary]
            count += 1
        end
    end
    avg = 0
    if count > 0
        avg = sum / count
    end
    puts "Average: #{avg}"
end


# Remove employees with nil salary.
def progA6(hash)
    puts "hash count before: #{hash.count}"
    hash.each do |key, value|
        if value[:salary] == nil
            hash.delete(key)
        end
    end
    puts "hash count after: #{hash.count}"
end


# Gets hash a new hash with uniq employees (remove duplicate)
def progA7(hash)
    uniq_hash = {}
    hash.each do |key, value|
        unless uniq_hash.has_value?(value)
            uniq_hash[key] = value
        end
    end
    puts "hash: #{hash}"
    puts "Unique hash: #{uniq_hash}"
end


=begin
Write a Ruby program to find most occurred item in a given array along the elements
frequency:
ex:Original array:
[10, 20, 30, 40, 10, 10, 20]
Frequency of numbers:
{10=>3, 20=>2, 30=>1, 40=>1}
=end
def progB
    # enter array
    print "number of elements: "
    n = gets.to_i
    arr = []
    for i in 0..n - 1
        arr[i] = gets.to_i
    end

    # calculate frequency
    freq = {}
    arr.each do |i|
        if freq.has_key?(i)
            freq[i] += 1
        else
            freq[i] = 1
        end
    end
    puts "Frequency of numbers: ", freq
end


Employees = {
    10=>{name:"Ahmed",salary:1000},
    21=>{name:"Mohamed",salary:2000},
    113=>{name:"Mahmoud",salary:5000},
    4=>{name:"Yassin",salary:3000},
    52=>{name:"Taha",salary:4000},
    102=>{name:"Khadija",salary:nil},
    64=>{name:"Sara",salary:5000},
    37=>{name:"Nadine",salary:5000},
    88=>{name:"Doaa",salary:4000},
    90=>{name:"Iman",salary:4000},
    103=>{name:"Khadija",salary:1000},
    12=>{name:"Kholod",salary:nil},
    15=>{name:"Said",salary:nil},
    38=>{name:"Nadine",salary:5000},
    89=>{name:"Doaa",salary:4000},
    91=>{name:"Iman",salary:4000},
    104=>{name:"Khadija",salary:1000},
    17=>{name:"Kholod",salary:nil},
    14=>{name:"Said",salary:nil},
}

# call method here
# ex: progA1(Employees), progB()

