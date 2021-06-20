// # Reduce
// Reduce is a function that folds a list into any data type(number, string, boolean, object, etc)

// Without reduce (using a loop)
const add = (x, y) => x + y;
const numbers = [1, 2, 3, 4, 5];
let total = 0;

for (let i = 0; i < numbers.length; i++) {
  	total = add(total, numbers[i]);
}
console.log(total); // 15

// Using .reduce
const add = (x, y) => x + y;
const numbers = [1, 2, 3, 4, 5];
console.log(numbers.reduce(add)); // 15

// Example: Tally ages
const users = [
  { name: 'Marie', age: 25 },
  { name: 'Ken', age: 22 },
  { name: 'Sara', age: 29 },
  { name: 'Geoff', age: 30 }
];
console.log(users.reduce((total, currentUser) => total + currentUser.age, 0)); // 106

// # Array.reduce(callback[, initialValue])

// The reduce() method applies a function against an accumulator and each element in the array (from left to right) to reduce it to a single value.
// The first time the callback is called, `accumulator` and `currentValue` can be one of two values.
// If `initialValue` is provided in the call to`.reduce()`, then`accumulator` will be equal to`initialValue`, and `currentValue` will be equal to the first value in the array.
// If no `initialValue` is provided, then `accumulator` will be equal to the first value in the array, and `currentValue` will be equal to the second.

// Example: Addition
const a = [10, 20, 30];
const total = a.reduce(function(accumulator, currentValue) {
	return first + second;
}, 0); // initialValue = 0

console.log(total) // 60 (0 + 10 + 20 + 30)

// Example: Addition
const array1 = [1, 2, 3, 4];
const reducer = (accumulator, currentValue) => accumulator + currentValue;
console.log(array1.reduce(reducer)); // 10 (1 + 2 + 3 + 4)
console.log(array1.reduce(reducer, 5)); // 15 (5 + 1 + 2 + 3 + 4)
console.log([0, 1, 2, 3, 4].reduce((prev, curr) => prev + curr, 10)); // 20 (10 + 0 + 1 + 2 + 3 + 4)

// If the array is empty and no `initialValue` is provided, a TypeError will be thrown.
// If the array has only one elemen t(regardless of position) and no `initialValue` is provided, or if `initialValue` is provided but the array is empty, the solo value will be returned without calling callback.
// It is usually safer to provide an initial value because there are three possible outputs without `initialValue`, as shown in the following example.

const maxCallback = (acc, cur) => Math.max(acc.x, cur.x);
const maxCallback2 = (max, cur) => Math.max(max, cur);

// reduce() without initialValue
[{ x: 22 }, { x: 42 }].reduce(maxCallback); // 42
[{ x: 22 }].reduce(maxCallback); // { x: 22 }
[].reduce(maxCallback); // TypeError

// map/reduce; better solution, also works for empty or larger arrays
[{ x: 22 }, { x: 42 }].map(el => el.x).reduce(maxCallback2, -Infinity);

// Example: Flatten array
// Reduce flatten 1: flatten an array of arrays (flattens only one level deep)
const flattened = [[0, 1], [2, 3], [4, 5]].reduce(
	function(a, b) {
		return a.concat(b);
	},
	[] // initialValue = []
);

console.log(flattened); // [0, 1, 2, 3, 4, 5]

// Reduce flatten 2: (shortened)
const flattened = [[0, 1], [2, 3], [4, 5]].reduce(
	(acc, cur) => acc.concat(cur),
	[] // initialValue = []
);
console.log(flattened);// [0, 1, 2, 3, 4, 5]

// Recursive flatten: flatten multi-level nested array (without using Array.flatten)
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
	}, []); // initialValue = []
}
const exampleArray = [1, 2, [3, 4, [5, 6, 7], 8], 9, 10];
console.log(flattenArray(exampleArray)); // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// Example: Count instances of values in an object
const names = ['Alice', 'Bob', 'Tiff', 'Bruce', 'Alice'];
const countedNames = names.reduce(function (allNames, name) {
	if (name in allNames) {
		allNames[name]++;
	} else {
		allNames[name] = 1;
	}
	return allNames;
}, {}); // initialValue = {}

console.log(countedNames); // { 'Alice': 2, 'Bob': 1, 'Tiff': 1, 'Bruce': 1 }

// Example: Bonding arrays using the spread operator and initialValue
const friends = [{
	name: 'Anna',
	books: ['Bible', 'Harry Potter'],
	age: 21
}, {
	name: 'Bob',
	books: ['War and peace', 'Romeo and Juliet'],
	age: 26
}, {
	name: 'Alice',
	books: ['The Lord of the Rings', 'The Shining'],
	age: 18
}];

const allbooks = friends.reduce(function(prev, curr) {
	return [...prev, ...curr.books];
}, ['Alphabet']); // initialValue = ['Alphabet']

console.log(allbooks); // ['Alphabet', 'Bible', 'Harry Potter', 'War and peace', 'Romeo and Juliet', 'The Lord of the Rings', 'The Shining']

// Example: Remove duplicate items in array
let arr = [1, 2, 1, 2, 3, 5, 4, 5, 3, 4, 4, 4, 4];

let result = arr.sort().reduce((init, current) => {
	if (init.length === 0 || init[init.length - 1] !== current) {
		init.push(current);
	}
    return init;
}, []); // initialValue = []

console.log(result); // [1, 2, 3, 4, 5]

// Alternative using Set
const arr = [1, 2, 1, 2, 3, 5, 4, 5, 3, 4, 4, 4, 4];
const deduplicated = [...new Set(arr)];

// # Recreate Array.reduce

/**
 * Reduce returns a value derived from a list of values
 * @param {function} reducer - a function to convert list values
 * @param {any} initialValue - an initial value for the returned value
 * @param {array} array - a list of values to apply the reducer function on
 * @returns {any}
 */
const reduce = (reducer, initialValue, array) => {
 	let accumulator = initialValue;

	for (let i = 0; i < array.length; i++) {
		const currentItem = array[i];
		accumulator = reducer(accumulator, currentItem);
	}

	return accumulator;
};

// # Recreate Array.some using Array.reduce

/**
 * Some returns true if it finds an array item for which the predicate function returns true; otherwise it returns false
 * @param {function} predicate
 * @param {array} array
 * @returns {boolean}
 */
const some = (predicate, array) => array.reduce((acc, value) => acc || predicate(value), false);

const equals3 = (x) => x === 3;

console.log(some(equals3, [3])); // true
console.log(some(equals3, [3, 3, 3])); // true
console.log(some(equals3, [1, 2, 3])); // true
console.log(some(equals3, [2])); // false

// # Recreate Array.some using Array.reduce

/**
 * All returns true if the predicate function returns true for every array item; otherwise it returns false
 * @param {function} predicate
 * @param {array} array
 * @returns {boolean}
 */
const all = (predicate, array) => array.reduce((acc, value) => acc && predicate(value), true);

const equals3 = (x) => x === 3;

console.log(all(equals3, [3])); // true
console.log(all(equals3, [3, 3, 3])); // true
console.log(all(equals3, [1, 2, 3])); // true
console.log(all(equals3, [2])); // false

// # Recreate Array.none using Array.reduce

/**
 * None returns true if the predicate function returns false for any array item; otherwise it returns false
 * @param {function} predicate
 * @param {array} array
 * @returns {boolean}
 */
const none = (predicate, array) => array.reduce((acc, value) => acc && !predicate(value), true);

const equals3 = (x) => x === 3;

console.log(none(equals3, [3])); // false
console.log(none(equals3, [3, 3, 3])); // false
console.log(none(equals3, [1, 2, 3])); // false
console.log(none(equals3, [2])); // true

// # Recreate Array.map using Array.reduce

/**
 * Map returns an array of transformed items given a transformation function
 * @param {function} transformFn
 * @param {array} array
 * @returns {array}
 */
const map = (transformFn, array) =>
	array.reduce(
		(acc, item) => {
			acc.push(transformFn(item));
			return acc;
		},
		[]
	);

const double = (x) => x * 2;

const reverseString = (string) =>
	string
		.split('')
		.reverse()
		.join('');

console.log(map(double, [10, 20, 30])); // [20, 40, 60]
console.log(map(reverseString, ['Hello World', 'I love map'])); // ['dlroW olleH', 'pam evol I']

// # Recreate Array.filter using .reduce

/**
 * Filter returns an array of items that satisfy the predicate function
 * @param {function} predicate
 * @param {array} array
 * @returns {boolean}
 */
const filter = (predicate, array) =>
	array.reduce(
		(acc, item) => {
			if (predicate(item)) {
				acc.push(item);
			}
			return acc;
		},
		[]
	);

const isEven = (x) => x % 2 === 0;
const isOdd = (x) => x % 2 === 1;
const equals3 = (x) => x === 3;

console.log(filter(isEven, [1, 2, 3, 4, 5])); // [2, 4]
console.log(filter(isOdd, [1, 2, 3, 4, 5])); // [1, 3, 5]
console.log(filter(equals3, [1, 2, 3])); // [3]

// # Implement a reject function using .reduce

/**
 * Reject returns an array of items that do not satisfy the predicate function
 * @param {function} predicate
 * @param {array} array
 * @returns {boolean}
 */
const reject = (predicate, array) =>
	array.reduce(
		(acc, item) => {
			if (!predicate(item)) {
				acc.push(item);
			}
			return acc;
		},
		[]
	);

const isEven = (x) => x % 2 === 0;
const isOdd = (x) => x % 2 === 1;
const equals3 = (x) => x === 3;

console.log(reject(isEven, [1, 2, 3, 4, 5])); // [1, 3, 5]
console.log(reject(isOdd, [1, 2, 3, 4, 5])); // [2, 4]
console.log(reject(equals3, [1, 2, 3])); // [1, 3]

// # Recreate Array.find using .reduce

/**
 * Find returns the first array item that satisfies the predicate function, if none satisfy then return `undefined`
 * @param {function} predicate
 * @param {array} array
 * @returns {boolean}
 */
const find = (predicate, array) =>
	array.reduce(
		(acc, item) => {
			if (acc !== undefined) {
				return acc;
			}

			if (predicate(item)) {
				return item;
			}

			return acc;
		},
		undefined
	);

const isEven = (x) => x % 2 === 0;
const isOdd = (x) => x % 2 === 1;
const equals3 = (x) => x === 3;

console.log(find(isEven, [1, 2, 3, 4, 5])); // 2
console.log(find(isOdd, [1, 2, 3, 4, 5])); // 1
console.log(find(equals3, [1, 2, 3])); // 3

// # Implement a partition function using .reduce

/**
 * Partition returns two arrays of items: the first contains items that satisfy the predicate function, the second, those that do not
 * @param {function} predicate
 * @param {array} array
 * @returns {boolean}
 */
const partition = (predicate, array) =>
	array.reduce(
		(acc, item) => {
			if (predicate(item)) {
				acc[0].push(item);
			} else {
				acc[1].push(item);
			}
			return acc;
		},
		[[], []]
	);

const isEven = (x) => x % 2 === 0;
const isOdd = (x) => x % 2 === 1;
const equals3 = (x) => x === 3;

console.log(partition(isEven, [1, 2, 3, 4, 5])); // 0: [2, 4] 1: [1, 3, 5]
console.log(partition(isOdd, [1, 2, 3, 4, 5])); // 0: [1, 3, 5] 1: [2, 4]
console.log(partition(equals3, [1, 2, 3])); // 0: [3] 1: [1, 2]

// # Implement a scan function using .reduce

/**
 * Scan returns an array containing every reduced value on the way to the single result
 * @param {function} reducerFn
 * @param {array} array
 * @returns {boolean}
 */
const scan = (reducerFn, initialValue, array) => {
	const reducedValues = [];
	array.reduce(
		(acc, item) => {
			const newAcc = reducerFn(acc, item);
			reducedValues.push(newAcc);
			return newAcc;
		},
		initialValue
	)
	return reducedValues;
};

const add = (x, y) => x + y;
const multiply = (x, y) => x * y;

console.log(scan(add, 0, [1, 2, 3, 4, 5, 6])); // [1, 3, 6, 10, 15, 21]
console.log(scan(multiply, 1, [1, 2, 3, 4, 5, 6])); // [1, 2, 6, 24, 120, 720]

// References
// MDN: Array.prototype.reduce() <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce>
// Learn Reduce in 10 Minutes <https://yazeedb.com/posts/learn-reduce-in-10-minutes>
// 10 JavaScript Utility Functions Made with Reduce <https://yazeedb.com/posts/10-js-util-functions-in-reduce>
