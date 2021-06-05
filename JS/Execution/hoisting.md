# Hoisting
* See [Execution](execution.md)

* Hoisting is the behavior of 'moving' variable and function declarations to the top of their respective scopes during the creation phase of the execution context.
* Rather than moving, the variables and function declarations are stored in memory, though, in case of variables, only `var` is assigned a value (`undefined`).
* The variable will be given a value only during the execution phase of the execution context when the engine reaches the line where the variable value is assigned.

* `var` is hoisted and initialized as `undefined`
* `let` is hoisted and is not initialized - if you try to use a `let` variable before declaration, you'll get a Reference Error.
* `const` is hoisted and is not initialized - if you try to use a `const` variable before declaration, you'll get a Reference Error.
* Function declarations are hoisted - a declared function can be called before it is defined.

## Variables
* Variable declarations get hoisted to the top of their scope, but their assignment does not.

```javascript
// creating a variable declaration after referencing the variable will work due to variable hoisting. Note: the assignment value of `true` is not hoisted.
function example() {
	console.log(declaredButNotAssigned); // => undefined // the assignment was not hoisted, only the declaration
	var declaredButNotAssigned = true;
}

// the interpreter is hoisting the variable declaration to the top of the scope, which means the above example could be rewritten as:
function example() {
	var declaredButNotAssigned; // var has not been moved, it has simply been given space in memory and assigned the value `undefined`
	console.log(declaredButNotAssigned); // => undefined // the var is available for use through 'hoisting' (memory storage)
	declaredButNotAssigned = true;
}
```

## Functions

### Function Declaration vs Function Expression
* A function declaration can be called both before and after it was defined.  It is hoisted.
* A function expression is created only when the execution reaches it.  It is not hoisted.

```javascript
// Declaration example:
function example() {
	superPower(); // => Flying
	function superPower() { // declaration was hoisted and so was avalable to superPower() call
        console.log("Flying")
	}
}
```

```javascript
// Expression example:
// before hoisting...
function example() {
	console.log(named); // undefined (`var` was created in memory for `named`)
	named(); // TypeError named is not a function
	superPower(); // ReferenceError superPower is not defined

	var named = function superPower() { // function expression was not hoisted
		console.log("Flying");
	};
}

// after hoisting...
function example() {
	var named; // conceptual `var` (`var` was created in memory for `named`)
	console.log(named); // undefined
	named(); // TypeError named is not a function
	superPower(); // ReferenceError superPower is not defined

	var named = function superPower() {
		console.log("Flying");
	};
}

// the same is true when the function name is the same as the variable name:
function example() {
	console.log(named); // undefined
	named(); // TypeError named is not a function

	var named = function named() {
		console.log("named");
	};
}

// anonymous function expressions hoist their variable name, but not the function assignment:

// before hoisting
function example() {
	console.log(anonymous); // undefined
	anonymous(); // TypeError anonymous is not a function
	var anonymous = function() {
		console.log("anonymous function expression");
	};
}

// after hoisting
function example() {
	var anonymous;
	console.log(anonymous); // undefined
	anonymous(); // TypeError anonymous is not a function

	anonymous = function() {
		console.log("anonymous function expression");
	};
}
```

# References
* [Hoisting in Modern JavaScript — let, const, and var](https://blog.bitsrc.io/hoisting-in-modern-javascript-let-const-and-var-b290405adfda)