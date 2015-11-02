# Research Methods- Accountability Group #6


i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {
  "Evi" => 6,
  "Ditto" => 3,
  "Hoobie" => 3,
  "George" => 12,
  "Bogart" => 4,
  "Poly" => 4,
  "Annabelle" => 0
}

# Person 1: Natasha Thapliyal

#Pseudocode - my_array_finding_method
# take in 2 arguments: i_want_pets (array) and a letter (string)
# check for each element of array for that letter
# make empty array that will hold elements from array with the specified letter
# if element has the letter
  # push to new array

def my_array_finding_method(array, letter)
  array_with_strings = array.map {|x| x.to_s} #convert all characters to string
  words_with_letter = []
  array_with_strings.each do |character|
    if character.include?(letter)
      words_with_letter << character
    end
  end
    p words_with_letter
end

my_array_finding_method(i_want_pets, "s")

#Pseudocode - my_hash_finding_method
#INPUT: 2 arguments: my_family_pets_ages (hash) and age (number)
#OUTPUT: new array of pet names with the age specified

#iterate through hash, looking for keys with specified age value
# output keys that match age criteria

def my_hash_finding_method(hash, age)
  pets = []
  hash.select do |name|
    if hash[name] == age
      pets << name
    end
  end
  p pets
end

my_hash_finding_method(my_family_pets_ages, 12)

# Identify and describe the Ruby method(s) you implemented.
  # For my_array_finding_method I first used .map to convert all characters into strings; .include? to find element in array that matched the criteria
  # For my_hash_finding_method I used .select to grab the key names that matched the age that was specified


# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# # accountability group how to use the methods.
# # .map { |x| x.to_s} --> converts all elements of array into a string; returns an array
# # .include?(letter) --> searches element for specified string (letter); returns true if string is in element
# # .select --> selects elements of hash based on key value (name); returns array


# # Release 3: Reflect!
# # What did you learn about researching and explaining your research to others?
# # I'd start with one method, such as .each to iterate through the array or hash, then after researching I'd find another method that better accomplishes what I want the method to do.
# # I'm sure others in my group have seen the methods I used; they're pretty simple. I learned though that it matters what input and output a particular Ruby method has. For example, for my_array_finding_method, I at first tried to using the .include? method on the array BEFORE converting all elements into strings, so I kept getting errors that the include? method cannot evaluate the number 3. That's when I realized I had to first convert the numbers in the array into strings in order for the rest of the code to work properly
# #
# #

# Person 2: Alan Alcesto
# pseudo code:
# - the method accepts two arguments, the array and the number you are modifying the array with
# - map to the element within the array that is an integer
# - add the amount modifying number to the integer

def my_array_modification_method!(i_want_pets, thing_to_modify)
  i_want_pets.map! {|element| element.is_a?(Integer)? (element + thing_to_modify) : element}
end

# pseudo code:
# - accepts two arguments, a hash and number of additional years
# - iterates through the keys and values within the hash
# - add the additional years to the values of the hash

def my_hash_modification_method!(my_family_pets_ages, thing_to_modify)
  my_family_pets_ages.each do |key, value|
    my_family_pets_ages[key] = value + thing_to_modify
  end
end

# Identify and describe the Ruby method(s) you implemented.
=begin

Array Method:
- For the array method I used a .map! to invoke the given block once for each element . I used .is_a? to map it to an integer. From there you can add the modifier to the integer.
Hash Method:
- I used .each to iterate through the keys and values of the hash, then I added the modifier to the existing values.
=end


# Person 3: Jamar Gibbs

# Psuedocode
# input: i_want_pets
# output: array sorted alphabetically
# steps: determine whats in the array (define type or types), find method to sort non destructively and alphabetically.

def my_array_sorting_method(source)
  source.sort{|x,y|x<=>y}
end

def my_hash_sorting_method(source)
  source.sort_by{|key,value| value}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 4: Clinton Weber

def my_hash_deletion_method!(source, thing_to_delete)
  source.reject! {|key| key == thing_to_delete}
  return source
end

def my_array_deletion_method!(source, thing_to_delete)
  source.reject! {|word| word.to_s.index(thing_to_delete) != nil}
  return source
end


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# I used the Enumerables method #reject! to delete every key-value pair
# from the hash when the block returns true. This needs to be denoted as
# a destructive method, so an exclamation point gets tagged on at the end
# of the name of the method. The block structure is the most
# important thing when implimenting any sort of method over a hash.
# Originally I wanted to use #delete_if but I needed a return value of nil, so I went with #reject.
# Both of these methods are enumerators that I researched using The Well-
# Grounded Rubyist and the Ruby docs.

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I learned a lot about researching methods through the "Ruby Docs for
# Newbs" article. Although the material in Ruby docs can be a bit intimidating
# at times, it's really really important to understand how to read it.

#Person 5: Amaar Fazlani

#Pseudocode- Array Splitting Method

#Step 1:Define method that takes in 1 array as argument
#Step 2:Split original array into 2 seperate nested arrays turning it into a multidemensional array
#Step 3:Form condition that creates first nested array- include all integers.
#Step 4: Form condtion that creates second nested array-include all other values- any value that is not an integer
#Step 5: Push both arrays into originial empty array
#Non-destructive: This should not alter the original data structure.

def my_array_splitting_method(source)
    results = [[],[]]
   results[0] << source.select { |x| x.instance_of? Fixnum}
   results[1] << source.select { |x| !x.instance_of? Fixnum}
   return results
end

#Psuedocode- Hash Splitting Method

#Step 1: Define a method that takes 1 hash as an input and 1 Fixnum as age
#Step 2: Separate the hash into two arrays based on the value.
#Step 3: Return two arrays
#Step 4: The first array which includes all pets who are four years of age or younger
#Step 5: The second array that includes all other pets.
#Non-Destructive: This should not alter the original data structure.

def my_hash_splitting_method(source, age)
  results = [[],[]]
  source.select do |x,y| y
    if y < age
      results[0] << [x, y]
    else
      results[1] << [x, y]
    end
  end
  return results
end


# Identify and describe the Ruby method(s) you implemented.

#For Array Method
#I used the .select method
#I used the .instance_of? method

#For Hash Method
#I used the .select method

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.

#For my_array_splitting_method:

#To begin, I used the .select method in order to pick out the elements of the array that I needed according  to my criteria, which in this case was integer values. Inside the brackets of my select method I included the .instance_of? method which is something I had never used before. This method is especially useful because it allows you to select methods based on their class, which in this case was a Fixnum integer. You can use this method to also select other classes such as Strings, Floats, Arrays, Hashes, etc. I then used the same method with an ! in order to select the values that were NOT integers.

#For my_hash_splitting_method:

#I used the select method in order to pick out the values that were less than my age value and also those that were greater than my age value. I did this by creating a conditional.

# Release 3: Reflect!

# What did you learn about researching and explaining your research to others?

#I think explaining methods that you have learned to others can be very rewarding because not only do you solidify your understanding of that method, you also are able to help your peers write code that is more effective. While I was researching, I learned something very valuable. Although, I was exposed to the .instance_of? (class) method during office hours, I went back to Ruby Docs to see why I had missed such an obvious choice for what I needed to do. It turns out that while I was only looking at the Array methods in RubyDocs this particular method was under Objects. This showed me that sometimes you have to look outside of the particular class that you are working with as certian methods may be included in Objects that you could still use.




