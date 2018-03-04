// ! Constructor Functions
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/constructor>

// Functions invoked using the `new` keyword are called constructor functions. `new`:
// * Creates a new object.
// * Sets the object's prototype to be the prototype of the constructor function.
// * Executes the constructor function with this as the newly created object.
// * Returns the created object. If the constructor returns an object, this object is returned.

// An implementation of `new`: 
function myNew(constructor, ...arguments) { 
	// collect all but the first argument into an array of arguments 
	var obj = {}; 
	Object.setPrototypeOf(obj, constructor.prototype); 
	
	return constructor.apply(obj, arguments) || obj; 
} 

var jon = myNew(Person, Jon, Snow, Stark, Targaryen);

// What happens if we don't invoke a constructor with `new`?  
function Bird() { 
	this.wings = 2; 
}  

let fakeBird = Bird(); 		// invoking as a normal function 
console.log(fakeBird); 		// undefined 

let realBird = new Bird(); 	// invoking as a constructor function 
console.log(realBird); 		// { wings: 2 }