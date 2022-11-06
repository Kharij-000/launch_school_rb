#example 1 outputs 7 after eveluating the expression
def add_three(number)
  number + 3
end
#returns 7 because no implicit retunr exist before the expression evaluation
returned_value = add_three(4)
puts returned_value

#example 2 returns 7 instead of 11 because there is an implicit return on line 11
def add_three(number)
  return number + 3
  #stops here does nmot return the expresion below due to implicit return
  number + 4
end 

returned_value = add_three(4)
puts returned_value

def just_assignment(number)
  puts number + 3
end

just_assignment(4)

#the below example shows mehod chaining where the times method is looped with new defined method
def add_three(n)
  n + 3 
end

add_three(7).times {puts 'this should be printed 8 times'}

#another smapll example of method chaining
puts "hi there".length.to_s

#to incorperate puts statements into metod chaining mirrror the following 
def add_three2(num)
  new_num = num + 3
  puts new_num
  new_num
end

add_three2(5).times {puts "this should work?"}

