#Create Accountability Groups Solo Challenge

# 0. Pseudocode

# What is the input?
#The input is an array
# What is the output? (i.e. What should the code return?)
#The output is string that includes the name of each student and the particular accountability group that they are assigned.
# What are the steps needed to solve the problem?
#Step 1: Change the array into a hash where each element in the array is a key in the hash. In this case, each student name should be a key in the newly created hash.
#Step 2: Iterate over the hash in a way that assigns a specific value to the keys (student names) with the increment of every 5 keys. This should assign the first five a specific number, the next five a different number, etc.
#Step 3: Sort the hash from smallest values to largest values. This would make sure that the hash in ordered in a logical way where every five keys have the same value.
#Step 4: Create a string that takes in every key and value from the hash and prints it to the console. Use a phrase such as "This student (key) is assigned to this accountability group number(value)"
#Each group has 4 or 5 people
#Every student should be assigned to a group with atleast 3 students

#Initial Solution

def new_acct_group
    {}
end

def add_to_list( name,group_number,hash )
  hash[ name ] = group_number
end

def remove_from_list( item, hash )
  hash.delete( item )
end

def update_group_number( name, group_number, hash )
  hash [name] = group_number
end

def in_order(hash)
  hash = hash.sort_by {|x,y| y}
end

def print_list(hash)
 puts "The accountability groups are as follows:\n"
  hash.each { |x,y| puts " #{x.capitalize} is in accountability group # #{y}.\n"}
end

acct_groups = new_acct_group
add_to_list("rob",1,acct_groups)
add_to_list("Kevin",1,acct_groups)
add_to_list("fisher",1, acct_groups)
add_to_list("Steve", 1, acct_groups)
add_to_list("Robert", 1, acct_groups)
#add_to_list remaining names in input array followed by accountability group number followed by hash name
ordered_list = in_order(acct_groups)
print_list(ordered_list)

#Refactored Solution
#I had a very tough time with writing the intial solution. The above solution is definetly not correct as it is not an automated method but rather a collection of methods that have to be used manually in order to create the Hash of student names as keys and accountability group numbers as values which was the desired result. I did not understand how to take each element of the input array and convert them into a Hash with only keys and no values. I think if I was able to figure that out and have a hash with just the student names as keys, then I would easily have been able to iterate over the new hash, and assign values to every five keys in the hash, thus making an automated system in which an accountability group number is assigned to every 5 elements(student names) of the input array. Though it is not correct,the above solution would work if a person manually input every name and accountability group number into add_to_list method.


=begin
What was the most interesting and most difficult part of this challenge?
The most difficult part of this challenge was that no matter how much I was researching the Ruby Docs, I was still having a hard time with completing the very first step I outlined in my pseudocode: "Change the array into a hash where each element in the array is a key in the hash. In this case, each student name should be a key in the newly created hash." Because I could never figure out step 1, it was very frustrating to create a workable intial solution. It was interesting that eventhough I knew exactly what I needed to do in the initial solution, I still could not figure out to translate that logic into workable code. It was also interesting because when I was writing out my steps I figured the first step would be the easiest as I would simply use .to_h to convert my array. But that did not seem to work.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
I definetely think that the pseudocode I wrote for this challenge was the best I have ever written. I think it was very clear and specific, and when I was trying to implement it into actual code, I always knew what I needed my code to do, I just could not figure out the particular methods I needed.
Was your approach for automating this task a good solution? What could have made it even better?
Since my initial solution is not automated I definetely do not think it is a good solution by any means. I think that doing this in a manual way would not only be tiresome, but it would also make it confusing as it would be hard to keep track of which students have already been assigned and which have not. I would say, though, that with this manual solution, it would be very easy to delete a student that is no longer in an accountability group.

What data structure did you decide to store the accountability groups in and why?
Originally, I wanted to store my accountability groups into a Hash because that seemed like the most logical way of doing it. Whenever you know you have two objects that are related, and you need to order them in a way that highlights their relation I think Hash is always the best way to go.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
Since I was not able to create a workable intial solution, I was not able to do much refactoring in this challenge. In my research I did learn about .select and how it can be used to pick out specific elements in an array but was not able to use that particular method to translate the selected elements in an array into keys in a hash which is what I was stuck on.

=end

