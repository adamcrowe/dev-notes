// ! .some(callback[, thisObject])

// returns true if the callback function returns a truthy value for at least one array item; else, false 
function isNumber(value) { 
	return typeof value === 'number'; 
} 

var a1 = [1, 2, 3]; 
console.log(a1.some(isNumber)); // true 

var a2 = [1, '2', 3]; 
console.log(a2.some(isNumber)); // true 

var a3 = ['1', '2', '3']; 
console.log(a3.some(isNumber)); // false

var array = [1, 2, 3, 4, 5]; 

var even = function(element) { 
	return element % 2 === 0; 
}; 

console.log(array.some(even)); // true

// checking whether a value exists in an array 
// mimics Array.prototype.includes() 
var fruits = ['apple', 'banana', 'mango', 'guava']; 

function checkAvailability(arr, val) { 
	return arr.some(function(arrVal) { 
		return val === arrVal; 
	});
}
/* 
function checkAvailability(arr, val) { 
	return arr.some(arrVal => val === arrVal); 
} 
*/ 
checkAvailability(fruits, 'kela');   // false 
checkAvailability(fruits, 'banana'); // true

// converting any value to Boolean 
var TRUTHY_VALUES = [true, 'true', 1]; 

function getBoolean(value) { 
	'use strict'; 
	if (typeof value === 'string') { 
		value = value.toLowerCase().trim(); 
	} 

	return TRUTHY_VALUES.some(function(t) { 
		return t === value; 
	}); 
} 

getBoolean(false);   // false 
getBoolean('false'); // false 
getBoolean(1);       // true 
getBoolean('true');  // true