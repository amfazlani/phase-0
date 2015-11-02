# Pad an Array

# I worked on this challenge [with: Zach Schatz]

#Coditions
  #minimum size <= length of the array should return array
    #pad([1,2,3], 3) should return [1,2,3]
  #array length < min_size, pad should return a new array, padded with final value to meet the min requirement
  #pad should always return a new object
  #pad! should modify the original array

# 0. Pseudocode

# What is the input?
  #Array, min_size (non-negative integer), optional   argument of what the array should be padded with
# What is the output? (i.e. What should the code return?)
  #IF condition 1 is TRUE, the original array will be returned
  #IF condition 2 is TRUE, the original array with the padded value up to the min number of elements
# What are the steps needed to solve the problem?
  #Define methods to abide by conditions 1 and 2
#create a condtion that accepts two arguments and returns the first if the second is <= array.length
#create a second condition that runs if array.length is less than min_size then returns the first argument plus the value as many times as neccesary to meet min_size


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    pad_number = min_size - array.length
    i = 1
    loop do
      i += 1
      return array.push [value.split * pad_number]
      break i == pad_number
    end
  end
end



def pad(array, min_size, value = nil) #non-destructive
  if array.length >= min_size
    return array
  else
    pad_number = min_size - array.length
    i = 1
    loop do
      i += 1
      return array.push [value.split * pad_number]
      break i == pad_number
    end
  end
end

puts pad([1,2,3], 5, "apple")


# 3. Refactored Solution

#It was difficult for us to refactor the initial solution because the solution itself was not working entirely properly. But if I was to say anything that needs to be refactored would be the loop block within our conditional statment which I think could be done using a more specific method that would take up less space and look cleaner.

# 4. Reflection

=begin

Were you successful in breaking the problem down into small steps?

Yes, I would say that we were successful in breaking down the logic behind our code, and outlining step by step what our code needed in order to solve the problem. I think we understood the different elements that were needed, but had a problem in actually implementing the steps that we outlined in a way that gave us our desired results.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Somewhat. I think that because our pseudocode was very specefic and clear, we did not have a difficult time researching the different methods and conditionals that we would need in our code. But I think that our problem was actually implementing the steps into functional code as our final solution did not pass the tests, and did not return the result that we were looking for. For exmaple, in our pseudocode we stated that our output should be a single array, but instead we kept getting an output of a multi-demensional array.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial solution was not successful at passing the tests, and after spending a very long time in trying to figure it out as a pair, we decided that it was best that we take a break and visit office hours individually to better understand why the code we had written was not functioning properly. I think the main reason the code is not functioning properly is because while we are pushing the result of our loop block, which returns an array of the value, with the number of elmenents equal to our pad_number (min_size - array.length), we do not have any code that pushes this back into the original array, resulting in two nested arrays.

When you refactored, did you find any existing methods in Ruby to clean up your code?
We were not able to refactor because our initial solution wsa not working properly.

How readable is your solution? Did you and your pair choose descriptive variable names?
I think our code is very readable and every step makes logical sense. I don't think readability is really a problem with our code, but rather functionality.

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods modify the original data type. For example if an array was run through a destructive method, the original array would be changed. On the other hand, a non-destructive method does not modify the original data type, rather it creates a data-type, and leaves the original untouched.

=end