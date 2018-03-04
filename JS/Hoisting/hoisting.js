// ! Hoisting

// The behavior of moving `var` and function declarations to the top of their respective scopes during the compilation phase is called hoisting. Hoisting enables the use of `var` before it has been defined. 

// * Function declarations are completely hoisted. This means that a declared function can be called before it is defined. 
// * Variables are partially hoisted. A `var` declaration is hoisted but not its assignments.
// * `let` and `const` are not hoisted.  

// !! Variables
// Variable declarations get hoisted to the top of their scope, but their assignment does not.

// creating a variable declaration after referencing the variable will work due to variable hoisting. Note: the assignment value of `true` is not hoisted. 
function example() { 
	console.log(declaredButNotAssigned); // => undefined 
	var declaredButNotAssigned = true; 
} 

// the interpreter is hoisting the variable declaration to the top of the scope, which means our example could be rewritten as: 
function example() { 
	var declaredButNotAssigned; 
	console.log(declaredButNotAssigned); // => undefined 
	declaredButNotAssigned = true; 
}

// !! Functions
// !!! Function Expression vs. Function Declaration 
// * A function expression is created when the execution reaches it and is usable from then on. It is not hoisted. 
// * A function declaration can be called both before and after it was defined. It is hoisted.

// function declarations hoist their name and the function body.
function example() { 
	superPower(); // => Flying 
	function superPower() { 
		console.log("Flying"); 
	}
}

// named function expressions hoist the variable name, not the function name or the function body:

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