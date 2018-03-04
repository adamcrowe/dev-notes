// ! Function.length
// `length` is a property of a function object, and indicates how many arguments the function expects, i.e. the number of formal parameters. This number excludes the `rest` parameter and only includes parameters before the first one with a default value. By contrast, `arguments.length` is local to a function and provides the number of arguments actually passed to the function.
 
function func1() {} 
function func2(a, b) {} 

console.log(func1.length); // expected output: 0 
console.log(func2.length); // expected output: 2

console.log(Function.length); 					// 1 
console.log(Function.prototype.length 			// 0 
console.log((function() {}).length); 			// 0 
console.log((function(a) {}).length); 			// 1 
console.log((function(a, b) {}).length); 		// 2 
console.log((function(...args) {}).length); 	// 0, rest parameter is not counted 
console.log((function(a, b = 1, c) {}).length); // 1 - only parms before the first with default value are counted