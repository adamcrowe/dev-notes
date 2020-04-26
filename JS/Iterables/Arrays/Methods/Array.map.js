// ! .map(callback[, thisObject])

// returns new array of return values from executing callback on every array item 
var a1 = ['a', 'b', 'c']; 
var a2 = a1.map(function(item) { 
	return item.toUpperCase(); 
}); 

console.log(a2); 	// ['A', 'B', 'C']

var array1 = [1, 4, 9, 16]; 
const map1 = array1.map(x => x * 2); 
console.log(map1); 	// [2, 8, 18, 32]

// map array of numbers to an array of square roots 
var numbers = [1, 4, 9]; 
var roots = numbers.map(Math.sqrt); 
console.log(roots) 	// [1, 2, 3]

// reformat objects in an array 
var kvArray = [ {key: 1, value: 10}, 
				{key: 2, value: 20}, 
				{key: 3, value: 30}
			  ]; 

var reformattedArray = kvArray.map(obj => { 
	var rObj = {}; 
	rObj[obj.key] = obj.value; 
	return rObj; 
}); 

console.log(reformattedArray) // [{1: 10}, {2: 20}, {3: 30}]

// using map generically 
var map = Array.prototype.map; 
var a = map.call('Hello World', function(x) { 
	return x.charCodeAt(0); 
}); 

console.log(a) // [72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100]
