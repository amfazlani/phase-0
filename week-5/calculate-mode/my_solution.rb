# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Dan Andersen ]

#Pseudocode

#Input:
#Array of numbers and strings
#Output:
#Array of the most frequent values in the array that was input
# STEP 1: Go through each element of the array and count how many instances of that element there are in the array
# STEP 2: Create hash of with key as the number or string from input array and value as the number of instances of that key.
# Example hash created from step 2 mode([1,2,3,3]) => {1=>1, 2 =>1, 3=>2}
# STEP 3: Iterate over hash and determine which key has greatest value and return that key in an array
# STEP 4: IF two or more keys from the hash have the same most frequent value, your output array will contain all of them.
# Example:  mode[2,3,4,4,4,2,2] => [4,2]


def mode(array)
  frequency_hash = Hash.new(0)
  i = 0
  while i < array.length
    frequency_hash[array[i]] += 1
    i += 1
  end
  frequency_hash = frequency_hash.sort_by {|x,y| y}
  output_array = []
  frequency_hash.each{ |key, value|
  if value == frequency_hash.last[-1]
    output_array << key
  end}
end

mode([1,2,3,3,4,4])
mode(["toy", "toy", "boat", "car", "car", "train"])



# 3. Refactored Solution

def mode(array)
  frequency_hash = Hash.new(0)
  array.each do |element|
    frequency_hash[element] += 1
  end
  frequency_hash = frequency_hash.sort_by {|x,y| y}
  output_array = []
  frequency_hash.each{ |key, value|
  if value == frequency_hash.last[-1]
    output_array << key
  end }
end

mode([1,2,3,3,4,4])
mode(["toy", "toy", "boat", "car", "car", "train"])


# 4. Reflection
=begin

Which data structure did you and your pair decide to implement and why?

We decided to use hashes to sort the data because we believed it was easier to sort the data that way since the data was already seperated by keys (number or strings) and values (instances of that key). After iterating over the hash and having the keys that we needed which were those with greatest values, we could easily push those back into an array.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

I think this problem was a lot easier to break down into steps than the other challenge, primarily because the logic behind the problem was a lot simpler, and we had a better understanding of which data types, and methods we would use before we even started coding.

What issues/successes did you run into when translating your pseudocode to code?

We ran into a few problems in implementing the logic of our pseudocode into our code primarly because we were not keeping in mind that the Hash we created needed a default value or it would not work properly. In our pseudocode, we did not include this crucial step.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We mostly stuck to the iterating methods that we knew (.each, sort_by, and do/while loops) because it was easier to implement these as we were already familiar with them from previous challenges and also because we struggled so much with getting our initial solution to work. But once we had it working, we did not entirely know how we could make it shorter/cleaner.


=end
