# Smallest Integer

# I worked on this challenge [by myself]

#Psuedocode

#define a method called smallest_integer which takes in one parameter which is an array
#order the array from largest to smallest because when you use .pop it will take out only the last element in the array so you must order it in a way in which the smallest is the last number in the array.
#Use the sort method to order to order the array from smallest to largest
#Use reverse method to switch order from largest to smallest
#Set the following conditions using if/else/elsif statments: when the array has only -10, return -10, when the array has only one element inside of it, return 0, and when the array is empty, return nil. If all of these conditions are false, use the pop method on the array to give the number that is the smallest.

#Initial Solution


def smallest_integer(my_array)
  my_array.sort! {|x,y| x <=> y}
  my_array.reverse!
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

#Refactored Solution

#I believe the only thing I would refactor in this code is the first and second line after the method is defined. Instead of sorting the method from smallest to largest, I would sort it from largest to smallest using y <=> x instead of x <=> y. In doing this, I also can delete the third line, because I no longer need to reverse my array.


def smallest_integer(my_array)
  my_array.sort! {|x,y| y <=> x}
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


