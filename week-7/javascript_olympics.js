// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up


// Bulk Up
//pseudocode
//input: array of athlete names and event
//output: a string saying "name of athlete "won" event"
//steps:
//1. create a function called win that accepts one argument
//2. create the variables (athletes) that will be given as arguments to the function
//3. give each variable the name property and the event property
//4. in the function, make it print out each variable name along with "won" and the event property.

var Amaar = {
  name: "Amaar",
  event: "Mens Single"

}
var Alicia = {
  name: "Alicia",
  event: "500 Meter Dash"
}

var olympics = function(athletes) {
  athletes.forEach(function(athletes) {
    console.log(athletes.name + " won the " + athletes.event + "!");
})}

olympics([Amaar, Alicia]);

// Jumble your words


// Pseudocode
// Input: A string
// Ouptut: Reversed string
// Step 1: Convert string into individual elements
// Step 2: Reverse individual elements
// Step 3: Join all the elements into a string

var reverseString = function(string) {
  console.log((string.split("")).reverse().join("").toString())
}

reverseString("Hello")




// 2,4,6,8

//pseudocode
// input: an array of numbers
// output: an array of only even numbers from the input array
// steps:
//1. create a function that takes in one argument
//2. create conditional statement within the function that is true when each element is divisible by two.
//3. if the number is divisible by two print it to the screen.



var evenNumber = function(array) {
array.forEach(function(eachNumber) {
  if(eachNumber % 2 === 0) {
    console.log(eachNumber);

  }
}
)
};

evenNumber([1,2,3,4,5,6])


// "We built this city"

// pseudocode
// input: Input a string (name), input a integer (age), input a string (sport name), input a string(famous quote)
// output: One string which includes the name, sport name, and famous quote
// Step 1: create a function c

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote =  quote;
    };

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

// In the reflection section of the javascript_olympics.js file, answer the following questions:

// What JavaScript knowledge did you solidify in this challenge?

// This challenge, in particular, taught me how to create a data type and then subsequently use it in the function that we created. We also learned how to iterate using Javascript.

// What are constructor functions?

// I am still a little confused about constructer functions and while my partner was able to explain to me what it does, I still don't have a complete understanding. From my understanding, a constructer functon creates a new instance of the thing that is being constructed. But I am still not sure why new and constructer are different functions.

// How are constructors different from Ruby classes (in your research)?

// From my research while Ruby classes already have all the variables defined, meaning all the data in the metaclass is passed to the new class, in constructers you have to define variables each and every time you call a constructer function.





