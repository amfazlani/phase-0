# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# Pseudocode
# Input: The input is an array of strings.
# Output: The output is a randomly generated string from the array that is passed in as input.
# Steps:
#Step 1: Create a class called Die
#Step 2: Initialize the class with one argument (array of strings)
#Step 3: In the Initialize method create an error that occurs if the array that is passed in is an empty array.
#Step 4: Create a method that returns the number of elements in the array that is passed in as input.
#Step 5: Create a method that returns a randomly generated element from the array that is passed in as input.


# Initial Solution

class Die
    def initialize(my_string_array)
        @string = my_string_array
        if my_string_array == []
        raise ArgumentError.new
        else
        return @string
        end
    end

    def sides
        return @string.length
    end

    def roll
        return @string.sample
    end
end

# Refactored Solution
# I was not entirely sure how I would go about factoring my initial solution as everything seems neccessary. I do think that there is a way for me to replace the if/else statement in my initialize method but my refactored solution when I tried doing this was not functional. My other two methods(sides and roll) seem to be refactored.

=begin
#Reflection

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#This die class and the other one were very similar. Most of the logic in my initialize method remained the same, other than a few changes regarding the changed conditions between that class and this class. But in terms of logic, everything was the same, the only thing that was different was how to implement that same logic with different sorts of condtions and data types.

What does this exercise teach you about making code that is easily changeable or modifiable?
It showed me that making code that is easily changeable is very powerful. Because there may be many different cases when you want to perform the same action only with a different data type or different conditions. Once you know how to perform a certain action with a set of code, and that code is easily changeable and readable, then it makes it much easier when you want to perform the same set of actions with all types of data types.

What new methods did you learn when working on this challenge, if any?
In this challenge I learned about the .sample method which is very similar to the rand method that I used in the last challenge, the only difference being you can use the sample method on an array.

What concepts about classes were you able to solidify in this challenge?
It was nice to build on the concepts solidified in the last challenge, as I had a very easy time making the changes that I knew needed to be made. I think I now have a very good understanding of how classes work and when to use them.




