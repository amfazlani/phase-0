
// Design Basic Game Solo Challenge

// This is a solo challenge

// Mission Description: Buy and sell as many properties as you can without losing all of your money. You cannot keep buying properties as in order to buy all of them you will have to sell at some point, due to your limited bank account.Also, when you sell, the value diminishes by 15 percent of what you bought.
// Overall mission: Have ownership of All the Properties at one point or another in the game.
// Goals: Avoid Bankruptcy
// Characters: Player
// Objects: Player(name,amount of money,), Property (value)
// Functions: buy, sell

// Pseudocode
// Create a object called Player which has the property called name and a property called "bank account balance"
//Create a second object called Property which has a property called selling price.
//Create a function called buy which takes in two arguments, amount of money, and value. The function will subtract value from the amount of money and return a new variable with the balance left.
//Create a function called sell which takes in two arguments, amount of money, and value. The function will add value to the amount of money.
//

// Initial Code

var player = {
name: "player",
balance: 100000};

var properties = {
HiltonHotel: 100000,
Marriot: 70000,
LakeEstates: 40000,
SeaShoreEstates: 30000,
LakesideView: 25000,
OceanFrontEstates: 20000,
};

function buy(property_name) {
if (property_name == "HiltonHotel")
  player.balance -= properties.HiltonHotel;
else if (property_name == "Marriot")
  player.balance -= properties.Marriot;
else if (property_name == "LakeEstates")
    player.balance -= properties.LakeEstates;
else if (property_name == "SeaShoreEstates")
    player.balance -= properties.SeaShoreEstates;
else if (property_name == "LakesideView")
    player.balance -= properties.LakesideView;
else if (property_name == "OceanFrontEstates")
    player.balance -= properties.OceanFrontEstates;
else
  console.log("That property does not exist in our database");
return player.balance;
}

function sell(property_name) {
if (property_name == "HiltonHotel")
  player.balance += properties.HiltonHotel;
else if (property_name == "Marriot")
  player.balance += properties.Marriot;
else if (property_name == "LakeEstates")
    player.balance += properties.LakeEstates;
else if (property_name == "SeaShoreEstates")
    player.balance += properties.SeaShoreEstates;
else if (property_name == "LakesideView")
    player.balance += properties.LakesideView;
else if (property_name == "OceanFrontEstates")
    player.balance += properties.OceanFrontEstates;
else
  console.log("That property does not exist in our database");
return player.balance;
}

add("Marriot")
sell("Marriot")
add("HiltonHotel")
add("Marriot")
sell("HiltonHotel")



// // Refactored Code
// //I was having a difficult time with this assignment getting my initial solution to work. For this reason, it was very hard for me to go back and find new methods because I was unsure of how to implement them in the right way.

// // Reflection

// //In the reflection section of your game.js file, answer the following questions:

// //What was the most difficult part of this challenge?
// The most difficult aspect of this challenge for me was taking my original idea of a game and actually implementing that into a working solution. There were a few things that I had to take out from my original idea, which was that anytime someone sold a property they would only get back a certian percentage of the original selling price. But for some reason, Javascript was not accepting a decimal number when I tried to multiply it with properties.(value name) and it showed an error that said a decimal could be confused with a dot. I was also not satisfied with my final solution as not only is it excessive with so many if/else if statements, it does not work as I would like it to. For example, I did not want the player to be able to buy the same property twice. But I was unsure how to do this in my code. Also, I kept recieveing an infinite loop when I tried to set a condition that raised an ArgumentError if the player's balance ever reached 0. I think much of my problems in this challenge are from my inexperience with Javascript and I feel that I could have implemented many other features if I were to make this same game in Ruby. This challenge really showed me that I have to research more Javascript and try to make my fundamentals better.

//   What did you learn about creating objects and functions that interact with one another?

//   I think that it was very powerful when I was able to take a set of data and implement two entirely different methods using the same data. I think I was able to get a good understanding of how to create a data type in Javascript and use them in creating my functions.

//   Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//   Admittedly, I spent a lot of my time just trying to get my initial solution to work and did not think I would be able to successfuly implement methods on top of this solution due to my very limited knowledge of Javascript at this point.

//   How can you access and manipulate properties of objects?
//   In order to access and manipulate properties of objects you first have to create a data type with keys and values and assign them to an object. Then by using the dot, such as in this case I used player.balance to acess the value in my player object, you can implement the value inside of a function and manipulate it there. You can also access a property by using bracket notation, for example, in the previous example, I could have also used player["balance"] to access the same value.
// //
// //
// //
// //
// //
// //
// //




