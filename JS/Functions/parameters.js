// ! Parameters
// * Primitive parameters (such as a number) are passed to functions by value
// * Non-primitive parameters (such as array or object) are passed by reference

// !! Default Parameters (ES6)

// previous strategy to set default params:
function multiply(a, b) {
	b = typeof b !== 'undefined' ? b : 1;
	return a * b;
}

// ES6 default params:
function multiply(a, b = 1) {
	return a * b;
}

// passing undefined vs. other falsy values
function test(num = 1) {
	console.log(typeof num);
}

test();          // 'number' (num is set to 1)
test(undefined); // 'number' (num is set to 1)
test('');        // 'string' (num is set to '')
test(null);      // 'object' (num is set to null)

// default parameters are available to later default parameters
function singularAutoPlural(singular,
							plural = singular + 's',
							rallyingCry = plural + ' ATTACK!!!'
							) {
	return [singular, plural, rallyingCry];
}

singularAutoPlural('Gecko'); 				// ["Gecko", "Geckos", "Geckos ATTACK!!!"]
singularAutoPlural('Fox', 'Foxes'); 		// ["Fox", "Foxes", "Foxes ATTACK!!!"]
singularAutoPlural('Deer', 'Deer', 'Deer'); // ["Deer", "Deer", "Deer"]

// !! Rest Parameters (ES6)
// The rest parameter syntax allows us to represent an indefinite number of arguments as an array.
// typescript:
const add = (...numbers: number[]) => {
	return numbers.reduce((currResult, currValue) => {
		return currResult + currValue;
	}, 0);
};

// collect arguments from the second arg into an array then use map() to multiply each item by the first argument
function multiply(multiplier, ...theArgs) {
	return theArgs.map(x => multiplier * x);
}
var arr = multiply(2, 1, 2, 3);
console.log(arr); // [2, 4, 6]

// There are three main differences between rest parameters and the arguments object:

// * rest parameters are only the ones that haven't been given a separate name, while the `arguments` object contains all arguments passed to the function;
// * the `arguments` object is not a real array, while rest parameters are Array instances, meaning methods like `sort`, `map`, `forEach` or `pop` can be applied on it directly;
// * the `arguments` object has additional functionality specific to itself (like the `callee` property).

// Rest parameters have been introduced to reduce the boilerplate code that was induced by converting the arguments object into an array: var argsAsRealArray = Array.prototype.slice.call(arguments, 1);


const addedNumbers = add(5, 10, 15, 20);
console.log(addedNumbers);

// destructured parameters:
function f(...[a, b, c]) {
	return a + b + c;
}

f(1)          // NaN (b and c are undefined)
f(1, 2, 3)    // 6
f(1, 2, 3, 4) // 6 (the fourth parameter is not destructured)