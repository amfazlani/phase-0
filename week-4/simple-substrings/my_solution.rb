# Simple Substrings

# I worked on this challenge [by myself, with: ].

#need to create a method called welcome
#method needs to take input of one parameter that is a string
#method returns "Welcome to California" if string includes CA, if string does not include CA, then it says "You should move to California"
# Your Solution Below

def welcome(my_address)
  if my_address.include? "CA"
    return "Welcome to California"
  else
    return "You should move to California"
  end
end

