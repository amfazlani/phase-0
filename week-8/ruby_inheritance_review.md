# Introduction to Inheritance

# I worked on this challenge [by myself, with: ].


# Pseudocode
Create a class called GlobalCohort, which takes in 3 variables, students, name, and number of students.
Initialize the variables
Create a graduated? method which takes in @name as argument.
Create a subclass of GlobalCohort called LocalCohort which takes in city, name, p0_start_date, graduation_date, email_list.
Define method in LocalCohort which adds a student
Define method in LocalCohort which deletes a student

# Initial Solution

class GlobalCohort
attr_accessor :students
attr_accessor :name
attr_accessor :num_of_students
attr_accessor :graduation_date

def initialize(name, students,num_of_students,graduation_date,email-list,current_date)
@name = name
@students = students
@num_of_students = num_of_students
@graduation_date = graduation_date
@email_list = email_list
@current_date = current_date
end

def graduated?(name,current_date)
if @graduation_date == @current_date
return true
end
end


class LocalCohort
attr_accessor :city
attr_accessor :p0_start_date

def initialize(city,p0_start_date)
@city = city
@p0_start_date = p0_start_date
end

def add_student(name)
 @name = name
  @students.push(@name)
  end

def delete_student(name)
 @students.delete(@name)
 end

end


# Refactored Solution





# Reflection


=begin

#In the reflection section in your ruby_review.rb file, answer the following questions:

#What concepts did you review or learn in this challenge?
#I read over the chapter in Well-Grounded Rubyist and learned about the basics of inheritance, how they are used, and why they are important. I also learned more about the fundamentals of objected oriented programming as the chapter also discussed the BasicObject class, and in which situations this is important. I reviewed how to use instance variables and create method defenitions to manipulate those variables within a class.

#What is still confusing to you about Ruby?
#I think I have the fundamentals down but it takes me a little while to dive deeper into the more complex things about Ruby. For example, in this challenge, we were told to look over the Date and Time classes and while I understood their functions it was very difficult for me to implement them into my solution. For this reason, the above solution is not a working solution.

#What are you going to study to get more prepared for Phase 1?
#I am going to read over Chris Pine's book and Well-Grounded Rubyist in order to really get a good review of the basics. I will also work over previous challenges and see if I can refactor them better now that I have a better understanding of Ruby and Ruby methods.

=end


