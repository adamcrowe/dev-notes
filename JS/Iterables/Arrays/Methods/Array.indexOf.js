// ! .indexOf(searchElement[, fromIndex])

// returns the index of the first match (using ===) for searchElement 
var a = ['a', 'b', 'a', 'b', 'a']; 

// search for first instance of 'b' 
console.log(a.indexOf('b')); 		// logs 1 

// search for first instance of 'b' starting from index 2 
console.log(a.indexOf('b', 2)); 	// logs 3 
console.log(a.indexOf('z')); 		// logs -1, because 'z' was not found

// find all the occurrences of an element, starting at array beginning 
var indices = []; 
var array = ['a', 'b', 'a', 'c', 'a', 'd']; 
var element = 'a'; 
var idx = array.indexOf(element); 	// 0 

while (idx != -1) { 	// exit condition: 
	// if the index is greater than or equal to the array's length, -1 is returned 
	debugger; 
	indices.push(idx); 
	idx = array.indexOf(element, idx + 1); 
} 

console.log(indices); 	// [0, 2, 4]

// if element does not exist in the array, add it, else do nothing 
function updateVegetablesCollection (veggies, veggie) { 
	if (veggies.indexOf(veggie) === -1) { 
		veggies.push(veggie); 
		console.log('New veggies collection is : ' + veggies); 
	} else if (veggies.indexOf(veggie) > -1) { 
		console.log(veggie + ' already exists in the veggies collection.'); 
	} 
} 

var veggies = ['potato', 'tomato', 'chillies', 'green-pepper']; 

updateVegetablesCollection(veggies, 'spinach'); 
// New veggies collection is : potato,tomato,chillies,green-pepper,spinach 

updateVegetablesCollection(veggies, 'spinach'); 
// spinach already exists in the veggies collection.
