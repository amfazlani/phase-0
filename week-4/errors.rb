# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase


=begin

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
=end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The name of the file with the error is errors.rb
# 2. What is the line number where the error occurs?
#   The error is on line #16

# 3. What is the type of error message?
#   It is a syntax error

# 4. What additional information does the interpreter provide about this type of error?
#   It was not expecting the end of input and was expecting the keyword_end
# 5. Where is the error in the code?
#    The error in the code is at the very end of the code after the end keyword
# 6. Why did the interpreter give you this error?
#   Because the method and condition inside the method were defined but only one of the two were closed with the keyword end.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# The error occured on line #38
# 2. What is the type of error message?
# The error is a name error.
# 3. What additional information does the interpreter provide about this type of error?
# There is an undefined local variable or method
# 4. Where is the error in the code?
#   The error of the code is in the name south_park
# 5. Why did the interpreter give you this error?
#  Because the name south_park was not assigned anything if it was to be a variable nor was it defined as a method.
# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#   The line number the error occurs is line #52.
# 2. What is the type of error message?
#   This is a NoMethod Error
# 3. What additional information does the interpreter provide about this type of error?
#     It says that cartman is an undefined method
# 4. Where is the error in the code?
#    The error in the code is before cartman where the method was supposed to be defined.
# 5. Why did the interpreter give you this error?
#    Because def was not placed before cartman to define it as a method

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#    This error occurs on line #67
# 2. What is the type of error message?
#    This is an argument error
# 3. What additional information does the interpreter provide about this type of error?
#    That the method cartmans_phrase has a wrong number of arguments
# 4. Where is the error in the code?
#    After the method cartmans_phrase was defined
# 5. Why did the interpreter give you this error?
#   Because the method cartmans_phrase does not have any arguments.

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end

# 1. What is the line number where the error occurs?
#   This error occurs on line #86
# 2. What is the type of error message?
#    This is also an argument error
# 3. What additional information does the interpreter provide about this type of error?
#   That the method cartman_says has a wrong number of arguments
# 4. Where is the error in the code?
#   The error is after the method cartman_says was defined
# 5. Why did the interpreter give you this error?
#   Because when the method cartman_says is called it does not include any parameters



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end


cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end

# 1. What is the line number where the error occurs?
#   The error occurs on line #108
# 2. What is the type of error message?
#   This is an argument error
# 3. What additional information does the interpreter provide about this type of error?
#   That the method cartmans_lie has a wrong number of arguments
# 4. Where is the error in the code?
#    The error in the code is after the method cartmans_lie was defined, there should only be on parameter here.
# 5. Why did the interpreter give you this error?
# Because when the method cartmans_lie was called it only has one parameter but when the method was defined it had two.

# --- error -------------------------------------------------------
=begin
5 * "Respect my authoritay!"
=end
# 1. What is the line number where the error occurs?
#   The error occurs on line #129
# 2. What is the type of error message?
#    This is a Type Error message
# 3. What additional information does the interpreter provide about this type of error?
#  That a string cannot be coerced into a Fixnum
# 4. Where is the error in the code?
#    The error occurs where the * is placed in between 5 and the string.
# 5. Why did the interpreter give you this error?
#    Because you cannot multiply a number with a string.

# --- error -------------------------------------------------------
=begin
amount_of_kfc_left = 20/0
=end

# 1. What is the line number where the error occurs?
#   The error occurs on line #144
# 2. What is the type of error message?
#    The type of error is a Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
#    That a number is being divided by 0
# 4. Where is the error in the code?
#    It occurs where the / is placed in between 20 and 0
# 5. Why did the interpreter give you this error?
#    Because you cannot divide a number by 0.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# In line #60
# 2. What is the type of error message?
# This is a load error
# 3. What additional information does the interpreter provide about this type of error?
# That it is unable to load such a file
# 4. Where is the error in the code?
# It is in the file name cartmans_essay.md
# 5. Why did the interpreter give you this error?
# Because this file does not exist on my computer and it is unable to load a file that does not exist.


# --- REFLECTION -------------------------------------------------------

=begin
Which error was the most difficult to read?
The most difficult to read for me was the argument errors. I was a little confused on why the error was showing for the line in which the method was defined instead of the line in which it was called because, for example, if a method is defined like the following: def my_method(argument1, argument2) and then later it is called with the following my_method(argument1) shouldnt the error be in the latter because it is missing an argument? Other than the argument errors I had a pretty good understanding of the other errors such as load error, type error, etc.

How did you figure out what the issue with the error was?
By looking at the terminal, there is a description of the error. I was able to read this description and make sense of what was going on and why the error message appeared.

Were you able to determine why each error message happened based on the code?
Because we have reviewed a good amount of ruby code this last week, I was able to spot the mistakes in the code before even turning to the terminal. But the terminal was a good confirmation that my guess was correct.

When you encounter errors in your future code, what process will you follow to help you debug?
I will use the 5 questions asked in this challenge. First identify the file, then identify the name of the error. Next, identify the location of the error. And after doing this, I should be able to have a pretty good idea of why the error has showed up in the first place.
=end




