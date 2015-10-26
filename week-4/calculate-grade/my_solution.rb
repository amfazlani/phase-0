# Calculate a Grade

def get_grade(class_average)
  if class_average >= 90 && class_average < 100
  puts "A"
  return "A"
  elsif class_average >= 80 && class_average <= 89
  puts "B"
  return "B"
  elsif class_average >= 70 && class_average <= 79
  puts "C"
  return "C"
  elsif class_average >= 60 && class_average <= 69
  puts "D"
  return "D"
  elsif class_average <= 59
  puts "F"
  return "F"
  end
end

get_grade(50)

