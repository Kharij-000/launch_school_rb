family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

hash_table_examples = {
  ekey1: 'kj', 
  ekey2: 'jay',
  ekey3: 'khari'
}

# my answer => family.select{|k, v| (k == :sisters)|| (k == :brothers)}
#correct answer => 
#immediate_family = family.select do |k, v|
#  k == :sisters || k == :brothers
#end
#arr = immediate_family.values.flatten
#p arr
#should have flattened out the  the array and created a variable for the selection of the methods and gone with your first instinct and used the do/end syntax

#Exercise 2.
  #ilistrate the difference between merge and merge!

  merge_temp = hash_table_examples.merge(family)

  p merge_temp

  p "this is after a temporary mutation" 
  p hash_table_examples
  p family

  merge_perm = hash_table_examples.merge!(family)
  p merge_perm

  p "this is after a permanate mutation" 
  p hash_table_examples
  p family

  family.each { |k, v| puts k} 
  family.each{|k, v| puts v}
  family.each do |k, v|
    puts k
    puts v
  end


person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
p person[:name]
puts "The persons name is #{person[:name]}"

#exercise 5
  #What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

  #my answer 
  def check(hash, value)
    if hash.select{|k, v| (v = value)} 
      puts "yes #{value} is present in the chosen hash"
    else 
      puts "Sorry #{value} is not present in the specified hash"
    end
  end
    
  check(person, 'web developer')

  #real answer
  if opposites.value?("negative")
    puts "Got it!"
  else
    puts "Nope!"
  end

  #my simplified answer 
  def check_simp(hash, value)
    if hash.value?(value)
      puts "yes #{value} is present in the chosen hash"
    else 
      puts "Sorry #{value} is not present in the specified hash"
    end
  end
  check_simp(person, "Bob")

