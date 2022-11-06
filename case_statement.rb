#Case statement introductory example 
a = 44 

#the "a" after case would be the argumnt in this situation 
case a 
when 5 
  puts "a is 5"
when 6
   puts "a is 6"
else 
  puts "a is neither 5, nor 6 "
end

#refactored to create a varible 
b = 5

answer = case b
when 5
  "b is 5"
when 6 
  "b is 6"
else 
  "b is neither 5, nor 6"
end
#when written like this only one puts statement is required 
puts answer
