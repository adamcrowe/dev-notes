// `this`

// Context refers to the value of `this` in a particular part of your code. Use `this` to refer to the current object. In general, `this` refers to the calling object in a method. 

// In strict mode, if `this` was not defined by the execution context, it remains undefined. 

// In arrow functions, `this` retains the value of the enclosing lexical context's `this` 
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this>

// !! Determining `this`
// The keyword `this` acts as a placeholder, and will refer to whichever object called that method when the method is actually used. The following list is the ordered rules for determining `this`:

// !!! `new` Binding
// When using the `new` keyword to call a function, `this` is the newly constructed object.

function Person(name, age) { 
	this.name = name; 
	this.age = age; 
	console.log(this); 
} 

const Rachel = new Person("Rachel", 30); // { age: 30, name: 'Rachel' }

// !!! Explicit Binding
// When `call()` or `apply()` are used to call a function, `this` is the object that is passed in as the argument. Note: `.bind()` works a little bit differently. It creates a new function that will call the original one with the object that was bound to it.

function fn() { 
	console.log(this); 
} 

var agent = { id: "007" }; 

// agent passed as `this`: 
fn.call(agent); 		// { id: '007' } 
fn.apply(agent); 		// { id: '007' } 

// bind agent as `this` to boundFn: 
var boundFn = fn.bind(agent); 
boundFn(); 				// { id: '007' }

// !!! Implicit Binding
// When a function is called within a containing object, `this` is the object that the function is a property of. This means that a function is being called as a method.

var building = { 
	floors: 5, 
	printThis: function() { 
		console.log(this); 
	} 
}; 

building.printThis();	// { floors: 5, printThis: function() {…} }

// !!! Default Binding
// If none of the above rules apply, `this` is the global object (in a browser, it's the window object). This happens when a function is called as a standalone function. A function that is not declared as a method automatically becomes a property of the global object.

function printWindow() { 
	console.log(this); 
} 

printWindow(); // window object

// This also happens when a standalone function is called from within an outer function scope:
function Dinosaur(name) { 
	this.name = name; 
	var self = this; 
	inner(); 

	function inner() { 
		alert(this); 		// window object — the function has overwritten the `this` context 
		console.log(self); 	// {name: 'Dino'} — the stored value from the outer context 
	} 
} 

var myDinosaur = new Dinosaur("Dino");

// !!! Lexical `this`
// When a function is called with an arrow function =>, `this` receives the `this` value of the surrounding scope at the time it is created. `this` keeps the value from its original context.

function Cat(name) { 
	this.name = name; 
	console.log(this); 				// { name: 'Garfield' } 
	(() => console.log(this))(); 	// { name: 'Garfield' } // IIFE 
} 

var myCat = new Cat("Garfield");

// !! Setting `this`
// call(), apply() and bind()

// Explicit Binding: A different `this` object can be assigned when calling an existing function. `this` refers to the current object, the calling object

// Function.prototype.call(thisArg, arg1, arg2, ...);  
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/call>

// .call() invokes the function immediately and requires you to pass in arguments as a list (one by one).

// Function.prototype.apply(thisArg, [argsArray]);  
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/apply>

// .apply() invokes the function immediately and allows you to pass in arguments as an array.

// Function.prototype.bind(thisArg[, arg1[, arg2[, ...]]]); 
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/bind>

// .bind() function creates a new bound function that, when called, has its `this` keyword set to the provided value, with a given sequence of arguments preceding any provided when the new function is called. Bound functions are useful for asynchronous callbacks and events.

const Snow = { surname: "Snow" }; 

const char = {
	surname: "Stark",
	knows: function(arg, name) {
		console.log(`You know ${arg}, ${name} ${this.surname}`);
	}
};

// don't pass optional `this`: 
char.knows("something", "Bran");				// You know something, Bran Stark 

// Snow is passed as the optional `this`:  
char.knows.call(Snow, "nothing", "Jon");		// You know nothing, Jon Snow 

// Snow is passed as the optional `this`:  
char.knows.apply(Snow, ["nothing", "Jon"]);		// You know nothing, Jon Snow 

// ES6 allows us to spread an array as arguments with the call function:  
char.knows.call(Snow, ...["nothing", "Jon"]);	// You know nothing, Jon Snow

const Snow = { surname: "Snow" };

const char = {
	surname: "Stark",
	knows: function(arg, name) {
		console.log(`You know ${arg}, ${name} ${this.surname}`);
	}
};

// bind the function with Snow as `this` and "nothing" as first `knows` arg 
const whoKnowsNothing = char.knows.bind(Snow, "nothing"); 

// call with 'Jon' passed as "name" second `knows` arg 
whoKnowsNothing("Jon"); // You know nothing, Jon Snow 

// !! Using `this`

// validate() validates an object's value property, given its high and low values: 
function validate(obj, lowval, hival) { 
	if ((obj.value < lowval) || (obj.value > hival)) 
	console.log('Invalid Value!'); 
} 

// usage: 
// <p>Enter a number between 18 and 99:</p> 
// <input type="text" name="age" size=3 onChange="validate(this, 18, 99);">