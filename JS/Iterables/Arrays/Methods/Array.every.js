// ! .every(callback[, thisObject])

// .every acts like the "for all" quantifier in mathematics. In particular, for an empty array, it returns true. (It is vacuously true that all elements of the empty set satisfy any given condition.)

// returns true if callback returns true for every item in the array 

function isNumber(value) { 
	return typeof value === 'number'; 
} 

var a1 = [1, 2, 3]; 
console.log(a1.every(isNumber)); 			// logs true 

var a2 = [1, '2', 3]; 
console.log(a2.every(isNumber)); 			// logs false
[12, 5, 8, 130, 44].every(x => x >= 10); 	// false 
[12, 54, 18, 130, 44].every(x => x >= 10); 	// true