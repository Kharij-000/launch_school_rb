a = ["ghost", "tommy", "tasha", "kanan", "slim", "raina"]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9] 
#select method 
b.select {|num| num > 4}

puts ["ghost", "tommy", "tasha", "kanan", "slim", "raina"].product([1, 2, 3, 4, 5, 6])

#each iterator examples 
a.each {|n| puts n}
a.each do |g| 
  puts g + " RULES!!! "
end

#Array Exercise(1)
c = [1, 2, 3, 4, 5, 6, 7, 8, 9] 

check = gets.chomp.to_i
if c.include?(check)
  puts "yes #{check} is in this array"
else
  puts "no #{check} is not in this array"
end

names[3] = 'jody'   # => ["bob", "joe", "susan", "jody"]

a = ["ghost", "tommy", "tasha", "kanan", "slim", "raina"]
a.push('jody')
puts a

a.each_with_index{|name, ind| puts "#{name} is in postition #{ind} "}

b = [1, 2, 3, 4, 5, 6, 7, 8, 9] 
d = []

b.each do |num|
    d.push(num + 2)
end

p d 
p b
   