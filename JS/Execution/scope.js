// # Scope
// * See: Execution/execution.md

// ## Variable Scopes
// * Local: can see `this`, return, and any variables declared within the function
// * Closure: can see any variables declared within the enclosing function
// * Global: can see all global variables attached to the global object

// * Only functions create a new scope: When run, functions create a new function execution context and are placed onto the Execution/Call Stack
// * Global Scope (Global Execution Context) is the outermost scope. Variables declared outside a function are in the global scope (Global Execution Context) and can be accessed in any other scope.
// * In a browser, the window object is the global scope.
// * Local Scope (or function scope) is a scope nested inside another function scope.
// * Variables declared in a local scope are accessible within any inner scopes.

function outer() {
	let a = 1;

	function inner() {
		let b = 2;

		function innermost() {
			let c = 3;
			console.log(a, b, c); // 1 2 3
		}

		innermost(); // 1 2 3
		// c is out of scope
		console.log(a, b); // 1 2
	}

	inner(); // 1 2 3 1 2
	// b and c are out of scope
	console.log(a); // 1
}

outer(); // 1 2 3 1 2 1

// # Block Scoping (ES6)

// * Block scoping simply says: I want to be able to treat a { .. } block as a scope, without having to make a new function to encapsulate that scope.
// * The scope of a variable defined with `var` has function scope, or when declared outside any function, global scope.
// * The scope of a variable defined with `let` has block scope (and makes a scope out of the block in which it is declared).

// See worked example in Execution/closures.js

if (a) {
	// some code
	// make an explicit scope block
    {
        // we can access `a` here
		let b, c;
		// more code
		b = 10;
		// more code
		c = 1000;
		// more code
		if (b > 3) {
			// more code
			console.log(b + c);
			// more code
		}
    }
    // we cannot access `b` or `c` here
	// more code
}
