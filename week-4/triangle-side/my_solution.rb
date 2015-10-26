
# Your Solution Below

# takes in 3 non-negative numbers
# returns true if 3 numbers can form triangle
# returns false otherwise

#sum of 2 sides is always greater than the third side


def valid_triangle?(a, b, c)
  if a + b > c
    if a + c > b
      if  b + c > a
        puts true
        return true
      else puts false
      end
    else puts false
    end
  else puts false
  end
end

#Refactored

def valid_triangle?(a, b, c)
  if a + b > c && a + c > b && b + c > a
        puts true
        return true
      else puts false
  end
end

valid_triangle?(3,4,5)