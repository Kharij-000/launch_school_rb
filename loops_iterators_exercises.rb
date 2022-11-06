#exercises for the loops and iterators Section 
#excercise 1: what will the following line of code return 
x = [1,2,3,4,5]
x.each do |a|
  a + 1
end
#Answer: will return the orignal value 

# Exercise 2: Write a while loop that takes input from the user and only stops when the user says STOP
#z = gets.chomp.to_str.upcase!

#while this answer is a functioning loop it does not met the criteria of the question
#the following edits should be made  to meeth the questions criteria
c = " "
while c != "STOP"
  puts "enter some form of info"
  ans = gets.chomp
  puts "Would you like to execute again"
  c = gets.chomp.to_str.upcase!
end

#exercise 3: Write a method that counts down to zero using recursion.
def countdown(num)
  num = num - 1
  if  num >= 0
    puts num
    countdown(num)    
  end 
end

countdown(-1)
#this answer does work but it does not take into account an event in which a user inputs a number less then zero

