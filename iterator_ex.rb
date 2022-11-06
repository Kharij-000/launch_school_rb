# [.each] examples One liner 
names = ['kj', 'tommy', 'ghost', 'kanan', 'Tasha', 'Angela']

names.each {|name| puts name.upcase} #everything in the curly braces is a block
puts names

#Do / end example

x = 1
names.each do |name|
  puts "#{x}, #{name}"
  x += 1
end

#Recursion
#normal method invocation
def doubler(start)
  puts start * 2
end

#method invocation with recursion
def doubler(start)
  puts start 
  if start < 10
    doubler(start * 2)
  end 
end

doubler(5)

#fibonacci recursion 
def fibonacci(number)
  if number < 2 #if the number input in the method is less then 2 it will print the number and stop 
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)# greater then 2 input -1 and input - 2 will be added together and printed
  end
end

puts fibonacci(6)