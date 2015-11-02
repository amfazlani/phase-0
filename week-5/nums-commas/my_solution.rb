# Numbers to Commas Solo Challenge

# 0. Pseudocode

# What is the input?
#The input is a positive integer
# What is the output? (i.e. What should the code return?)
#The output is a integer that is seperated by commas.
# What are the steps needed to solve the problem?
#Need to create conditional statments that take an integer between one min number and one max number and then return the amount of commas needed.

# 1. Initial Solution
def separate_comma(my_number)
  if my_number < 1000
    my_number.to_s
  elsif my_number >= 1000 && my_number <= 9999
    my_number.to_s.insert(1,",")
  elsif my_number >= 10000 && my_number <= 99999
    my_number.to_s.insert(2,",")
  elsif my_number >= 100000 && my_number <= 999999
    my_number.to_s.insert(3,",")
  elsif my_number >= 1000000 && my_number <= 9999999
    new_number = my_number.to_s.insert(1,",")
    new_number.to_s.insert(5,",")
  elsif my_number >= 10000000 && my_number <= 99999999
    new_number = my_number.to_s.insert(2,",")
    new_number.to_s.insert(6,",")
  end
end

# 2. Refactored Solution
#I was not entirely sure how I should go about refactoring my initial solution. Just from looking at it I could see that it is definetely excessive with so many if/eslif statments. But I did not know a different way to establish the min_value and max_value conditionals. I also think that when I was adding a comma according to the different conditions, it was repitious as I had to keep using the .insert method for each specific condition.

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
First, I looked at the input and output. Seeing that my input was an integer and my ouput was a string I knew that I would be converting integer to strings. Then I broke down the problem into a smaller step which included my conditional statements. While my pseudocode was unusally short in this challenge, I think it gave me a clear idea of how to go about writing my code which would be a combination of if/elsif statments that compared an integer between a min value and max value.

Was your pseudocode effective in helping you build a successful initial solution?
Yes, I think that after having my pseudocode, it was pretty clear that the bulk of my code would include conditional statments which it did. I do think that I was a little general in terms of adding commas according to those conditions as it took me a little while to research the .insert method and implement the commas where they were needed.

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
I was actually not able to write a functional refactored solution as I was having a difficult time in figuring out which parts of my initial solution I could condense as I think the mutiple if/elsif statements were neccesary to calculate the number of commas needed. In my initial solution, I used the .insert method followed by the index value of my string and then a comma, in order to add the commas where they were needed for each condition. I think there were certain lines that seemed unneccesary. For example, "new_number = my_number.to_s.insert(1,",") and then on the second line new_number.to_s.insert(5,","). This is where I needed to include two commas, but I was not sure how I could do that without first inserting the first comma and then saving that into a variable and then adding on the second comma for second index value.

How did you initially iterate through the data structure?
I used conditional statments based on the min_value and max_value and then converted my integer into a string followed by invoking the .insert method and then specifying the index value of the string where I wished to add a comma.

Do you feel your refactored solution is more readable than your initial solution? Why?
I think that my intial solution is atleast readable, but I think that it is definetely excessive. I think that this solution could definetely be condensed and written a lot cleaner. I hope that going to office hours would give me a good idea of how to write code that is not only shorter and more readable, but also less excessive.
=end
