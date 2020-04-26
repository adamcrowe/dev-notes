// ! .includes(searchElement[, fromIndex])

// .includes() determines whether an array includes a certain element, returning true or false as appropriate.

var array1 = [1, 2, 3];

console.log(array1.includes(2)); 	// true

var pets = ['cat', 'dog', 'bat'];

console.log(pets.includes('cat')); 	// true
console.log(pets.includes('at')); 	// false

[1, 2, 3].includes(2);				// true
[1, 2, 3].includes(4);				// false
[1, 2, 3].includes(3, 3);			// false
[1, 2, 3].includes(3, -1);			// true
[1, 2, NaN].includes(NaN);			// true

// if fromIndex is greater than or equal to array.length, false is returned and the array will not be searched
var arr = ['a', 'b', 'c'];

arr.includes('c', 3);   			// false
arr.includes('c', 100); 			// false

// if fromIndex is negative, the computed index is array.length + (fromIndex).
// if the computed index is less than 0, the entire array will be searched.

var arr = ['a', 'b', 'c'];

// array length is 3
// fromIndex is -100
// computed index is 3 + (-100) = -97

arr.includes('a', -100); 			// true
arr.includes('b', -100); 			// true
arr.includes('c', -100); 			// true

// includes() used as a generic method: call on function's arguments object
(function() {
	console.log([].includes.call(arguments, 'a')); // true
	console.log([].includes.call(arguments, 'd')); // false
})('a','b','c'); // arguments to IIFE
