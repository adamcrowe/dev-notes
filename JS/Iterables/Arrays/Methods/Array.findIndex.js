// ! .findIndex(callback[, thisArg])

// returns the index of the first element in the array that satisfies the provided testing function, otherwise -1
// (see also the .find() which returns the value of a found element in the array instead of its index)

var array1 = [5, 12, 8, 130, 44];

function findFirstLargeNumber(element) {
	return element > 13;
}

console.log(array1.findIndex(findFirstLargeNumber)); // 3

// find the index  object in an array by one of its properties
const fruits = ["apple", "banana", "cantaloupe", "blueberries", "grapefruit"];
const index = fruits.findIndex(fruit => fruit === "blueberries");

console.log(index); 		// 3
console.log(fruits[index]); // blueberries

// find the index of a prime number in an array
function isPrime(element, index, array) {
	var start = 2;
	while (start <= Math.sqrt(element)) {
		if (element % start++ < 1) {
			return false;
		}	
	}
	return element > 1;
}

console.log([4, 6, 8, 12].findIndex(isPrime)); // -1, not found
console.log([4, 6, 7, 12].findIndex(isPrime)); // 2