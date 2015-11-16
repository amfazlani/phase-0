-// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

/*

Pseudocode

Input: an integer greater than 0, and less than 1 million.
Output: a string, with commas added (see below for placement of commas).

Steps:

If number is less than 0, raise an error

If the length of the number is less than or equal to 3, there is no comma.

If the length of the number is equal to 4-6, insert 1 comma, enter a comma after the first integer in the number.

If the length of the number is equal to 7-9, inseart 2 commas, enter a comma after the second integer and

If the length of the number is equal to 10, insert 3 commas

*/

// Initial Solution





function separateComma(number) {

  if(number.toString().length == 4) {
    var a = number.toString();
    var b = ",";
    var position = 1;
    var array = a.split('');
    array.splice(position, 0, b);
    var output = array.join('');
    console.log(output);
  }
  else if(number.toString().length == 5) {
    var a = number.toString();
    var b = ",";
    var position = 2;
    var array = a.split('');
    array.splice(position, 0, b);
    var output = array.join('');
    console.log(output);
  }
  else if(number.toString().length == 6) {
    var a = number.toString();
    var b = ",";
    var position = 3;
    var array = a.split('');
    array.splice(position, 0, b);
    var output = array.join('');
    console.log(output);
  }
  else if(number.toString().length == 7) {
    var a = number.toString();
    var b = ",";
    var position1 = 1;
    var position2 = 5;
    var array = a.split('');
    array.splice(position1, 0, b);
    array.splice(position2, 0, b);
    var output = array.join('');
    console.log(output);
  }
    else if(number.toString().length == 8) {
    var a = number.toString();
    var b = ",";
    var position1 = 2;
    var position2 = 6;
    var array = a.split('');
    array.splice(position1, 0, b);
    array.splice(position2, 0, b);
    var output = array.join('');
    console.log(output);
  }
    else if(number.toString().length == 9) {
    var a = number.toString();
    var b = ",";
    var position1 = 3;
    var position2 = 7;
    var array = a.split('');
    array.splice(position1, 0, b);
    array.splice(position2, 0, b);
    var output = array.join('');
    console.log(output);
  }
    else if(number.toString().length == 10) {
    var a = number.toString();
    var b = ",";
    var position1 = 1;
    var position2 = 5;
    var position3 = 9;
    var array = a.split('');
    array.splice(position1, 0, b);
    array.splice(position2, 0, b);
    array.splice(position3, 0, b);
    var output = array.join('');
    console.log(output);
  }
}

separateComma(1234567890);

//


// Refactored Solution
//
//




// Your Own Tests (OPTIONAL)



// // Reflection
// Answer the following questions in the reflection section of your nums_commas.js file:

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// To be honest, we approached the problem the same exact way because that is the way we knew how to do it. But in saying that, performing the same action in Javascript as opposed to Ruby was much much more difficult. The reason for this, in my opinion, is that Javascript fails to provide clear error messages, and this really threw both me and my partner off. It is difficult to know what you are doing wrong when the program doesn't make a mention of it. Ofcourse, much of our trouble in doing this chalenge was also our limited understanding of Javascript, but I would say doing the same challenge in Ruby was much easier.

// What did you learn about iterating over arrays in JavaScript?
// We did not iterate, but rather made changes based on specefic indexes of the string. This may be the best reason as to why we had so much difficulty doing this challenge as our original solutions in Ruby were spotty to begin with.

// What was different about solving this problem in JavaScript?
// As mentioned earlier, the biggest difference was that in Ruby, when you are writing an excessive solution as we did here you are given very specefic error messages and you are able to go that specefic line of the code and know exactly what went wrong. This was not the case with JavaScript. If this challenge has taught me anything is that especially when working with Javascript make your solutions as refactored as possible because a ton of problems can come up if you otherwise.

// What built-in methods did you find to incorporate in your refactored solution?
// The three methods we used were .splice, .toString, and .split. Again, we did not refactor our solution because we spent so much time on our initial solution to make it work.


