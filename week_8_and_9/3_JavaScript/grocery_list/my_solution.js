// U3.W8-9: 


// I worked on this challenge by myself.
// As a user I want to be able to add items AND quantity to a list.
// As a user I want to be able to check off items on my list into a completed list.
// As a user I want to be able to view my incomplete and complete list.
// As a user I want to be able to remove items from my incomplete list.


// 2. Pseudocode
// Create class, Grocery, that takes a string and a quantity then
// create class, grocerylist that takes an array and places grocery's into an array
// 


// 3. Initial Solution
function Grocery(name, quantity) {
  this.name = name;
  this.quantity = quantity;
}

function GroceryList() {
  var incomplete = [];
  this.addGrocery = function (object) {
    incomplete.push(object);
    console.log('Your ' + object.name + ' has been added.');
  };
  this.checkoff = function (object) {
    var find = incomplete.indexOf(object);
    incomplete.splice(find);
    console.log('Checked off!');
  };
  this.viewList = function () {
    for (var i = 0; i < incomplete.length; i++) {
      console.log(incomplete[i].name + "<br />");
    }
  };
}



// 4. Refactored Solution

//I am not sure exactly what I could refactor here. Will update if I find a solution.

// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
orange = new Grocery("orange", 2);
eggs = new Grocery("eggs", 24);
butter = new Grocery("butter", 1);
list = new GroceryList();

list.addGrocery(orange)
list.addGrocery(eggs)
list.addGrocery(butter)
list.viewList
list.checkoff(eggs)
list.viewList




// 5. Reflection 

// This challenge helped me refresh on how to define functions, define local variables, create, add elements to, access, and iterate over arrays in JavaScript,
// and create, add properties to, delete properties from, and access values from JavaScript Object literals. I felt OK with this challenge. I need to study more 
// on JS syntax. I have an issue with my viewList function. I could not get the function to display my array conents.