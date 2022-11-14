#Exercises for introduction to Ruby book of pre requisite course 
#Extra info secction Exercises 

#Exercise 1:
  #Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
  str_list = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]
  def str_check(string)
    string.each do |str|
      if /lab/.match(str)
        puts str 
      else
      end
    end
  end
  #another way to do it 
  def str_check2(string)
    string.each do |str|
      if /lab/ =~ str
        puts str 
      else
      end
    end
  end
  str_check(str_list)
  str_check2(str_list)
#Exercise 2: WHat will the following code print out to the screen 
  def execute(&block)
    block
  end
  
  execute {puts "Hello from inside the execute method!"}
  #answer:
    #will return an obj (proc)
    #to get the method to actually output the desired it must be called
  #rewritten version
  def execute(&block)
    block.call
  end
  
  execute {puts "Hello from inside the execute method!"}
#Exercise 3:What is exception handling and what problem does it solve?
  #Answer
    #Exception Handling is the practice of bulding in desired outcomes for error within reason 
    #using the reserved words {rescue, end and begin} it is often brought up when needing to interact with unpredixtable elements like the outside world
#Exercise 4: Modify the code in exercise 2 (above) to make it work properly
  #Answer:
    def execute(&block)
      block.call
    end
    
    execute {puts "Hello from inside the execute method!"}
#Exercise 5:

#EXCERCISES SECTION 
#Exercise 1: Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
  #Answer:  
    ex1_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    ex1_array.each {|num| puts num}
#Exercise 2: Same as above, but only print out values greater than 5.
  #Answer:
    ex2_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    ex2_array.each do |num|
      if num > 5
        puts num
      else
      end
    end
#Exercise 3:Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
  #Answer:
    ex3_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    ex3_array.select {|num| num%2 != 0 }
#Exercise 4: Append 11 to the end of the original array. Prepend 0 to the beginning.
  #My_Answer: while this answer did work I Dont believe it should be used or is best practice 
    ex4_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    ex4_array.prepend(0)
    ex4_array.append(11)
    puts ex4_array
  #LS_Answer
    #Appending 
      ex4_array.push(11) #destructive method
      #----or---- 
      ex4_array << 11 #also destructive shovel method
    #PrePrend
      ex4_array.unshift(0)
#Exercise 5: Get rid of 11. And append a 3.
  #Answer:
    ex5_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    ex5_array.pop(1)
    p ex5_array
    ex5_array << 3
    p ex5_array
#Exercise 6:Get rid of duplicates without specifically removing any one value.
  #Answer:
    ex6_array = [0, 1, 2, 2, 3, 4, 5, 5, 6, 7, 8, 9, 9, 10, 11]
    puts ex6_array.uniq
#Exerise 7: What's the major difference between an Array and a Hash!
  #Answer:
    #Arrays consist of list of either strings or integers or other arrays
    #Hashes are key value pairs that store data using reference Keys generally created using symbols
#Exercise 8:Create a Hash, with one key-value pair, using both Ruby syntax styles.
  #Answer:
    ex8_hash = {:key1 => "value1"}
    ex8_hash2 = {key2: "value2"}

    p ex8_hash
#Exercise 9:Suppose you have a hash h = {a:1, b:2, c:3, d:4}
  #1. Get the value of key `:b`.
  #2. Add to this hash the key:value pair `{e:5}`
  #3. Remove all key:value pairs whose value is less than 3.5
  #Answer:
  #1
  h = {a:1, b:2, c:3, d:4}
  p h[:b]
  #2
  h[:e] = 5
  p h
  #3
  h.each do |key, value|
    value.to_f
    if value < 3.5 
      h.delete(key)
    else
    end
  end
  puts h
  #LS Answer: While the answer that i provided works its very inefficient this could have been completed in one line
    #one line version 
      h.delete_if {|key, value| v < 3.5}
    #multiline condensed 
      h.delete_if do |key, value|
        v < 3.5
      end
#Exercise 10: Can hash values be arrays? Can you have an array of hashes? (give examples)
  #Answer:
    #Arrays can be stored as hash values by both creating arrays in the hash itself or using predefined arrays as values or symbols 
    #thesame can be said in reverse as arrays can store hash data sets as well 
    array = [1,2,3,4,"butter"]
    h = {a:1, b:2, c:3, d:[1,2,3,4,5,6,7,8,], e:array} 
    puts h
#Exercise 11:Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person.
  #Sample code
    contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

    contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

    # Expected output:
    #  {
    #    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
    #    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
    #  }
  #Answer
    #After overthinking this for a considerable amount of time you looked at the answer to realize you made the issue way
    #more complicated then they needed to be below is what you should have done
    contacts["Joe Smith"][:email] = contact_data[0][0]
    contacts["Joe Smith"][:address] = contact_data[0][1]
    contacts["Joe Smith"][:phone] = contact_data[0][2]
    contacts["Sally Johnson"][:email] = contact_data[1][0]
    contacts["Sally Johnson"][:address] = contact_data[1][1]
    contacts["Sally Johnson"][:phone] = contact_data[1][2]
#Exercise 12:Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number.
  #Answer:
    contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
    ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
    contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
    contacts["Joe Smith"][:email] = contact_data[0][0]
    contacts["Joe Smith"][:address] = contact_data[0][1]
    contacts["Joe Smith"][:phone] = contact_data[0][2]
    contacts["Sally Johnson"][:email] = contact_data[1][0]
    contacts["Sally Johnson"][:address] = contact_data[1][1]
    contacts["Sally Johnson"][:phone] = contact_data[1][2]
    
    puts contacts["Joe Smith"][:email]
    puts contacts["Sally Johnson"][:phone]
#Exercise 13:Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that begin with an "s" in the following array.
  #Answer:
    arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
    arr.delete_if{|string| string.start_with? "s"}
    puts arr

    arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
    arr.delete_if do |string|
      string.start_with?("w", "s")
    end

    puts arr
#Exercise 14: Take the following array and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
  #Answer:
    a = ['white snow', 'winter wonderland', 'melting ice',
      'slippery sidewalk', 'salted roads', 'white trees']
      def nff(b)
        b.map! do |letter|
          letter.split 
        end
        b.flatten!
        #puts b# the above map function will not actually edit the targeted list
      end
    nff(a)
    p a
#Exercise 16 CHALLANGE!!!:In exercise 11, we manually set the contacts hash values one by one. Now, programmatically loop or 
#iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.
  #Answer:
  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
  contacts = {"Joe Smith" => {}}
  contacts.each do |hash|
    if hash.key?(:email)
    else
      hash{email:1}
    end

  puts contacts
   