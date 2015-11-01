# DEFINE 'new_list' which takes no parameters:
#   CREATE empty hash
#   RETURN hash

# DEFINE 'add_to_list' which takes 3 parameters: item "string", quantity, "integer", hash
#   CREATE new entries in the hash: pass the item as a key and the quantitiy as it's value

# DEFINE 'remove_from_list' which takes 2 parameters: item "string", hash
#   ACCESS hash element with key named by item
#     REMOVE the element from the hash

# DEFINE 'update_quantity_in_list' which takes 3 parameters: item "string", quantity, "integer", hash
#   ACCESS hash element with key named by item
#     CHANGE quantity per parameter "quantity"

# DEFINE 'print_list' which takes 1 parameter: hash
#   ITERATE over hash
#     PRINT key and value from hash

def new_list
  {}
end

def add_to_list( item, quantity, hash )
  hash[ item ] = quantity
end

def remove_from_list( item, hash )
  hash.delete( item )
end

def update_quantity_in_list( item, quantity, hash )
  hash [item] = quantity
end

def print_list(hash)
 puts "Your grocery list includes:"
  hash.each { |x,y| puts "#{x.capitalize} in the amount of #{y}."}
end

groceries = new_list
add_to_list("Lemonade", 2, groceries)
add_to_list("Tomatoes", 3, groceries)
add_to_list("Onions", 1, groceries)
add_to_list("Ice cream", 4, groceries)

remove_from_list("Lemonade", groceries)
update_quantity_in_list("Ice cream", 1, groceries)
print_list(groceries)

#Reflection

=begin

What did you learn about pseudocode from working on this challenge?
I learned a lot about pseudocode from this challenge! As I mentioned in the begenning of my GPS session, I was struggling a little bit with understanding the format of pseudocode and best practices. My guide was very insightful about pseudocode and really helped us understand how we should plan out our code and how our pseudocode should be formatted.

What are the tradeoffs of using Arrays and Hashes for this challenge?
Arrays are very useufl to use when you just want gather a bunch of data, and calculate or sort that data in a certain way. Because they could include strings, integers, floats, other arrays, they are very flexible in the type of data types that you can include. But if you want to order a specific set of data that is related to another set of data, then hashes are the most useful, because they automatically sort the data in this way with key-value pairs.

What does a method return?
A method returns an output. This output could be anything, from an integer, to a hash, to a string. It depends on what type of action that you wish the method to perform. The method also autmatically returns the last line in the method.

What kind of things can you pass into methods as arguments?
You can pass any type of data type into methods as arguments, from strings, to arrays, to integers, to hashes.

How can you pass information between methods?
You can pass information between methods by calling the method inside of the other method.

What concepts were solidified in this challenge, and what concepts are still confusing?
I think this challenge really solidified my understanding of psuedocode and how clear and well-written pseudocode could really make writing the actual code a lot easier. While we struggled a little during the challenge, I think by the end of the challenge both myself and my pair understood what we were doing and the logic behind the code we had written.


=end