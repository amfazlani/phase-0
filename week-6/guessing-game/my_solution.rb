# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:The input is an integer
# Output:The output varys depending on the method that is being called. If the method guess is called the out put is :high, :low, or :correct. If the method correct? is called, the output is true or false.
# Steps:
#Step 1: Create a class called GuessingGame and intialize the class to accept on argument which is an integer.
#Step 2: Define a method inside of class called guess which takes in one argument. If input number is larger than the argument input when instance class was intitialized then return :high. If input number is lower than argument return :low, if the two values are equal, return :correct.
#Step 3: Define a method called solved?. Create a condition in which the number that is input when class is initialized is compared to the nubmer that is input when guess method is called. If the two numbers are equal, return true. If they are not return false.



# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    elsif @guess == @answer
      return :correct
    end
    end

def solved?
      if @guess == @answer
        return true
      else
        return false
      end
    end

  end
#game = GuessingGame.new(10)

#p game.solved?

#p game.guess(5)
#p game.guess(20)
#p game.solved?

#p game.guess(10)
#p game.solved?

# Refactored Solution
#I am really struggling with refactoring my initial solutions and will go to office hours to figure out the best practices in doing this because often times, as was the case in this challenge, I knew that the code was a little repetitive but did not know how to make a functional solution without the repetitive code.

# Reflection
#How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#For me, methods are very much like verbs in the real-world. Instance variables are the objects that are performing those actions, or in this case methods. For example, a dog barks, and a cat meows. For each of these objects, dog and cat, an instance varaible can be created. And for each action they are performing a method could be created.

#When should you use instance variables? What do they do for you?
#You should use instance varaibles when you know that you will need to access the variable outside of the method that it is defined. This allows you to create very flexible methods that are able to access different instance varaibles depending on the action they are performing. If instance varaibles did not exist, and there were only local variables, it would make it very difficult to create a set of actions for an entire class, instance variables give us that flexibility.

#Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
#In order to use flow control, you must first know the different set of conditions that you will implement and the neccessary steps to perform if one of those conditions are true. I did not have much trouble with using if/else statements in this challenge becasue it was pretty clear what conditions needed to be implemented and the return values for each condition.

#Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#I am not entirely sure why this challenge required us to use symbols and was a little confused when I was writing out the return values which were symbols. I do know that symbols store the value in memory as opposed to strings, so perhaps this may be the reason.