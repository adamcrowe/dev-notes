// ! Function Expressions (assigned to var)

// function expression using anonymous function 
var square = function(number) { 
	return number * number; 
}; 

square(2);

// fn expression using named fn `fac` for recursion 
var factorial = function fac(n) { 
	return n < 2 ? 1 : n * fac(n - 1); 
}; 

console.log(factorial(3));
	
// Function expressions are convenient when passing a function as an argument to another function. The following example shows a `map()` function that should receive a function as first argument and an array as second argument. In the following code our `map()` function receives function defined by function expression and execute it for every element of array received as second argument:

function map(fn, arr) { 
	var result = []; 
	var i; 
	for (i = 0; i != arr.length; i++) {
		result[i] = fn(arr[i]); 
		return result; 
	}
} 

// function expression using anonymous fn 
var fn = function(x) { 
	return x * x * x; 
} 

var numbers = [0, 1, 2, 5, 10]; 
var cube = map(fn, numbers); 

console.log(cube); // [0, 1, 8, 125, 1000]

// function defined based on a condition 
var myFunc; 

if (num === 0) { 
	myFunc = function(obj) { 
		obj.make = 'Toyota'; 
	} 
}