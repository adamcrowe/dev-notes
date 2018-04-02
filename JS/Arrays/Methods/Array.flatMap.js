// ! .flatMap()

/* 
var new_array = arr.flatMap(function callback(currentValue[, index[, array]]) {
    // return element for new_array
}[, thisArg])
*/

// .flatMap() first maps each element using a mapping function, then flattens the result into a new array. 
// .flatMap() is identical to a .map() followed by a .flatten() of depth 1, but .flatMap() is slightly more efficient.

// map and flatMap
var arr1 = [1, 2, 3, 4];

arr1.map(x => [x * 2]);  		// [[2], [4], [6], [8]]
arr1.flatMap(x => [x * 2]); 	// [2, 4, 6, 8]

// only one level is flattened
arr1.flatMap(x => [[x * 2]]); 	// [[2], [4], [6], [8]]

// .flatMap alterative: reduce and concat
var arr1 = [1, 2, 3, 4];

arr1.flatMap(x => [x * 2]); 						// is equivalent to...
arr1.reduce((acc, x) => acc.concat([x * 2]), []); 	// [2, 4, 6, 8]
arr1.reduce((acc, x) => acc.concat(x * 2), []); 	// [2, 4, 6, 8]