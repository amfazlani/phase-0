# Largest Integer

# I worked on this challenge [by myself].

#Psuedocode

#define a method called largest_integer which takes in one parameter which is an array
#order the array from smallest to largest because when you use .pop it will take out only the last element in the array so you must order it in a way in which the largest number is the last number in the array.
#Use the sort method block to order to order the array from smallest to largest. Remember to capitalize sort so that the value of the new array is stored into my_array.
#Set the following conditions using if/else/elsif statments: when the array has only -10, return -10, when the array has only one element inside of it, return 0, and when the array is empty, return nil. If all of these conditions are false, use the pop method on the array to give the number that is the largest.


# Your Solution Below

def largest_integer(my_array)
  my_array.sort! {|x,y| x <=> y}
if my_array == [-10]
    return -10
elsif my_array.length == 1
    return 0
elsif my_array == []
    return nil
else
    return my_array.pop
end
end

#Refactored Solutin
#Although I am not sure exactly how to do it, I can see that perhaps my conditional statements could use some refactoring. Maybe a case statement would work well here.





