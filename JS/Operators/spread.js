// ! Spread
// > Rest syntax looks exactly like spread syntax, but is used for destructuring arrays and objects. In a way, rest syntax is the opposite of spread syntax: spread 'expands' an array into its elements, while rest collects multiple elements and 'condenses' them into a single element.

// function calls 
function myFunction(x, y, z) { } 
var args = [0, 1, 2]; 
myFunction(...args); 

function myFunction(v, w, x, y, z) { } 
var args = [0, 1]; 
myFunction(-1, ...args, 2, ...[3]);

// spread in array literals 
var parts = ['shoulders', 'knees']; 
var lyrics = ['head', ...parts, 'and', 'toes']; 
// ["head", "shoulders", "knees", "and", "toes"]

// copy an array (unsuitable for multidimensional arrays) 
var arr = [1, 2, 3]; 
var arr2 = [...arr]; // like arr.slice() 

arr2.push(4); 	// [1, 2, 3, 4] 
arr; 			// [1, 2, 3]

// concatenate arrays using Array.concat()  
var arr1 = [0, 1, 2]; 
var arr2 = [3, 4, 5]; 

arr1 = arr1.concat(arr2); // append all items from arr2 onto arr1 

// concatenate arrays using spread 
var arr1 = [0, 1, 2]; 
var arr2 = [3, 4, 5]; 

arr1 = [...arr1, ...arr2]; // append all items from arr2 onto arr1 
arr1 = [...arr2, ...arr1]; // preappend all items from arr2 onto arr1

// shallow-cloning (excluding prototype) or merging of objects using spread: 
var obj1 = { foo: 'bar', x: 42 }; 
var obj2 = { foo: 'baz', y: 13 }; 

var clonedObj = { ...obj1 }; 			// Object { foo: "bar", x: 42 } 
var mergedObj = { ...obj1, ...obj2 }; 	// Object { foo: "baz", x: 42, y: 13 }