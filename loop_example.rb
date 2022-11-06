#proper loop example 
i = 0 
#loop do 
#  i = i + 1
#  puts i
#  break #this will stop the code and continue to the next part of the program
#end

#Conditional loop example 
#loop do
#  i = i + 2
#  puts i
#  if  i == 20 
#    break
#  end
#end

#next keyword loop 
loop do
  i = i + 2 #loop starts by adding 2 to i
  if i == 4 #after each iteration it checks to see if i is 4
    next #this key word will skip to the next conditional
  end 
  puts i # prints i
  if i == 10#checks i's value again
    break 
  end
end

x = 42 
loop do 
  puts x 
  x = 2
  break
end
puts x