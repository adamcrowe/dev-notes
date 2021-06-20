// # Recursion
// Recursion is when a function calls itself (until it doesn't)

// ## Use case: To replace loops

// ### Example: For or while loop

// Before:
function countDownFrom(number) {
	for (let i = number; i > 0; i--) { // exit case: i === 0 / continue case: i > 0
		console.log(i);
	}
}

countDownFrom(5);
// 5
// 4
// 3
// 2
// 1

// Before:
var number = 5;

while (number > 0) { // exit condition: number === 0
	console.log(number);
	number--;
}
// 5
// 4
// 3
// 2
// 1

// After (using recursion)
function countDownFrom(number) {
	if (number === 0) { // exit case: number === 0
		return;
	}

	console.log(number);
	countDownFrom(number - 1); // recursive case
}

countDownFrom(5);
// 5
// 4
// 3
// 2
// 1

// ## Use case: Factorials

// 4! = 4 * 3 * 2 * 1
// n! = n * (n - 1)!
function factorial(n) {
	// Base case (exit recursion):
	if (n === 1) {
		return 1;
	// Recursive case:
	} else {
		return n * factorial(n - 1);
	}
}

console.log(factorial(4));

// ## Use case: Flatten a nested array (without using Array.flatten)
function flattenArray(arr) {
	return arr.reduce((acc, item) => {
		// Base case: item is not an array
		if (!Array.isArray(item)) {
			acc.push(item);
			// Recursive case: item is an array
		} else {
			acc = acc.concat(flattenArray(item));
		}
		return acc;
	}, []);
}
const exampleArray = [1, 2, [3, 4, [5, 6, 7], 8], 9, 10];
console.log(flattenArray(exampleArray)); // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// ## Use case: Flatten a nested array (e.g. nestedArrays = [[1, 2, 3], [4, 5, 6], [7, 8, 9, [10, 11, 12]]]);

// From accounting.js <https://github.com/openexchangerates/accounting.js/blob/master/accounting.js>
function formatMoney(numbers) {
	// Recursive case: numbers is an array
	if (Array.isArray(numbers)) {
		return numbers.map(function mapper(element) { // named `mapper` for ease of call stack debugging
			// 1. map seeks to duplicate array structure of numbers but with transformed elements
			// 2. keep sending element through the function until the element is *not* an array
			// 3. add transformed element into the duplicated array structure of numbers
			return formatMoney(element);
		});
	// Base case: numbers/(element) is not an array, so transform it and add to mapped array
	} else {
		return '$' + numbers;
	}
}
// usage
nestedArrays = [[1, 2, 3], [4, 5, 6], [7, 8, 9, [10, 11, 12]]];
formatMoney(nestedArrays);

// ## Use case: Flatten/Unwrap an array
function unwrapArray(data) {
	// Base case: data is not an array:
	if (!Array.isArray(data)) {
		return data;
	// Recursive case: data is an array
	} else {
		return unwrapArray(data[0]);
	}
}
unwrapArray([[[[[['wrapped']]]]]]);

// Use case: Traversing a tree-like structure to manipulate its nodes
let categories = [
	{ id: 'animals', parent: null },
	{ id: 'mammals', parent: 'animals' },
	{ id: 'cats', parent: 'mammals' },
	{ id: 'dogs', parent: 'mammals' },
	{ id: 'chihuahua', parent: 'dogs' },
	{ id: 'labrador', parent: 'dogs' },
	{ id: 'persian', parent: 'cats' },
	{ id: 'siamese', parent: 'cats' }
];

let makeTree = (categories, parent) => {
	let node = {};
	categories
		.filter(c => c.parent === parent)
		.forEach(c => node[c.id] =
			makeTree(categories, c.id)); // recursive calls

 	return Object.keys(node).length ? node : null; 
};

console.log(
	JSON.stringify(
		makeTree(categories, null) // initial call
	, null, 2)
);

// anticipated tree structure (json)
{
	animals: {
		mammals: {
			cats: {
				'persian': null
				'siamese': null
			},
			dogs: {
				'chihuahua': null
				'labrador': null
			}     
		}
	}
}

// Note: Remember to return the function to the calling function
function myRecursiveFunction(arg1, arg2) {
	// base case or exit recursive case
	// ...
	// recursive case
	return myRecursiveFunction(arg1, arg2Adjusted);
}

// References
// A Quick Intro to Recursion in Javascript <https://yazeedb.com/posts/quick-intro-to-recursion>
