// ! .keys()

// returns a new Array Iterator object that contains the keys for each index in the array

var array1 = ['a', 'b', 'c'];
var iterator = array1.keys(); 
  
for (let key of iterator) {
	console.log(key); 	// 0 1 2
}

// keys iterator does not ignore holes
var arr = ['a', , 'c'];
var sparseKeys = Object.keys(arr);
var denseKeys = [...arr.keys()];

console.log(sparseKeys); // ['0', '2']
console.log(denseKeys);  // [0, 1, 2]