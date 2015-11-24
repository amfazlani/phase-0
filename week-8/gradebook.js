/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// // __________________________________________
// // Write your code below.

var gradebook = {}

gradebook["Joseph"] = {}
gradebook["Susan"] = {}
gradebook["William"] = {}
gradebook["Elizabeth"] = {}

gradebook["Joseph"] = {testScores: scores[0]}
gradebook["Susan"] = {testScores: scores[1]}
gradebook["William"] = {testScores: scores[2]}
gradebook["Elizabeth"] = {testScores: scores[3]}
gradebook.addScore = function(name,score){
  gradebook[name].testScores.push(score)
}
gradebook.getAverage = function(name){return average(gradebook[name].testScores)}

//create function called average takes in one argument which is an array
//add up all integers and then devide by length of array



// function average(array) {
//   var my_array = array;
//   i = 0;
//   my_array.forEach(function(eachNumber) {
//     i = i + eachNumber;
//   }
//   )
//   return i/array.length
//   }

// average([2,3,4,5,6])



// __________________________________________
// Refactored Solution

function average(array) {
  return array.reduce(function (a, b) {
    return a + b;
  }) / array.length;

}


// __________________________________________
// Reflect

//What did you learn about adding functions to objects?
//I learned that adding functions to objects is a vital tool because functions allow you to use methods in powerful and very constructive ways. Without functions, objects would not be able to do much. I also learned that in terms of syntax, functions and methods are very different and are constructed in very different ways. In the begenning, I struggled with this but as I started using functions more it became a lot easier.

//How did you iterate over nested arrays in JavaScript?
//We used the .forEach method and inside it assigned eachNumber as a placeholder for each individual property in the object.

//Were there any new methods you were able to incorporate? If so, what were they and how did they work?
//For the last release, we used the .reduce method which was able to take all the values inside the array and perform any action that we wanted. For example, above we used .reduce to add up all the values inside the array.







// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)