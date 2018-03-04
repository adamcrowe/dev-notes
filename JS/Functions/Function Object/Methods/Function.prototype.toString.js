// ! Function.prototype.toString()
// the .toString() method returns a string representing the source code of the function.

function sum(a, b) { 
	return a + b; 
} 

console.log(sum.toString()); 
// expected output: "function sum(a, b) { 
	// return a + b; 
// }" 

console.log(Math.abs.toString()); 
// expected output: "function abs() { [native code] }"