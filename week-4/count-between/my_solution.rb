# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.

#Pseudocode
#create a method that takes 3 arguments
#in that method make on an array, and the other two parameters -integers
#when the array that is input is empty, return a value of 0
#if the array is not empty return the number of values in the array that is greater than or equal to the second paremeter (lower_bound) and is also less than or equal to the third parameter (upper_bound)

#initial solution

def count_between(list_of_integers, lower_bound, upper_bound)
    if list_of_integers == []
        return 0
    end
   new_array = list_of_integers.select { |x| x >= lower_bound && x <= upper_bound }
   new_array.length
end

count_between([12,30,45],5,100)

#refactored solution
#I am not entirley sure that this solution needs to be refactored. I know that the if statement needs to remain in order to ensure that an empty ray will return 0. I also think that calling the select method on the array that is being passed in (list_of_integers) is the most efficent way in which to iterate over the array and select the numbers that are in between the two other integers. I think that including new_array.length at the end is neccesary because otherwise the method would not actually output the amount of integers that are in between the two numbers in the array.


