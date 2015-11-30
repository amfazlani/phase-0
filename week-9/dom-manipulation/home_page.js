
 DOM Manipulation Challenge


 I worked on this challenge [by myself, with: ].


 Add your JavaScript calls to this page:

Release 0:

 <link rel="stylesheet" type="text/css" href="home_page.js">

 Release 1:

var done = document.getElementById("release-0");
function addClass(element) {
  element.classList.add("done");
}
addClass(done);

// refactored
document.getElementById("release-0").classList.add("done");

 Release 2:
Set the display property of the #release-1 div to none

var none = document.getElementsById("release-1");
  document.getElementById("release-1").style.display = "none";

// Release 3:
//Change the inner text of the <h1> tag to "I completed release 2."

var innerText = document.getElementTagName('h1')[0];
function addText(element){
  document.createTextNode("I completed release 2.");
}
addText(innertext);

//Refactored

document.getElementTagName('h1')[0].createTextNode("I completed release 2.");

// Release 4:
// Add the background color #955251 to the #release-3 div. #955251 was Pantone's (Links to an external site.) color of the year for 2015!

var backgroundColor = document.getElementById("release-3")
function changeColor(element) {
  element.style.color = "blue";
}

changeColor(backgroundColor);

// Refactored

document.getElementById("release-3").style.color = "blue";

// Release 5:
//Select all occurrences of class .release-4 and change the text-size to 2em.

var textSize document.getElementById("release-4");
document.getElementById("release-4").style.fontSize = 2em;

// Release 6:
// Take the HTML in the template.hidden and append it to the bottom of the page. Use the Treehouse Blog Template Tag (Links to an external site.) resource for help.

document.getElementById("hidden").style.position = "bottom";



<!-- Add your reflection here

What did you learn about the DOM?
This challenge was a little difficult because it took me a while to understand what the DOM is and how it relates to the other things that we have been doing. Even now, I feel like I don't completely understand how DOM fits into the big picture, but I do understand its uses. The DOM is used to manipulate web pages without having to change the actual HTML document. These changes are mostly made using Javascript.

What are some useful methods to use to manipulate the DOM?
Certian methods that we used included .add, .style, .display, .color, .position, .fontSize. Finding the appropriate methods was pretty simple and straightforward.

<!# This challenge took me [#] hours. -->



