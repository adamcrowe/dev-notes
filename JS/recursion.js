// ! Recursion
// Recursion is when a function calls itself (until it doesn't)

// !! Use case: To replace loops

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

// !! Use case: Factorials

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

// !! Use case: Unknown array depth problem: nestedArrays = [[1, 2, 3], [4, 5, 6], [7, 8, 9, [10, 11, 12]]]);

// From accounting.js
function formatMoney(numbers) {
	// Recursive case:
	if (Array.isArray(numbers)) {
		return numbers.map(function mapper(element) { // named `mapper` for ease of call stack debugging
			// 1. map seeks to duplicate array structure of numbers but with transformed elements
			// 2. keep sending element through the function until the element is *not* an array
			// 3. add to transformed element into the duplicated array structure of numbers
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

// !! Use case: unwrap an array
function unwrapArray(data) {
	// Base case (exit recursion):
	if (!Array.isArray(data)) {
		return data;
	// Recursive case:
	} else {
		return unwrapArray(data[0]);
	}
}
unwrapArray([[[[[['wrapped']]]]]]);

// Use !! case: Traversing a tree-like structure to manipulate its nodes
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

// anticipated tree structure 
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