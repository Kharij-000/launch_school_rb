#Exercise 2
def caps(num)
  if num.length >= 10 
    puts num.upcase 
  else
    puts num
  end
end  

caps("Hello World")

#Exercise #3
def number_check
  num = 77
  if num > 100
    puts "#{num} is bigger than 100"
  elsif num >= 51 && num <= 100
    puts "#{num} is between 51 and 100"
  elsif num >= 0 && num <= 50
    puts "#{num} is between 0 and 50"
  else
    puts "Enter a valid number!!"
  end
end
