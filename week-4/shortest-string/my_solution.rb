# Shortest String

# I worked on this challenge [by myself].

#Psuedocode

#define a method called shortest_string which takes in one parameter which is an array
#order the array from largest to smallest in terms of the length of each string in the array.
#Use the sort method to order the array from smallest string to largest string by adding .length next to x and y in the code block.
#because when you use .pop it will take out only the last element in the array so you must order it in a way in which the smallest length of the string is the last element in the array.
#Use reverse method to switch order from largest to smallest
#Set the following conditions using if/else/elsif statments: when the array is empty, return nil. If this condition is false, use the pop method on the array to return the string that is the shortest.

#Your Solution Below

def shortest_string(my_array)
  my_array.sort! {|x,y| x.length <=> y.length}
  my_array.reverse!
    if my_array == []
     return nil
    else
     return my_array.pop
    end
 end

 #Refactored Solution
 #After completing the initial solution I saw that, similar to my last challenge, I was using an unneccesary method (.reverse) because I could just perform this action within my .sort code block by switching it to y.length <=> x.length, which orders the array from largest length of string to smallest length of string.

 def shortest_string(my_array)
  my_array.sort! {|x,y| y.length <=> x.length}
    if my_array == []
    return nil
    else
    return my_array.pop
 end
    end

