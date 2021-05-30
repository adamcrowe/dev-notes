// # Recursion
// Recursion is when a function calls itself (until it doesn't)

// ## Use case: To replace loops

// before:
var x = 0;

while (x < 10) { 	// exit condition
	// do stuff
	x++;
}

// after:
function loop(x) {
	if (x >= 10) { 	// exit condition
		return;
	}
	// do stuff
	loop(x + 1); 	// recursive call
}

loop(0);

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

// From accounting.js
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
