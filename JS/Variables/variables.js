// ! Variables

// const = can't reassign (change pointer) but can add properties to object, items to array; not hoisted: throw reference error if referred to before assigned value
// let = can reassign(change pointer); block - scoped: used only in the block it defined in; not hoisted: throw reference error if referred to before assigned value
// var = may or may not be reassigned, and may or may not be block-scoped; hoisted to global scope: throws undefined if referred to before assigned value

// !! Global variables are properties of the global object.
// `var`, `let` and `const` (read only)

// Before ES6, it was only possible to declare a variable using `var`. Variables and functions declared inside another function cannot be accessed by any of the enclosing scopes; they are function-scoped. `var` (but not `let`) variables declared inside a block-scope, such as if statements and for loops, can be accessed from outside of the opening and closing curly braces of the block. Note: An undeclared variable  assignment without `var`, `let` or `const`  creates a `var` variable in global scope.

function greeting() {
	if (true) {
		var s = "Hi"; 		// visible at internal call to console.log(s)
		undeclaredVar = "I am automatically created in global scope";
	}
	console.log(s); 		// 'Hi'
}

console.log(s); 			// Error — ReferenceError: s is not defined
greeting(); 				// 'Hi'
console.log(undeclaredVar); // 'I am automatically created in global scope'

// ES6 `let` and `const` are new. They are not hoisted and are block-scoped alternatives for variable declaration. This means that a pair of curly braces define a scope in which variables declared with either `let` or `const` are confined within.

let g1 = "global 1";
let g2 = "global 2";

/* Creating a new block scope */
{
	g1 = "new global 1"; 	// create var in global scope
	let g2 = "local global 2";
	console.log(g1); 		// 'new global 1'
	console.log(g2); 		// 'local global 2'
	console.log(g3); 		// ReferenceError: g3 is not defined
	let g3 = "I am not hoisted";
}

console.log(g1); // 'new global 1' - var was created in global scope
console.log(g2); // 'global 2' - g2 was re-assigned but only within block scope

// A `const` cannot change value through assignment or be re-declared while the script is running. It has to be initialized to a value.

// A common misconception is that `const` is immutable. It cannot be reassigned, but its properties can be changed.

const tryMe = "initial assignment";
tryMe = "this has been reassigned"; // TypeError: Assignment to constant variable.

// You cannot reassign but you can change it...
const array = ["Ted", "is", "awesome!"];
array[0] = "Barney";
array[3] = "Suit up!";
console.log(array); 	// [“Barney”, “is”, “awesome!”, “Suit up!”]

const airplane = {};
airplane.wings = 2;
airplane.passengers = 200;
console.log(airplane); 	// {passengers: 200, wings: 2}