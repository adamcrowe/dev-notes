// ! .forEach(callback[, thisObject])

// forEach() executes the callback function once for each array element; unlike map() or reduce() it always returns the value undefined and is not chainable. The typical use case is to execute side effects at the end of a chain.

// executes callback on every array item and returns undefined 
var a = ['a', 'b', 'c']; 
a.forEach(function(element) { 
	console.log(element); 
}); 

// a 
// b 
// c 

var colors = ['red', 'green', 'blue']; 
colors.forEach(color => console.log(color));

// print contents of an array 
function logArrayElements(element, index, array) { 
	console.log('a[' + index + '] = ' + element); 
} 

// index 2 is skipped since there is no item at that position 
[2, 5, , 9].forEach(logArrayElements); 
// logs: 
// a[0] = 2 
// a[1] = 5 
// a[3] = 9

// pass `this` arg into callback each time it's invoked for use as its `this` value 
function Counter() { 
	this.sum = 0; 
	this.count = 0; 
} 

Counter.prototype.add = function(array) { 
	array.forEach(function(entry) { 
		this.sum += entry; 
		this.count++; 
	}, this); // use this same object 
}; 

const obj = new Counter(); 
obj.add([2, 5, 9]); 
obj.count; 	// 3 
obj.sum; 	// 16

// object copy function 
function copy(obj) { 
	const copy = Object.create(Object.getPrototypeOf(obj)); 
	const propNames = Object.getOwnPropertyNames(obj); 

 	propNames.forEach(function(name) { 
		const desc = Object.getOwnPropertyDescriptor(obj, name); 
		Object.defineProperty(copy, name, desc); 
	}); 

	return copy; 
} 

const obj1 = { a: 1, b: 2 }; 
const obj2 = copy(obj1); 
console.log(obj2) // looks like obj1
 
// if the array is modified during iteration, other elements might be skipped 
// (forEach() does not make a copy of the array before iterating) 
var words = ['one', 'two', 'three', 'four']; 
words.forEach(function(word) { 
	console.log(word); 
	if (word === 'two') { 
		// remove 'one' 
		words.shift(); 
		// 'four' is now where 'three' was so 'three' is skipped 
	} 
}); 

// one 
// two 
// four