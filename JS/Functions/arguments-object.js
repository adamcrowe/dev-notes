// ! Arguments Object
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments>

// The arguments of a function are maintained in an array-like object (arguments[0], arguments.length). The arguments can also be set: arguments[1] = 'new value';

// Using the arguments object, you can call a function with more arguments than it is formally declared to accept. This is often useful if you don't know in advance how many arguments will be passed to the function. For example, consider a function that concatenates several strings. The only formal argument for the function is a string that specifies the characters that separate the items to concatenate:

// (see shorter version of myConcat further below) 
function myConcat(separator) { 
	var result = ''; // initialize list 
	var i; 
	// iterate through arguments 
	for (i = 1; i < arguments.length; i++) { 
		result += arguments[i] + separator; 
	}

	return result; 
}

myConcat(', ', 'red', 'orange', 'blue'); 							// "red, orange, blue, " 
myConcat('; ', 'elephant', 'giraffe', 'lion', 'cheetah'); 			// "elephant; giraffe; lion; cheetah; " 
myConcat('. ', 'sage', 'basil', 'oregano', 'pepper', 'parsley'); 	// "sage. basil. oregano. pepper. parsley."

console.log(typeof arguments); 		// 'object'
console.log(typeof arguments[0]); 	// typeof first arg

var args = Array.from(arguments); 	// convert arguments into a real array
var args = [...arguments]; 			// convert arguments into a real array

// shorter myConcat using convert arguments to array: 
function myConcat(separator) { 
	var args = Array.prototype.slice.call(arguments, 1); 
	return args.join(separator); 
} 

myConcat(', ', 'red', 'orange', 'blue'); 							// "red, orange, blue" 
myConcat('; ', 'elephant', 'giraffe', 'lion', 'cheetah'); 			// "elephant; giraffe; lion; cheetah" 
myConcat('. ', 'sage', 'basil', 'oregano', 'pepper', 'parsley'); 	// "sage. basil. oregano. pepper. parsley"

// even shorter myConcat using rest parameters: 
function myConcat(separator, ...theArgs) {    
	return theArgs.join(separator); 
} 

myConcat(', ', 'red', 'orange', 'blue'); 							// "red, orange, blue" 
myConcat('; ', 'elephant', 'giraffe', 'lion', 'cheetah'); 			// "elephant; giraffe; lion; cheetah" 
myConcat('. ', 'sage', 'basil', 'oregano', 'pepper', 'parsley'); 	// "sage. basil. oregano. pepper. parsley"

// convert arguments to real array: 
function list(type) { // type is 'u' or 'o' 
	var result = '<' + type + 'l><li>'; // ul or ol list 
	var args = Array.prototype.slice.call(arguments, 1); 
	result += args.join('</li><li>'); 
	result += '</li></' + type + 'l>'; 
	return result; 
}

var listHTML = list('u', 'One', 'Two', 'Three'); // "<ul><li>One</li><li>Two</li><li>Three</li></ul>"