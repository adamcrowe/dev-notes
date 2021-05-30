# Variables

## Summary
`const` = can't reassign (change pointer) but can add properties to object, items to array; hoisted but not initialized: throw reference error if used before assigned value
`let` = can reassign (change pointer); block-scoped: used only in the block it was defined in; hoisted but not initialized: throw reference error if used before assigned value
`var` = may or may not be reassigned, and may or may not be block-scoped; hoisted to global scope: throws `undefined` if used before assigned value

## Differences between: `var`, `let`, `const`
* Reassignment: `var` and `let` can be reassigned; `const` cannot be reassigned (though its properties can be)
* Block Scope: `let` and `const` are block-scoped (not accessible from outside curly braced block); `var` is globally-scoped (accessible outside block)
* Hoisted: `let` and `const` are not hoisted (throw reference error if referred before assigned value); `var` is hoisted (throw undefined error if referenced before assigned value)

## Scope
Scope essentially means where these variables are available for use
* `var` declarations are globally-scoped (available for use in the whole window) or block-scoped (available for use only within a block)
* `var` is globally-scoped when declared outside a block
* `var` is block-scoped when it is declared within a block (anything within curly braces is a block)
* `let` is block-scoped: a variable declared in a block with `let` is only available for use within that block
* `const` is block-scoped: a variable declared in a block with `const` is only available for use within that block

## Declaration
* `var` variables can be re-declared and updated (value changed)
* `let` can be updated (within its scope/block) but not re-declared
* `const` cannot be updated (though array items and object properities can be updated) nor re-declared (every `const` declaration, therefore, must be initialized at the time of declaration)

```javascript
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

## Hoisting
* See hoisting.js


### References
[var, let, and const – What's the Difference?](https://www.freecodecamp.org/news/var-let-and-const-whats-the-difference)