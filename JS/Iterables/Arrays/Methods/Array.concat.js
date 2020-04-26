// ! .concat()

// merges two or more arrays (or values) and returns a new array 
var myArray = new Array('1', '2', '3'); 
myArray = myArray.concat('a', 'b', 'c'); 
console.log(myArray) 		// ["1", "2", "3", "a", "b", "c"]

var num1 = [1, 2, 3], num2 = [4, 5, 6], num3 = [7, 8, 9]; 
var nums = num1.concat(num2, num3); 
console.log(nums); 			// [1, 2, 3, 4, 5, 6, 7, 8, 9]

var alpha = ['a', 'b', 'c']; 
var alphaNumeric = alpha.concat(1, [2, 3]); 
console.log(alphaNumeric); 	// ['a', 'b', 'c', 1, 2, 3]

// concatenate nested arrays and retain reference 
var num1 = [[1]]; 
var num2 = [2, [3]]; 
var nums = num1.concat(num2); 
console.log(nums); 			// [[1], 2, [3]] 
num1[0].push(4); 
console.log(nums); 			// [[1, 4], 2, [3]]

// Does not recurse into nested array arguments (use .reduce instead)