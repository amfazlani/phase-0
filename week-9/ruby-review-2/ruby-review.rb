# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
#Create a class called PezDispenser which takes in 1 argument that is an array.
#Create a method that takes in one argument and adds that item to the original array that was passed into the class.
#Create a method that returns a random item from the array and then deletes that item from the original array.
#Create a method that takes in one argument and deletes that item from the original array.
#Create a method that returns the length of the array.
#Create a method that prints out the items in the array.


# Initial Solution

class PezDispenser
 attr_accessor :pez

def initialize(pez)
    @pez = pez
end


def add_pez(item)
  @pez << item
end

def get_pez
    sample_pez = @pez.sample
    puts sample_pez
    @pez.delete(sample_pez)
end

def remove_pez(item)
  @pez.delete(item)
end

def pez_count
    @pez.length
end

def see_all_pez
   puts @pez
end

end


# my_pez = PezDispenser.new(["Cherry","Chocolate","Strawberry"])
# # my_pez.pez = ["Rasberry","Peppermint"]
# # my_pez.add_pez("Grape")
# # my_pez.remove_pez("Cherry")
# # my_pez.pez_count
# # my_pez.get_pez
# # my_pez.pez_count
# my_pez.see_all_pez






# Refactored Solution




# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"



=begin
# Reflection

What concepts did you review in this challenge?
In this challenge, I reviewed how to use User Stories and create code that does the proper functions that are outlined in the user stories. For this particular challenge, I also reviewed how to create classes, initialize variables, and create methods to manipulate those variables and objects.

What is still confusing to you about Ruby?
I feel that I have a good understanding of how to create a class and manipulate objects and variables which is what this challenge covered. I still do not know how to refactor this in the most effective way though, as the methods are not excessive and are mostly one line of code.
What are you going to study to get more prepared for Phase 1?
I had forgotten a little bit about the use of attr_accessor and had to refresh myself on that. But overall, I feel pretty confident in terms of understanding the concepts covered in this challenge and creating classes on my own.
=end

