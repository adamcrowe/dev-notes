# Variables

## Summary
`const` = can't reassign (change pointer) but can add properties to object, items to array; hoisted: throw reference error if used before assigned value
`let` = can reassign (change pointer); block - scoped: used only in the block it defined in; hoisted: throw reference error if used before assigned value
`var` = may or may not be reassigned, and may or may not be block-scoped; hoisted to global scope: throws `undefined` if used before assigned value

## Scope
Scope essentially means where these variables are available for use.
* `var` declarations are globally scoped (available for use in the whole window) or block scoped (available for use only within a block)
* `var` is globally scoped when declared outside a block.
* `var` is block scoped when it is declared within a block (anything within curly braces is a block).
* `let` is block scoped (a variable declared in a block with `let` is only available for use within that block)
* `const` is block scoped (a variable declared in a block with `const` is only available for use within that block)

## Declaration
* `var` variables can be re-declared and updated
* `let` can be updated (within its scope/block) but not re-declared
* `const` cannot be updated (though array items and object properities can be updated) nor re-declared (every `const` declaration, therefore, must be initialized at the time of declaration).

## Hoisting
Hoisting is a JavaScript mechanism where variables and function declarations are moved to the top of their scope before code execution.

```javascript
// This means that if we do this:
console.log (greeter);
var greeter = "say hello"

// is interpreted as this:
var greeter;
console.log(greeter); // greeter is undefined
greeter = "say hello"
```

So var variables are hoisted to the top of their scope and initialized with a value of `undefined`.

* `var` is hoisted and initialized as `undefined`
* `let` is hoisted and is not initialized (if you try to use a `let` variable before declaration, you'll get a Reference Error).
* `const` is hoisted and is not initialized (if you try to use a `const` variable before declaration, you'll get a Reference Error).

## Explainer
### Global variables are properties of the global object.
Before ES6, it was only possible to declare a variable using `var`. Variables and functions declared inside another function cannot be accessed by any of the enclosing scopes; they are function-scoped. `var` (but not `let`) variables declared inside a block-scope, such as if statements and for loops, can be accessed from outside of the opening and closing curly braces of the block. Note: An undeclared variable  assignment without `var`, `let` or `const`  creates a `var` variable in global scope.

```javascript
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
```

### References
[var, let, and const – What's the Difference?](https://www.freecodecamp.org/news/var-let-and-const-whats-the-difference)