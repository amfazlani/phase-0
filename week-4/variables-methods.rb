#Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.


puts "What is your first name?"
name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Nice to meet you #{name} #{ last_name}"


#Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number

puts "What is your favorite number?"
number = gets.chomp
my_number = number.to_i + 1
puts "#{my_number} is a bigger and better number"
=begin

How do you define a local variable?
  In order to define a local varable, one must create a variable name that must start with a lowercase letter and then place the = sign followed by the value that the variable is supposed to hold.

How do you define a method?
  In order to define a method, one must use the keyword def followed by the name of the method. The keyword end should be used to end the method definition.

What is the difference between a local variable and a method?
  The difference between a local varaible and a method is that a variable is assigned to a specific value whereas a method is used to perform a certain action.

How do you run a ruby program from the command line?
  In order to run a ruby file, you must type ruby followed by the name of the file.

How do you run an RSpec file from the command line?
  In order to run an Rspec file, you must type rspec followed by the name of the rspec file.

What was confusing about this material? What made sense?
  Overall, I think this challenge was relatively simple, and I did not have that hard of a time writing the actual code. I do think I have a much better understanding of methods and the ways in which they are used and constructed.

=end

# https://github.com/amfazlani/phase-0/blob/master/week-4/math/my_solution.rb
# https://github.com/amfazlani/phase-0/blob/master/week-4/address/my_solution.rb


