// ! Delete
x = 42;
var y = 43;
myobj = new Number();
myobj.h = 4;    // create property h 

delete x;       // returns true (can delete if declared implicitly) 
delete y;       // returns false (cannot delete if declared with var) 
delete Math.PI; // returns false (cannot delete predefined properties) 
delete myobj.h; // returns true (can delete user-defined properties) 
delete myobj;   // returns true (can delete if declared implicitly) 

var trees = ['redwood', 'bay', 'cedar', 'oak', 'maple']; 
delete trees[3];
if (3 in trees) {
	// this does not get executed 
} 

var trees = ['redwood', 'bay', 'cedar', 'oak', 'maple'];
trees[3] = undefined;
if (3 in trees) { 
	// this gets executed 
} 

// use the splice method to completely remove element from the array 
var trees = ['redwood', 'bay', 'cedar', 'oak', 'maple']; 
trees.splice(3,1); 
console.log(trees); // ["redwood", "bay", "cedar", "maple"]
    
// non-configurable properties 
var Employee = {}; 
Object.defineProperty(Employee, 'name', {configurable: false}); 
console.log(delete Employee.name);  // returns false

// delete and the prototype chain 
function Foo() { 
	this.bar = 10; 
} 

Foo.prototype.bar = 42; 

var foo = new Foo(); 
// Returns true, since the own property has been deleted on the foo object 

delete foo.bar;           
console.log(foo.bar); // foo.bar is still available, since it is available in the prototype chain 

// We delete the property on the prototype 
delete Foo.prototype.bar; 

// logs "undefined" since the property 
// is no longer inherited 
console.log(foo.bar);
