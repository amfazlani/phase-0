=begin
# Leap Years

def leap_year?(integer)

  #accepts integer- repersenting Years

=end

# Your Solution Below


def leap_year?(our_year)
  if (our_year % 4 == 0 && our_year % 100 > 0) || our_year % 400 == 0
    puts true
    return true
  end
end


leap_year?(2000)


