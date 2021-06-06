# Scope
* See: [Execution](execution.md)

* __Global Scope__: Global variables are properties of the global object. An undeclared variable  assignment without `var`, `let` or `const`  creates a `var` variable in global scope.
	* Global Scope (Global Execution Context) is the outermost scope. Variables declared outside a function are in the global scope and can be accessed in any other inner scope.
* __Local/Function Scope__: Variables (including `var`) and functions declared inside another function cannot be accessed by any of the enclosing scopes; such variables are function-scoped.
	* Functions create a a Function Scope (Function Execution Context). In addition to global properties, functions can see `this`, `return`, and any variables declared within the function.
* __Block Scope__: A pair of curly braces (`if` statements and `for` loops) define a scope in which variables declared with either `let` or `const` (but not `var`) are confined within.
	* Block scoping allows the creation of a scope without having to make a new function to encapsulate that scope. Variables declared in a local scope are accessible within any inner scopes.
* __Closure Scope__: A closure can see access any variables declared within the enclosing function.


## Function Scope

```javascript
function greeting() {
	if (true) {
		var s = "Hi"; // visible at internal call to console.log(s)
		undeclaredVar = "I am automatically created in global scope";
	}
	console.log(s); // 'Hi'
}

console.log(s); // Error — ReferenceError: `s` is not defined (`s` is function-scoped)
greeting(); // 'Hi'
console.log(undeclaredVar); // 'I am automatically created in global scope'
```

```javascript
function outer() {
	let a = 1;

	function inner() { // encloses `a`
		let b = 2;

		function innermost() { // encloses `a` and `b`
			let c = 3;
			console.log(a, b, c); // 1 2 3
		}

		innermost(); // 1 2 3
		// here, c is out of scope
		console.log(a, b); // 1 2
	}

	inner(); // 1 2 3 1 2
	// here, b and c are out of scope
	console.log(a); // 1
}

outer(); // 1 2 3 1 2 1

```

## Block Scope

* From: [Closures](closures.md)
```javascript
if (a) {
	// make an explicit scope block
	{
		// we can access `a` here
		let b, c;
		b = 10;
		c = 1000;
		if (b > 3) {
			console.log(b + c);
		}
	}
	// we cannot access `b` or `c` here
}
```

```javascript
let g1 = "global 1";
let g2 = "global 2";

// Creating a new block scope
{
	g1 = "new global 1"; // created as `var` in global scope (overrides `let g1`)
	let g2 = "local global 2";
	console.log(g1); // 'new global 1'
	console.log(g2); // 'local global 2'
	console.log(g3); // ReferenceError: g3 is not defined
	let g3 = "I am not hoisted";
}

console.log(g1); // 'new global 1' - `var` was created in global scope
console.log(g2); // 'global 2' - g2 was re-assigned but only within block scope
```