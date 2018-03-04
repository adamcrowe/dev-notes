// ! .lastIndexOf(searchElement[, fromIndex])

// works like indexOf, but starts at the end and searches backwards 
var a = ['a', 'b', 'c', 'd', 'a', 'b']; 
console.log(a.lastIndexOf('b')); 	// logs 5 

// start searching from index/position 4 and look backwards 
console.log(a.lastIndexOf('b', 4)); // logs 1 
console.log(a.lastIndexOf('z')); 	// logs -1

// find all the occurrences of an element, starting at array end 
var indices = []; 
var array = ['a', 'b', 'a', 'c', 'a', 'd']; 
var element = 'a'; 
var idx = array.lastIndexOf(element); 

while (idx != -1) { 
	indices.push(idx); 
	// skip idx == 0 because the first matching element will always be found 
	idx = (idx > 0 ? array.lastIndexOf(element, idx - 1) : -1); 
} 

console.log(indices); // [4, 2, 0]