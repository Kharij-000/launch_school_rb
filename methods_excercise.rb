#Exercise 1 
def greeting(name)
  puts "Hi there #{name} how are you?"
end

greeting("khari")

#Exercise 3
def multiply(a, b)
  a * b
end

puts multiply(66, 262)

#exercise 4 
def scream(words)
  words = words + "!!!!"
  return
  # The puts statemnet will never be executed because once return is put in the method exits execution
  puts words
end

scream("Yippeee")

#exercise 5 
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
