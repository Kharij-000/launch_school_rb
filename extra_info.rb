#EXTRA SRUFF!!!
#All topics in this file have enough infor on them to write a book on it 
#these ]are suface level desriptions 

#REGEX
#GENERAL DESCRIPTION
  #Stands for regular expression (sequence of characters that form pattern rules and is applied to a string )
  #Examples of some rules 
    #Check if the pattern "ss" appears in the string "Mississippi".
    #Print out the 3rd word of each sentence from a list of sentences.
    #Find and replace all instances of "Mrs" with "Ms" in a sentence.
    #Does a string start with "St"?
    #Does a string end with "art"?
    #Does a string have non-alphanumeric characters in it?
    #Are there any whitespace characters in the string?
    #Find and replace all non-alphanumeric characters in a string with "-".
  #Creating regular expressions
    "powerball" /b/#Syntax
    #example above finds the position or indexof the specified characters within the string
    def regex_checker(string)
      if string =~ /yes/ #Genaric syntax
        puts "contained"
        else
        puts "not contained"
        end
      end
      regex_checker("y")
  #Match method
    #Using the {MatchData} object to act as the boolean in your program
    def match_check(string)#faster method
      if /yes/.match(string)
        puts "contained"
      else
      puts "not contained"
      end
    end
    match_check('yes sir')
  #Use Cases 
    #best used for when you encounter a string matching problem
#RUBY STANDARD CLASSES 
  #Description 
    #when needing to complete specific operations within a program 
    #before implementing them on your own attempt to look within the standard classes already available to ruby first
    #premade methods and libraries can make perfomring complex actions much simpler 
  #Example:
    puts Math.sqrt(888)#built in function to determine the square root of a number 
    puts Math::PI #Displays the built in math constant for pi
    #in the above examples {Math}  is the built in class nd {.sqrt}is a built in method for that library
    puts Time.new(2000, 8, 29)#if this is defined as a Varible you can check the day it occured with timws built in methods {.day}
    #syntax goes as follows: Time.new(Year, Month, Day)
#VARIABLES AS POINTERS
  #Example
    a = "hi there"
    b = a
    puts a
    a = "not here"
    puts b
    puts a
    a = "hi there" #assigns the a to this location 
    b = a #assigns b to the same location as a
    a << ", Bob" #{<<} in this example mutates the variable a instead of creating a new one 
  #{.uniq}
    a = [1, 2, 3, 3]
    b = a
    c = a.uniq # Filters through a list to only selct unique values No Repaeats 
    #Adding an exclamation point to this makes it permantly alter [a]
    puts c
    puts a
    puts b
  #{map}
    def test(b)
      b.map {|letter| "I like the letter: #{letter}"}
      puts b# the above map function will not actually edit the targeted list
    end
    
    a = ['a', 'b', 'c']
    test(a)
#BLOCKS PROCS & LAMMBDAS 
  #Description: The practice of passing blocks through methods in place of variables or more common parameters 
  #Example: passing blocks 
    def take_block(&block)#the (&) is needed beforee naming the block paramerter
      block.call
    end
    #executes the block being called immedietly 
    take_block do
      puts "Block being called in the method!"
    end
    
    def help(number, &block) #passes the number argument then ealuates the block "&block" must be the last argument
      block.call(number)#just calls the block labled help 
    end

    puts("1.2.3..44.5.6.7.8.785")
    #block  segmant does not need to be dirextly attached to the initial defnition
    number = 42
    help(number) do |num| # "help" in this instance points to a specific area 
      puts "Block being called in the method! #{num}"
    end
  #Example: Procs
    #Definition: blocks wrapped in "proc objects" (refrence later) and stored in variables 
    #code example (Generic):
      talk = Proc.new do #defines the proc 
        puts "I am talking." #actions to be executed
      end
      
      talk.call #calls the proc like calling a block
    #Code Example(Taking parameters):
      talk = Proc.new do |name| #define arguments in the initial argument similar to "each" methods 
        puts "I am talking to #{name}" #appends the argument using the bracket syntax
      end

      talk.call "Khari" # argument specified in quotes without parenthasese
    #Code example (Passing Procs into Methods):
      def take_proc(proc)#Defines method called on line 124
        [1, 2, 3, 4, 5].each do |number| #function of the method continued on line 116 
          proc.call number # I belive the "proc" (lowercase) is defining a block named proc
        end
      end
      
      proc = Proc.new do |number|
        puts "#{number}. Proc being called in the method!"
      end
      
      take_proc(proc)
#EXCEPTION HANDLING
  #Description:
    #process that deals with errors in predictable ways 
    #reserved words: {rescue} {begin} {end} {Exception(class)}
      #begin : Perform dangerous action
      #rescue : perform this action if the peration fails 
      #end
  #Use case 
    #mainly used when program needs to interact with the outside world or things that ccan behave un an unpredictable manner 
      #nil values prsent more common scenarios where EH is needed 
        #example(Generic)
          names = ['bob', 'joe', 'steve', nil, 'frank'] #array contains nil

          names.each do |name|
            begin
              puts "#{name}'s name has #{name.length} letters in it."
            rescue # when the program cannot interact with the targeted argument it usese the rescue like an if statement 
              puts "Something went wrong!"
            end
          end
        #example(inline)
          zero = "KHari"
          puts "Before each call"
          zero.each { |element| puts element } rescue puts "Can't do that!" #cannot call each on anything other than an array 
          puts "After each call"
        #example (pre existing error fix): REVISIT AFTER OBJ ORIENTED PRO.
          def divide(number, divisor)
            begin
              answer = number / divisor
            rescue ZeroDivisionError => e
              puts e.message
            end
          end
          
          puts divide(16, 4)
          puts divide(4, 0)
          puts divide(14, 7)
#EXCEPTIONS & STACK TRACES
  #Description 
    #treats excceptions as errors 
    #When exceptions are raised execution is halted and the program terminates 
  #Ruby Built in eroor Types:
    StandardError
    TypeError # invalid class types being combined
    ArgumentError
    NoMethodError
    RuntimeError
    SystemCallError
    ZeroDivisionError
    RegexpError
    IOError
    EOFError
    ThreadError
    ScriptError
    SyntaxError
    LoadError
    NotImplementedError
    SecurityError
  #Error Example ccode(1): 
    def greet(person)
      puts "Hello, " + person #adding (.to_s) would solve the error
    end
    
    greet("John")
    greet(1)
    #attempts to add a variable and an integer together without changing the type 
  #error example 2 :
    def space_out_letters(person)
      return person.split("").join(" ")#error originates here because split is only accepted by strings as arguments 
    end
    
    def greet(person)
      return "H e l l o, " + space_out_letters(person)
    end
    
    def decorate_greeting(person)
      puts "" + greet(person) + ""
    end
    
    decorate_greeting("John")
    decorate_greeting(1)
#METHOD DEFIINITION ORDER:
  #
  #The call stack methods works where as long as a method has been defined before calling it the method will execute 
  def top
    bottom
  end

  def bottom
    puts "Reached the bottom"
  end

  top
#end of file