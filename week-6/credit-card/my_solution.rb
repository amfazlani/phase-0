# Class Warfare, Validate a Credit Card Number



# Pseudocode

# Input: 16-digit integer from user
# Output: True or False for check_card method
# Steps:
# Step 1: Turn input integer into string
# Step 2: Pass string items into an array
# Step 3: Split initial array into 2 arrays - one for odd_indexed items and another for even_indexed items
# Step 4: Iterate through the even_indexed array and double every value
# Step 5: Check each object in even_indexed array - if its >=10, split object into two different objects/elements
# Step 6: Join odd_indexed array and even_indexed array. Then sum all objects
# Step 7: If total is a multiple of 10, you have a valid creditcard number so return true. If not, then return false.
#Step 8: In class, include argumenterror if input number < 16

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
 #   @number = number
    if number.to_s.length != 16
      raise ArgumentError.new("That is not a valid credit card number")
    else
      @number = number.to_s.split("")
    end
  end


  def check_card
    odd_array = []
    even_array = []
    @number.each_index { |x|
      if x % 2 == 0
        even_array[x] = @number[x].to_i * 2
      else
        odd_array[x] = @number[x].to_i
      end
     }
    p even_array.compact!
    p odd_array.compact!

    new_even_array = []
    even_array.each { |x|
      if x >= 10
        split_array = x.to_s.split("")
        new_even_array = new_even_array + split_array
      else
        new_even_array << x
      end
    }
    sum_even = 0
    new_even_array.each { |x|
      sum_even = sum_even + x.to_i
    }

    sum_odd = 0
    odd_array.each { |x|
      sum_odd = sum_odd + x.to_i
      }
    p sum_even
    p sum_odd

    if (sum_even + sum_odd) % 10 == 0
      p true
    else
      p false
    end

  end

end


#my_credit = CreditCard.new(2222222222223456)
#my_credit.check_card

#check_credit = CreditCard.new(4563960122001999)
#check_credit.check_card

# Refactored Solution
#We had a hard time in refactoring our initial solution because it took us so long to find a working solution and we were not sure how we would modify it to be shorter but still be functional. I am also having a little difficult time refactoring many of my solutions because while after working on it for a while am able to come up with a workable solution such as the one in this challenge, but I am never quite sure what to replace because it ends up not working after I make any small changes. I am going to be visiting office hours this week to work specifcally on refactoring.


=begin
# Reflection
What was the most difficult part of this challenge for you and your pair?
For us, the most difficult aspect of this challenge was all the steps that we needed to complete. In most challenges, atleast up to this point, it seemed there were 3 or 4 main steps. This seemed like it was much more than that and it kind of got us a little confused about the order in how we should go about solving the problem.

What new methods did you find to help you when you refactored?
I learned about the .each_index which I had never used before. Also, .compact was a new one that I had nnot used before this challenge.

What concepts or learnings were you able to solidify in this challenge?
I was able to really solidify my understanding of how to take a very complex task such as figuring out if a credit card number is valid, and breaking it into very small bite-size pieces and working through the problem step by step.
=end

