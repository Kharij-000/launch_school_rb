# METHOD CALLS AS ARGUMENTS 

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

#the below examples will return 91 and 23 accordingly 
puts add(56, 35)
puts subtract(91, 68)

#these can also be chained together in a method chain 
def multiply(num1, num2)
  num1 * num2
end

#chained
puts multiply(add(56, 35), subtract(91, 68))

#call stack 
