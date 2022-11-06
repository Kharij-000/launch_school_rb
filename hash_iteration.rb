#ITERATING OVER HASHES:
hash_table_examples = {
  ekey1: 'kj', 
  ekey2: 'jay',
  ekey3: 'khari'
}

hash_table_examples.each do |key, value|
  puts "One of my names is #{value}"
end

#OPTIONAL PARAMETERS:
def greeting(name, options = {})
  if options.empty?# checks if the given argument has any information stored within it 
    puts "Hi, my name is #{name}"
  else 
    puts "Hi, my name is  #{name} and I'm #{options[:age]}" +
        " years old and I live in #{options[:city]}." #allows for descriptive argumetns to be created to describe use case 
  end
end

greeting("Khari")
greeting("Khari", {age: 22, city: "Baltimore"}) #complex passing of argument 
greeting("Khari", age: 22, city: "Baltimore") #simplified Syntax 
#simplified syntax can only be used when the hash is the last argument being passed into the method 
#the simplified syntax is most commonly used in the rails framework 

 