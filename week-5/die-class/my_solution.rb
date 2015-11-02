# Die Class 1: Numeric

# 0. Pseudocode

# Input: The input is an integer
# Output:The output is different based on the specifc method that is being called. But for each of the methods in the class, the output is also an integer.
# Steps:
#Step 1: Create a class called Die
#Step 2: Create a method within Die class with 1 argument which initializes the argument that is input
#Step 3: Within initialize method create a condition that runs when the input is less than 1. If this condition is true then it returns an ArgumentError message.
#Step 4: Create another condition that runs when the above condition is not true. This condition will return the number that was input.
#Step 5: Create a method within Die class with no arguments. This method will return the number that was initialized when instance class was created.
#Step 6: Create a method within Die class with no arguments. This method will return a random number from 1 up to and including the number that was first initialized when the instance class was created.

class Die
    def initialize(my_number)
        @number = my_number
        if @number < 1
        raise ArgumentError.new
        else
        return @number
        end
    end

    def sides
        return @number
    end

    def roll
        number = rand(1..@number)
        return number
    end
end

#Reflection

=begin

What is an ArgumentError and why would you use one?
An ArgumentError is an error that occurs when a certain specified condition in the code returns true. It is used in order to ensure that argument that is inputted is acceptable to the method that it is being run in. For example, in the Die class case. A die that has 0 sides cannot exist and would not be able to roll. Thus, it was necceesary to include a conditon that stated the number that is input must be greater than 1 and if it is not then to raise an ArgumentError.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I had never used the rand method before. It was very cool to learn how to return random integer values and it was very easy to pick up. I did not have much difficulty, the RubyDocs explained Random pretty well. It did take me a little while to realize that rand(number) would sometimes randomly return 0, so you have to specify the range.

What is a Ruby class?
A Ruby class is what defines objects in Ruby. Every object is defined by a set class each with its own methods and behaviors.

Why would you use a Ruby class?
You would use a Ruby class if you wished to create certain objects that all included certian built-in methods and behaviors, no matter what object they were. Creating classes allow you the flexibility to manipulate objects in different ways. They also allow you to create multiple objects that behave in a similar way.

What is the difference between a local variable and an instance variable?
A local variable can only be used in the scope in which it is defined. For example, if a local variable was assigned inside of a method, you would not be able to use that local variable in a different method. But instance variables are available outside of the scope of method definitions and are available thoughout the class in which they are defined. For example, above I created the instance variable @number, and used it in all of the methods inside of the class.

Where can an instance variable be used?
An instance variable can be used in the specific class or instances of the class in which it is defined. For example, @number which I defined in the class Die, can now be used in every instance of the Die class. For example, if I created a Die object using Die.new then @number would be available there as well.

=end
