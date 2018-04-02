// ! .copyWithin(target[, start, end])

// if target is negative, target will be counted from the end
// if target is positioned after start, the copied sequence will be trimmed to fit array.length
// start defaults to 0
// if start is negative, start will be counted from the end
// end default is array.length
// if end is negative, end will be counted from the end

// shallow copies part of an array to another location in the same array and returns it, without modifying its size
var array1 = [1, 2, 3, 4, 5];

// replace at 0 the elements between 3 and 4
console.log(array1.copyWithin(0, 3, 4)); 		// [4, 2, 3, 4, 5]

// replace at 1 the elements after 3
console.log(array1.copyWithin(1, 3)); 			// [4, 4, 5, 4, 5]

// replace the last 2 elements with the first 2 elements
[1, 2, 3, 4, 5].copyWithin(-2); 				// [1, 2, 3, 1, 2] 

// replace the elements from 0 with the elements from 3
[1, 2, 3, 4, 5].copyWithin(0, 3);				// [4, 5, 3, 4, 5] 

// replace first element with elements between 3 and 4 (4)
[1, 2, 3, 4, 5].copyWithin(0, 3, 4);			// [4, 2, 3, 4, 5] 

// replace the last 2 elements with elements between array.length -3 and array.length -1 (3, 4)
[1, 2, 3, 4, 5].copyWithin(-2, -3, -1);			// [1, 2, 3, 3, 4] 

// take the value of property 3 (1) and place it as the value for new property 0
[].copyWithin.call({length: 5, 3: 1}, 0, 3); 	// {0: 1, 3: 1, length: 5}

// ES2015 Typed Arrays are subclasses of Array
var i32a = new Int32Array([1, 2, 3, 4, 5]);

i32a.copyWithin(0, 2); 							
// Int32Array [3, 4, 5, 4, 5]

// On platforms that are not yet ES2015 compliant: 
[].copyWithin.call(new Int32Array([1, 2, 3, 4, 5]), 0, 3, 4);	
// Int32Array [4, 2, 3, 4, 5]
