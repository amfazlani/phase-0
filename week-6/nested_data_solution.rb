#Example of array

#nested_array = [1, ["inner", "array"], 2, 3]
#nested_array[1][0]


# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:

p array[1][1][2][0]


# ============================================================

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

p hash[:outer][:inner]["almost"][3]

# attempts:
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:

p nested_data[:array][1][:hash]


# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES


# Pseudocode:
#Go through each item in number array
#Each item we will check if it is array
#If element is an array we will run another each loop
#Inside this each loop we will add 5 to each element
#if element is not array we will add 5

for element in (0...number_array.length) do
  if number_array[element].kind_of?(Array)
    for inner in (0...number_array[element].length) do
      number_array[element][inner] += 5
    end
  else
    number_array[element] += 5
  end
end

print number_array


# refactored:
number_array.map! { |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner + 5}
  else
    element + 5
  end
}

print number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# Pseudocode:
#Go through each item in startup_names array
#Each item we will check if it is array
#If element is an array we will run another each loop inside it
#Inside this each loop we will add "ly" to the name of each element
#if element is not array we will add "ly" to the name of this element

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

print startup_names.map { |element|
  if element.kind_of?(Array)
    element.map { | inner |
      if inner.kind_of?(Array)
        inner.map {|inner_inner| inner_inner + "ly"}
      else
        inner + "ly"
      end
    }
  else
    element + "ly"
  end
}

=begin
What are some general rules you can apply to nested arrays?

Some good things to keep in mind in regards to nested arrays is to be sure that you have a mental picture of where you are at any particular time, because it can get confusing when you are not sure if you are iterating over the entire array, or over each nested array.

 What are some ways you can iterate over nested arrays?

 One way you can iterate over nested arrays is using map, to first iterate over the entire array and then map again to iterate over each nested array.

 Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

 Before this I had used map before but not the same way as I used it here. This is really the first time I used map for a nested array which made it interesting because we had to use map twice, once to iterate over the entire array, and then map again to iterate over a nested array. I am interested to see if there are a bunch of nested arrays, for example more than 10, which method would be used to iterate over those nested arrays because it seems illogical to reuse map over and over again.

=end






