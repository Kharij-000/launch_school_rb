#count down while loop version
puts "Enter a number to begin the count down"
x = gets.chomp.to_i

while x >= 0
  puts x
  #x = x - 1  (this works but can be simplified) 
  x -= 1 #simplifies code line  
end

puts "Done!"

#countdown Until loop example 
puts "Put in another number"
y = gets.chomp.to_i

until y < 0
  puts y
  y -= 1
end

puts "Done!"

#Do/While examples
loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end

#for loop example
z = gets.chomp.to_i

for i in 1..z do
  puts z - i
end

puts "Done!"

#array sequence with for loop  
o = [1,2,3,4,5,6,]
for i in o.reverse do # (.reverse) iterates over the variable in reverse order of the array it will not sort
  puts i
end 

puts "Done!"

#conditional while loops 
#introduced methods : (.odd?) (.even?)
q = 0 
while q <= 10 #expression checks if q is <= 10 
  if q.odd?# conditional to check if q is odd or even 
    puts q #if above condition is true put odd if not skip
  elsif q == 8 
    puts "#{q} You made it !!"
    break #Stops the code at 8 instead of 10
  end 
  q += 1 #add 1 to q 
end

