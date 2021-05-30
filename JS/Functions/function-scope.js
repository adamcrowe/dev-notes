// # Function Scope
// * A function can access all variables and functions defined inside the scope in which it is defined
// * A function defined in the global scope can access all variables defined in the global scope
// * A function defined inside another function can also access all variables defined in its parent function
// * A function defined inside a parent function can access all variables to which the parent has access

// Three ways for a function to call itself:
var foo = function bar() {
	// bar() - the function's name
	// arguments.callee()
	// foo() - an inscope function expression
};

// ## Scope Chaining (see Closures)

// In strict mode, starting with ES6, functions inside blocks are now scoped to that block:
'use strict';

function f() {
	return 1;
}

{
	// block-scoped function
	function f() {
		return 2;
	}
}

f() === 1; // true in strict mode
f() === 2; // true in non-strict mode
