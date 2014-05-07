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
