// # Strict Mode

// * JavaScript is executed in strict mode by using the "use strict" directive. Strict mode tightens the rules for parsing and error handling on your code. Some of its benefits are:
// * Makes debugging easier: Code errors that would otherwise have been ignored will now generate errors, such as assigning to non-writable global or property.
// * Prevents accidental global variables: Assigning a value to an undeclared variable will now throw an error.
// * Prevents invalid use of delete: Attempts to delete variables, functions and undeletable properties will now throw an error.
// * Prevents duplicate property names or parameter values: Duplicated named property in an object or argument in a function will now throw an error. (This is no longer the case in ES6)
// * Makes eval() safer: Variables and functions declared inside an `eval()` statement are not created in the surrounding scope.
// * “Secures” JavaScript eliminating `this` coercion: Referencing a `this` value of null or undefined is not coerced to the global object. This means that in browsers it's no longer possible to reference the window object using `this` inside a function.
