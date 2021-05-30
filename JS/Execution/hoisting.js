// # Hoisting

// * Hoisitng is the behavior of moving `var` and function declarations to the top of their respective scopes during the compilation phase.
// * Hoisting enables the use of `var` before it has been defined.

// This means that if we do this:
console.log (greeter);
var greeter = "say hello"

// is interpreted as this:
var greeter;
console.log(greeter); // greeter is undefined
greeter = "say hello"

// So `var` variables are __hoisted to the top of their scope and initialized with a value of `undefined`__.

// * `var` is hoisted and initialized as `undefined`
// * `let` is hoisted and is not initialized (if you try to use a `let` variable before declaration, you'll get a Reference Error).
// * `const` is hoisted and is not initialized (if you try to use a `const` variable before declaration, you'll get a Reference Error).

// * JavaScript only hoists declarations, not initializations. That is, during compile time, JavaScript only stores function and variable declarations in the memory, not their assignments (value).
// * When the engine reaches the line (during execution) where the actual assignment is done, it will update the value of the variable in its lexical environment.
// * All declarations (`function`, `var`, `let`, `const` and `class`) are hoisted in JavaScript, while the `var` declarations are initialized with undefined, but `let` and `const` declarations remain uninitialized.

// * Function declarations are completely hoisted. This means that a declared function can be called before it is defined.
// * Variables are partially hoisted. A `var` declaration is hoisted but not its assignments.
// * `let` and `const` are not hoisted.

// ## Variables
// Variable declarations get hoisted to the top of their scope, but their assignment does not.

// creating a variable declaration after referencing the variable will work due to variable hoisting. Note: the assignment value of `true` is not hoisted.
function example() {
	console.log(declaredButNotAssigned); // => undefined // the assignment wasn't hoisting, only the declaration
	var declaredButNotAssigned = true;
}

// the interpreter is hoisting the variable declaration to the top of the scope, which means our example could be rewritten as:
function example() {
	var declaredButNotAssigned;
	console.log(declaredButNotAssigned); // => undefined
	declaredButNotAssigned = true;
}

// ## Functions

// ### Function Expression vs. Function Declaration
// * A function expression is created when the execution reaches it and is usable from then on.  It is not hoisted.
// * A function declaration can be called both before and after it was defined.  It is hoisted.

// function declarations hoist their name and the function body.
function example() {
	superPower(); // => Flying
	function superPower() { // declaration was hoisted and so was avalable to superPower() call
        console.log("Flying")
	}
}

// * named function expressions hoist the variable name, not the function name or the function body:

// before hoisting
function example() {
	console.log(named); // => undefined
	named(); // => TypeError named is not a function
	superPower(); // => ReferenceError superPower is not defined

	var named = function superPower() {
		console.log("Flying");
	};
}

// after hoisting
function example() {
	var named;
	console.log(named); // => undefined
	named(); // => TypeError named is not a function
	superPower(); // => ReferenceError superPower is not defined

	var named = function superPower() {
		console.log("Flying");
	};
}

// the same is true when the function name is the same as the variable name.
function example() {
	console.log(named); // => undefined
	named(); // => TypeError named is not a function

	var named = function named() {
		console.log("named");
	};
}

// anonymous function expressions hoist their variable name, but not the function assignment:

// before hoisting
function example() {
	console.log(anonymous); // => undefined
	anonymous(); // => TypeError anonymous is not a function
	var anonymous = function() {
		console.log("anonymous function expression");
	};
}

// after hoisting
function example() {
	var anonymous;
	console.log(anonymous); // => undefined
	anonymous(); // => TypeError anonymous is not a function

	anonymous = function() {
		console.log("anonymous function expression");
	};
}

// * Global variables are properties of the global object
// * Before ES6, it was only possible to declare a variable using `var`. Variables and functions declared inside another function cannot be accessed by any of the enclosing scopes; they are function-scoped.
// * `var` (but not `let`) variables declared inside a block-scope, such as if statements and for loops, can be accessed from outside of the opening and closing curly braces of the block.
// * Note: An undeclared variable  assignment without `var`, `let` or `const`  creates a `var` variable in global scope.

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

// ES6: A pair of curly braces define a scope in which variables declared with either `let` or `const` are confined within.

let g1 = "global 1";
let g2 = "global 2";

/* Creating a new block scope */
{
	g1 = "new global 1"; 	// created as var in global scope
	let g2 = "local global 2";
	console.log(g1); 		// 'new global 1'
	console.log(g2); 		// 'local global 2'
	console.log(g3); 		// ReferenceError: g3 is not defined
	let g3 = "I am not hoisted";
}

console.log(g1); // 'new global 1' - var was created in global scope
console.log(g2); // 'global 2' - g2 was re-assigned but only within block scope

// ### References
// [Hoisting in Modern JavaScript — let, const, and var](https://blog.bitsrc.io/hoisting-in-modern-javascript-let-const-and-var-b290405adfda)
