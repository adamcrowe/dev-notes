// ! .reduceRight(callback[, initialValue])

// reduceRight() applies a function against an accumulator and each value of the array (from right-to-left) to reduce it to a single value

// flatten array of arrays (right to left) 
const array1 = [[0, 1], [2, 3], [4, 5]].reduceRight( 
	(previousValue, currentValue) => previousValue.concat(currentValue) 
); 

// flatten array of array (left to right) 
const array2 = [[0, 1], [2, 3], [4, 5]].reduce( 
	(previousValue, currentValue) => previousValue.concat(currentValue) 
); 

console.log(array1); // [4, 5, 2, 3, 0, 1] 
console.log(array2); // [0, 1, 2, 3, 4, 5]