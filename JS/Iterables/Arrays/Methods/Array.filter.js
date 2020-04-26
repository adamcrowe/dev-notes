// ! .filter(callback[, thisObject])

// returns a new array containing the items for which callback returned true 
var a1 = ['a', 10, 'b', 20, 'c', 30]; 
var a2 = a1.filter(function(item) { 
	return typeof item === 'number'; 
}); 

console.log(a2); 		// [10, 20, 30]

var words = ['spray', 'limit', 'elite', 'exuberant', 'destruction', 'present']; 
const result = words.filter(word => word.length > 6); 
console.log(result); 	// ["exuberant", "destruction", "present"]

// filter out all small values 
function isBigEnough(value) { 
	return value >= 10; 
} 

var filtered = [12, 5, 8, 130, 44].filter(isBigEnough); 
console.log(filtered); 	// [12, 130, 44]
    
// filter for valid (numeric) entries from JSON o 
var arr = [ 
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

var invalidEntries = 0; 

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

var arrByID = arr.filter(filterByID); 
console.log('Filtered Array\n', arrByID); 

// Filtered Array:
// [{ id: 15 }, { id: -1 }, { id: 0 }, { id: 3 }, { id: 12.2 }] 
console.log('Number of Invalid Entries = ', invalidEntries); 

// Number of Invalid Entries = 4
// searching in array 
var fruits = ['apple', 'banana', 'grapes', 'mango', 'orange']; 

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