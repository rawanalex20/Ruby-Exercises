text = "Hello Ruby World"

# A. Remove "Hello" , print the text
text = text.slice("Hello".length, text.length - 1) # return characters after "Hello"
puts text

# B. Add "Welcome to" to the beginning, print the text
text.prepend("Welcome to")
puts text

# C. Replace "World" by your name, print the text
name = "Rawan"
text = text.sub("World", "#{name}")
puts text
# D. Put your name between quotes , print the text
text = text.sub(name, "\"#{name}\"")
puts text

# E. Insert a "," after the word "Ruby", print the text
text.insert(text.index("Ruby") + "Ruby".length, ",") # find "Ruby" and insert "," after it
puts text

# F. Insert a tab after the coma, print the text
text.insert(text.index(",") + 1, "\t")
puts text

# G. Count the number of characters, print the count
puts text.length

# H. Count number of spaces, print the count
puts text.count " "

# I. Replace the text spaces by "-", print the text
text = text.gsub(" ", '-')
puts text

