// Object.keys()

// Returns an array of a given object's own enumerable properties, in the same order as that provided by a for...in loop (the difference being that a for-in loop enumerates properties in the prototype chain as well).

var numberOfTests = Object.keys(tests).length;

// simple array
var arr = ['a', 'b', 'c'];
console.log(Object.keys(arr)); 		// console: ['0', '1', '2']

// array like object
var obj = { 0: 'a', 1: 'b', 2: 'c' };
console.log(Object.keys(obj)); 		// console: ['0', '1', '2']

// array like object with random key ordering
var anObj = { 100: 'a', 2: 'b', 7: 'c' };
console.log(Object.keys(anObj));	// console: ['2', '7', '100']

// getFoo is a property which isn't enumerable
var myObj = Object.create({}, {
	getFoo: {
		value: function () { return this.foo; }
	} 
});

myObj.foo = 1;
console.log(Object.keys(myObj)); 	// console: ['foo']