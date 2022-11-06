#Purpose: Determines the age of the user and gives thm their age in 10 year increments.

#initial message to user 
puts "Hi there please enter your age."
age = gets.chomp.to_i

#Conditional output 
puts "You are #{age} years old."
puts "In 10 years you will be:"
puts age + 10
puts "In 20 years you will be:"
puts age + 20
puts "In 30 years you will be:"
puts age + 30
puts "In 40 years you will be:"
puts age + 40
