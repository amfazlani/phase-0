#Splitting Data
#Person 5 Solution: Amaar Fazlani


#Pseudocode
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


#Psuedocode
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




