
/*
 DEFINE 'new_list' which takes no parameters. Method creates a empty hash and then returns the empty hash.

 DEFINE 'add_to_list' which takes 3 parameters: item "string", quantity, "integer", hash and then assigns an item a certain quantity in the hash.

 DEFINE 'remove_from_list' which takes 2 parameters: item "string", hash and removes item from hash.

 DEFINE 'update_quantity_in_list' which takes 3 parameters: item "string", quantity, "integer", hash and updates quantity based on item.

 DEFINE 'print_list' which takes 1 parameter: hash. The method goes through each key and value and prints out a sentence which includes key and value.
*/

var newList = function() {
    var newObject = {};
    return newObject;
};

var addToList = function(item,quantity,hash) {
    hash[item] = quantity;

};
var removeFromList = function(item,hash) {
    delete hash[item];

};

var updateQuantity = function(item,quantity,hash) {
    hash[item] = quantity;

};

var printList = function(hash) {
    console.log("Your grocery list includes:");
    for (var key in hash) {
        console.log(key + " in the amount of " + hash[key]);
    }
};

var groceries = newList();
console.log(groceries);
addToList("lemonade",5,groceries);
console.log(groceries);
removeFromList("lemonade",groceries);
console.log(groceries);
addToList("lemonade",5,groceries);
addToList("milk",3,groceries);
console.log(groceries);
updateQuantity("milk",7,groceries);
console.log(groceries);
printList(groceries);


/*
Reflection

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
This challenge was very helpful to re-do in Javascript because the logic was straight forward but it was cool to see how the same things are done in a different way than in Ruby. I solidified my understanding of how to create functions in Javascript and use those functions to manipulate objects. It was also good to review Javascript syntax.

What was the most difficult part of this challenge?
The most difficult aspect of the challenge was knowing that I needed to something in a certain way but not knowing how to translate from Ruby to Javascript. It just seemed that something that was done in a simple way in Ruby became more complicated when trying to do it in Javascript. For example, in my original Ruby solution, I created a method called new_list and put an empty hash inside the method. After that it was very easy to create a list by simply typing groceries = new_list. But in Javascript I had to first create a varaible NewList and then a function which had inside of it a different variable newObject which was equal to a empty hash. Just small differences like those are still confusing to me.

Did an array or object make more sense to use and why?
Since I used a hash in my original solution, it just made more sense to use it in Javascript as well. Especially with this problem, in which a key-value pair makes the most sense as there are two different things (item, quantity) that are closely associated with each other.
*/

