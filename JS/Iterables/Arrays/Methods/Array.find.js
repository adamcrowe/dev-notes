// ! .find(callback[, thisArg])

// returns the value of the first element in the array that satisfies the provided testing function, otherwise undefined
// (see also .findIndex(), which returns the index of a found element in the array instead of its value)

var array1 = [5, 12, 8, 130, 44];

var found = array1.find(function(element) {
	return element > 10;
});

console.log(found); // 12

// find an object in an array by one of its properties
var inventory = [
	{name: 'apples', quantity: 2},
	{name: 'bananas', quantity: 0},
	{name: 'cherries', quantity: 5}
];

function isCherries(fruit) { 
	return fruit.name === 'cherries';
}

console.log(inventory.find(isCherries)); 	// { name: 'cherries', quantity: 5 }

// find a prime number in an array
function isPrime(element, index, array) {
	var start = 2;
	while (start <= Math.sqrt(element)) {
		if (element % start++ < 1) {
			return false;
		}
	}
	return element > 1;
}

console.log([4, 6, 8, 12].find(isPrime)); 	// undefined, not found
console.log([4, 5, 8, 12].find(isPrime)); 	// 5

// non-existent and deleted elements are visited and the value passed to the callback is their value when visited
var array = [0, 1, , , , 5, 6]; 

// shows all indexes, not just those that have been assigned values
array.find(function(value, index) {
	console.log('Visited index ' + index + ' with value ' + value); 
});

// expected output:
// Deleting array[5] with value 5 
// Visited index 0 with value 0 
// Visited index 1 with value 1 
// Visited index 2 with value undefined 
// Visited index 3 with value undefined 
// Visited index 4 with value undefined 
// Visited index 5 with value 5
// Visited index 6 with value 6

// shows all indexes, including deleted
array.find(function(value, index) {
	if (index == 0) {
		console.log('Deleting array[5] with value ' + array[5]);
		delete array[5]; // delete element 5 on first iteration
	}
	// element 5 is still visited even though deleted
	console.log('Visited index ' + index + ' with value ' + value); 
});

// expected output:
// Deleting array[5] with value 5 
// Visited index 0 with value 0 
// Visited index 1 with value 1 
// Visited index 2 with value undefined 
// Visited index 3 with value undefined 
// Visited index 4 with value undefined 
// Visited index 5 with value undefined 
// Visited index 6 with value 6
