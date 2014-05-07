// U3.W8-9: Challenge you're converting 

// WEEK 6 -- PEZDISPENSER (SC)

// class PezDispenser

// 	def initialize(flavors)
// 		@flavors = flavors 
// 	end

// 	def pez_count 
// 		@flavors.length 
// 	end 

// 	def get_pez 
// 		puts @flavors.first 
// 		@flavors.slice!(0)
// 	end 

// 	def add_pez(new_flavor)
// 		@flavors << new_flavor
// 	end 

// 	def see_all_pez 
// 		puts @flavors 
// 	end 

// end

// I worked on this challenge:
// 1. Kai Prout
// 2. Jake Huhn

// 2. Pseudocode

// Create a new function, PezDispenser, that initializes with the pezName variable
// Set pezName and list equal to instance variables, this.list being an empty array
// Create a new function addPez that takes a flavor and pushes it to the list. Return the result to the user
// Create a new function getPez that pops the last pez from the array and returns this result
// Create a new function pezCount that returns the result of taking the list.length
// Create a new function seePez that iterates through the list via a for loop and returns the contents of the dispenser 

// 3. Initial Solution

function PezDispenser (pezName) {
  this.pezName = pezName; 
  this.list = [];
  this.addPez = function (flavor) {
    this.list.push(flavor);
    console.log('You added ' + flavor + ' to the dispenser.');  
  }; 
  
  this.getPez = function () { 
    var flavorAte = this.list.pop();
    this.list.pop();
    console.log('You ate the ' + flavorAte + '.'); 
  }; 
  
  this.pezCount = function () { 
    var count = this.list.length;
    console.log('The dispenser has ' + count + 'pez.'); 
  }; 
  
  this.seePez = function () {
    for (var i = 0; i < this.list.length; i++) {
      console.log(this.list[i] + "\n");
    }
  };    
}


// 4. Refactored Solution

function PezDispenser () {
  this.list = [];
  this.addPez = function (flavor) {
    this.list.push(flavor);
    console.log('You added ' + flavor + ' to the dispenser.');  
  }; 
  
  this.getPez = function () { 
    var flavorAte = this.list.pop();
    this.list.pop();
    console.log('You ate the ' + flavorAte + '.'); 
  }; 
  
  this.pezCount = function () { 
    var count = this.list.length;
    this.count = count; 
    console.log('The dispenser has ' + count + 'pez.'); 
  }; 
  
  this.seePez = function () {
    for (var i = 0; i < this.count; i++) {
      console.log(this.list[i] + "\n");
    }
  };    
}
// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

dispenser1 = new PezDispenser();

dispenser1.addPez('lemon');
dispenser1.pezCount();
dispenser1.seePez();
dispenser1.getPez(); 
dispenser1.pezCount(); 

// 5. Reflection 
