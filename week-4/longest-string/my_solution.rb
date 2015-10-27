# Longest String

# I worked on this challenge [by myself].

#Psuedocode

#define a method called longest_string which takes in one parameter which is an array
#order the array from smallest to largest in terms of the length of each string in the array.
#Use the sort method to order the array from smallest string to largest string by adding .length next to x and y in the code block.
#because when you use .pop it will take out only the last element in the array so you must order it in a way in which the largest length of the string is the last element in the array.
#Set the following conditions using if/else/elsif statments: when the array is empty, return nil. If this condition is false, use the pop method on the array to return the string that is the longest.


# Your Solution Below
def longest_string(my_array)
  my_array.sort! {|x,y| x.length <=> y.length}
 if my_array == []
     return nil
 else
     return my_array.pop
 end
 end

#Refactored Solution
# I do not believe this code needs any refactoring as there are no excessive conditional statments and everything that is included is neccesary for the code to run correctly.