// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}


// hash[key] => value
// hash[key][sub_key] => sub_value

// WE are currently updating voteCount.
for (var voter in votes){
  for (var position in votes[voter]){
    var voter_selection = votes[voter][position];

    if (voteCount[position][voter_selection] != undefined){
      voteCount[position][voter_selection] += 1;
    }
    else {
      voteCount[position][voter_selection] = 1;
    }
  }
}


// hash[key]
// returns the value from the hash for the matching key

// hash[key] = value
// created a new key value pair OR replaces the value for an existing key

// hash[key] += value
// Will increase the existing integer value, for an existing key.



// console.log(voteCount['president']['Bob'])


// president: {"bob" => 2, "zane" => 1}

// IF the key already exists. I.e. if that person already has at least 1 vote. Increase they votes (aka the value) by 1.
// ELSE, create a NEW key value pair and give them theyr first vote tally.


/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// NOW that we have tallied the votes, iterate through that voteCount hash...
// and use a "counter" variable (aka more of a "flag" variable.

for (var position in voteCount){
  var highest_vote_count = 0;

  for (var candidate in voteCount[position]){
    if (voteCount[position][candidate] > highest_vote_count){
      officers[position] = candidate;
      highest_vote_count = voteCount[position][candidate];
    }
  }
}

console.log(officers)





// for position in voteCount
    // var highest_vote_count = 0
  // for candidate in position
  // rather than comparing the current cnadidte to the previous candidate object.
// we can instead compare the current candidate to the flag.

  // candidate["vote"] > highest_vote_count ?
  // if so, winner = that person
  // AND then update the flag. highest_vote_count = current_person.votes.


  // Are the votes for this person, higher than anyone we have checked so far?
// If so, set the winner equal to that persons name.
// If not, skip..



// Pseudocode


// We need to be able to iterate through a nested hash...
// Good variable names will go a long way here.

// for voter in votes.
// for selections in voter.

// We need logic to check count votes.
// We need logic to determin the highest for each office position.





// __________________________________________
// Initial Solution







// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection


//What did you learn about iterating over nested objects in JavaScript?
//I learned that my knowledge of Javascript, especially in regards to iteration, is still pretty limited. I had a very hard time on this challenge, and both myself and my pair were really stuck on quite a few aspects. After attending office hours, though, I was able to gain a better understanding of certain concepts in this challenge. One thing was that when iterating over nested objects, variable names are vitally important. Because if variable names are vauge, it could become very difficult knowing where you are in the nested object.

//Were you able to find useful methods to help you with this?
//No, working though this in office hours, it does not seem like there were any ready made methods available. Most of this soultion is just looping through the object with for..in loops and assigning the variable names within those loops.

//What concepts were solidified in the process of working through this challenge?
//I have a better understanding of Javascript objects, especially nested objects. But I still plan to work through this code again because I am still struggling with nested objects, in particular.








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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)