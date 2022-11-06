#Data struccctures that consist of Key => Value pairs 

#Syntax 
old_syntax = { :example1 =>  'alue1'}
new_syntax = {example2: 'Value2'}

hash_table_examples = {
  ekey1: 'kj', 
  ekey2: 'jay',
  ekey3: 'khari'
}

#modifyng hash tables 

#adding or editing exiting hashes 
hash_table_examples[:new_key] = 'New_value'

#removing  value from hash table 
hash_table_examples.delete(:new_key)

#Calling a Hash 
hash_table_examples[:ekey1]

# combining hashes 
hash_table_examples.merge!(old_syntax)#use (.merge) to make merging tmeporary
#this is a destructive method that will permantly edit the two argument hashes 

# USE_CASES for hashes vs arrays Questions to ask when picking between the two
  #does the data require a specific label 
      #if yes use a hash 
  #Does the order of the data matter
    #if true use a hash
  #Do I need a call stack structure 
    #Arrays are bet for determining a order or stack


#HASH TYPES:
  # While symbols are the most common convention for creating hash keys other data forms can be used
  {"bryan"=>"6ft"}# Strings 
  {["height"]=> "6ft"}# Arrays (meaning arrays can be stored as hash keys)
  {2.3 => "6ft"}# Floats 
  {2 => "6ft"}# Integers 
  {{hash: "key"}=> "Hash as a keuy"}# Other_HASHES
  #when usign non traditional keys you must use the old hash syntax 


#HASH METHODS
#Common Hash methods available 
  #{.key?}: Evaluates and returns a boolean based on the presence of the called key 
    hash_table_examples.key?(:ekey2) # => True 
  #{.select}: passes a block and returns key/value pairs that evaluate true 
    puts hash_table_examples.select{|key, value| value == "jay"} #will return example1:, "jay"
    puts hash_table_examples.select{|key, value| (key == :ekey1) || (value == "khari")} #checks for either expression to evaluate true
  #{.to_a}returns an array version of your hash
    puts hash_table_examples.to_a
  #{.keys} returns all keys of the selected hash
    hash_table_examples.keys #will return in array format 
  #{.values} returns all values of the called hash
    hash_table_examples.values #will return in array format
  #{.fetch}: passes a given key returns the value for that key if itexist within the hash
    #can also return key is not present if specified 
    hash_table_examples.fetch(:ekey4)
#HASH_ORDER
  #All hashes created after Ruby version 1.9 maintian the order they are stored in 
  #older versions hold no specific order 
