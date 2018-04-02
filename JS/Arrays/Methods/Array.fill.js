// ! .fill(value[, start[, end]]) 

// start default value is 0; end default value is array.length
// if start is negative, it is treated as array.length + start 
// if end is negative, it is treated as array.length + end

// fills all the elements of an array from start index to end index with a static value (not including the end index)
var array1 = [1, 2, 3, 4];

// fill with 0 from position 2 until position 4
console.log(array1.fill(0, 2, 4)); 	// [1, 2, 0, 0]

// fill with 5 from position 1
console.log(array1.fill(5, 1)); 	// [1, 5, 5, 5]

// fill all with 6
console.log(array1.fill(6)); 		// [6, 6, 6, 6]

[1, 2, 3].fill(4);					// [4, 4, 4]
[1, 2, 3].fill(4, 1);				// [1, 4, 4]
[1, 2, 3].fill(4, 1, 2);			// [1, 4, 3]
[1, 2, 3].fill(4, 1, 1); 			// [1, 2, 3] // no change 
[1, 2, 3].fill(4, 3, 3);			// [1, 2, 3]
[1, 2, 3].fill(4, -3, -2);			// [4, 2, 3] // start is 3+-3 = index 0; end is 3+-2 = index 1 
[1, 2, 3].fill(4, NaN, NaN);		// [1, 2, 3] 
[1, 2, 3].fill(4, 3, 5);			// [1, 2, 3]
Array(3).fill(4);					// [4, 4, 4]

[].fill.call({ length: 3 }, 4);		// {0: 4, 1: 4, 2: 4, length: 3}

// objects by reference: 
// when the fill method gets passed an object, it will copy the reference and fill the array with references to that object
var arr = Array(3).fill({}) 		// [{}, {}, {}];
arr[0].hi = "hi"; 					// [{ hi: "hi" }, { hi: "hi" }, { hi: "hi" }]

