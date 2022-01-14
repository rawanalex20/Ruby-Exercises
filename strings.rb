text = "Hello Ruby World"
text = text.slice("Hello".length, text.length - 1) # return characters after "Hello"
puts text
text.prepend("Welcome to")
puts text
name = "Rawan"
text = text.sub("World", "\"#{name}\"")
puts text
text.insert(text.index("Ruby") + "Ruby".length, ",")
puts text
text.insert(text.index(",") + 1, "\t")
puts text
puts text.length
puts text.count " "
text = text.gsub(" ", '-')
puts text