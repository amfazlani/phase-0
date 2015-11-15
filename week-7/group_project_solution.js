Person 3 - Pseudocode to code

function seperateArray(array) {
  var array1 = array;
  var array2 = [];
  var array3 = [];
  array1.forEach(function(eachNumber) {
    if(eachNumber % 2 === 0) {
    array2.push(eachNumber);
    console.log(array2);
    }
    else {array3.push(eachNumber);
    console.log(array3); }
  }
  );
}

seperateArray([2,1,5,7,8])

function sum(array) {
  var array1 = array;
  total = 0
  array1.forEach(function(eachNumber) {
    total += eachNumber;
  }
  );
  console.log(total)
}
sum([3,4,5,6,7])


function average(array) {
  var array1 = array;
  total = 0;
  array1.forEach(function(eachNumber) {
  total = total + eachNumber;
  }
  );
console.log(total/array1.length);
}

average([3,4,5,6,7])


function median(array) {
  var array1 = array;
  array1.sort(function(a,b) {return a-b});
  console.log(array1);
  var halfArray = (array1.length)/2;
  if(halfArray % 2 === 0) {
console.log(halfArray);
else {
  console.log(((halfArray-1) + halfArray)/ 2)
}
}

median([1,5,10,2])
median([2,3,4,5,6])