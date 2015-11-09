#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name
  attr_writer :name

  def intialize
    @name = "Amaar"
  end
end

class Greetings
  def initialize
    @namedata = NameData.new
  end

def hello
  puts "Hello #{@namedata.intialize} nice to meet you"
end

end


greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."


# Reflection
=begin

Release 1 Reflection

What are these methods doing?
#There are a few different methods in this release file. First, the initialize method for the class creates 3 instance variables called @age, @name, and @occupation. Then the next few methods are created to be able to change each of these three varaibles using the change_my_name, change_my_age, and change_my_occupation methods.

How are they modifying or returning the value of instance variables?
These methods are modifying and returning the value of instance variables by accessing the variables within each method and then passing in arguments to equal those instance variables, thus changing the value of each instance variable.

Release 2 Reflection

 What changed between the last release and this release?
 #The output with this code remained the same as the @age, @name, and @occupation were still modified the same way as the last release, each with its own method. But one thing was different in that the attr_reader was added in the class which made method what_is_age obsolete. By including attr:reader :age, this will allow the person to read the age instance variable and would no longer need a specific method to do so.

What was replaced?
The what_is_age method was replaced with attr_reader :age. This not only makes the code easier to read and cleaner, but it also makes it easeir to read the age instance varaible when needed.

Is this code simpler than the last?
It is definetely more simpler because it does the same thing as the last code only in a more efficent and easier to understand kind of way.

#Release 3 Reflection

What changed between the last release and this release?
While in the previous release there was only an attr_reader, which only allows you to read the value of the variable, this line of code also included a attr_writer, which actually allows you to modify or change the variable that is specified using a symbol.
What was replaced?
By including attr_writer :age, this allowed the writer of the code to delete the  method change_my_age because attr_writer :age allows you do just that instead of having an entire method dedicated to changing the age.
Is this code simpler than the last?
Yes it is because it deleted a method that was not neccesary and now includes both a attr_reader and attr_writer allowing the person to both read the value in the variable and also change the variable when needed.
=end
=begin

=begin

#Reflection for Challenge

What is a reader method?
A reader method is used by using the keyword att_reader followed by a symbol such as :name. This method is used to read a specifc value assigned to a varaible. This is convenient because instead of creating an entirely different method such as "def read_name" you can simply include a attr_reader when you create your class.

What is a writer method?
A writer method is similar to a reader method in that it is a lot more convenient than creating a new method. There is a huge difference though between the two, which is that while a reader method allows you to access the value in the variable, it does allow you to change or modify that variable. By typing in att_writer followed by the variable name such as :name, you can now modify the varaible without having to call a specifc method to do so.

What do the attr methods do for you?
They make it alot easier to quickly access and change varaibles. The alternative, which is to create a different method to both read a varaible and then modify that variable can be very tasking especially if there are multiple variables that need to be read or modified.

Should you always use an accessor to cover your bases? Why or why not?
I think while accessor methods are very convenient they do make your data less secure because it is very easy to access and moidfy the variables in your data which is not always ideal. But with caution, using these methods saves a lot of time.

What is confusing to you about these methods?
I was a little confused on how to actually use these methods because everytime I typed in the instance class name followed by .name = "" It never changed the actual variable. For example, it is my understanding that if I created a new NameData class and followed it by using .name it should allow me to both read and change the variable assigned to name, but for some reason I was not able to.
