// # .filter(callback[, thisObject])

// returns a new array containing the items for which callback returned true

// Example: Filter out invalid typeof
const a1 = ['a', 10, 'b', 20, 'c', 30];
const a2 = a1.filter(function(item) {
	return typeof item === 'number';
});
console.log(a2); // [10, 20, 30]

// Example: Filter out odd numbers
const isEven = (x) => x % 2 === 0;
const numbers = [1, 2, 3, 4, 5];
console.log(numbers.filter(isEven)); // [2, 4]

// Example: Filter out even numbers
const isOdd = (x) => x % 2 === 1;
const numbers = [1, 2, 3, 4, 5];
console.log(numbers.filter(isOdd)); // [1, 3, 5]

// Shortened form
const oddNumbers = [1, 2, 3, 4, 5].filter(x => x % 2);
console.log(oddNumbers); // [1, 3, 5]

const words = ['spray', 'limit', 'elite', 'exuberant', 'destruction', 'present'];
const result = words.filter(word => word.length > 6);
console.log(result); 	// ["exuberant", "destruction", "present"]

// Example: Filter out small values
function isBigEnough(value) {
	return value >= 10;
}
const filtered = [12, 5, 8, 130, 44].filter(isBigEnough);
console.log(filtered); // [12, 130, 44]

// Example: Filter out invalid (numeric) entries from JSON object
const arr = [
   { id: 15 },
   { id: -1 },
   { id: 0 },
   { id: 3 },
   { id: 12.2 },
   { },
   { id: null },
   { id: NaN },
   { id: 'undefined' }
];
const invalidEntries = 0;

function isNumber(obj) {
	return obj !== undefined && typeof(obj) === 'number' && !isNaN(obj);
}

function filterByID(item) {
	if (isNumber(item.id)) {
		return true;
	}

	invalidEntries++;
	return false;
}

const arrByID = arr.filter(filterByID);
console.log('Filtered Array\n', arrByID);
// Filtered Array:
// [{ id: 15 }, { id: -1 }, { id: 0 }, { id: 3 }, { id: 12.2 }]
console.log('Number of Invalid Entries = ', invalidEntries);
// Number of Invalid Entries = 4

// Example: Searching within an array
const fruits = ['apple', 'banana', 'grapes', 'mango', 'orange'];

/**
 * filterItems filters items based on search criteria (query)
 */
function filterItems(query) {
	return fruits.filter(function(el) {
		return el.toLowerCase().indexOf(query.toLowerCase()) > -1;
	})
}

console.log(filterItems('ap')); // ['apple', 'grapes']
console.log(filterItems('an')); // ['banana', 'mango', 'orange']

// References
// MDN: Array.prototype.filter() <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter>
