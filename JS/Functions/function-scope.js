// ! Function Scope
// * a function can access all variables and functions defined inside the scope in which it is defined 
// * a function defined in the global scope can access all variables defined in the global scope 
// * a function defined inside another function can also access all variables defined in its parent function 
// * a function defined inside a parent function can access all variables to which the parent has access

// three ways for a function to call itself: 
var foo = function bar() { 
	// bar() - the function's name 
	// arguments.callee()
	// foo() - an inscope function expression 
};
	
// !! Scope Chaining (see Closures)

// In strict mode, starting with ES6, functions inside blocks are now scoped to that block:
'use strict'; 

function f() { 
	return 1; 
}

{
	// block scope function
	function f() { 
		return 2; 
	}
}

f() === 1; // true 
// f() === 2 in non-strict mode