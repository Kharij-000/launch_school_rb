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
#Exercise 3:
