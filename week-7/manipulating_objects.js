 // Manipulating JavaScript Objects

// I worked on this challenge: [by myself, with: ]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.

var adam = {};
var adam = {name: "Adam"}
terah['spouse'] = adam;
terah['weight'] = 125
delete terah['eyeColor'];
adam['spouse'] = terah;
terah['children'] = new Object();
// Code stopped working---terah['children'] = "carson"
// terah['children'] = Carson{name: "carson"};
// terah['children'] = {name: "Carter"};
// terah['children'] = {name: "Colton"};
// adam['children'] = terah.children


// __________________________________________
// Reflection: Use the reflection guidelines
//
//In the reflection section of the manipulating_objects.js file, answer the following questions:

//What tests did you have trouble passing? What did you do to make it pass? Why did that work?
//I was able to pass test 1-7 successfully. But after the challenge asked to add a property to the value of a different property, I was completely stuck and was not sure why. Originally I tried terah['children'] = [name: "carson"] but was still getting an error that Carson was not added as a property. I could see why this was the case as I never defined Carson as a real property, only a value with the key name. But I was not sure how to have a property inside of a different property.

//How difficult was it to add and delete properties outside of the object itself?
//If it is just one property inside of an object then it is farily easy you just have to index to that property with the delete keyword. But I am still not sure what to do when there are multiple properties inside of one main property.

//What did you learn about manipulating objects in this challenge?
 //I learned that it is fairly easy to get confused when you are still new to a certian language, even with something as simple as accessing and deleteing values and keys in a a property. I thought I would do failry well on this challenge since I have a pretty good understanding of how to do this in Ruby, but with Javascript it was a little more difficult, but it might be that I was just overthinking and making it harder than it needed to be.



// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)