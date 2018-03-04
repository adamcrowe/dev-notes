// ! Hoisting

// hoisting only works with function declaration and not with function expression 
console.log(square); 	// square is hoisted with an initial value undefined 
console.log(square(5)); // TypeError: square is not a function 

var square = function(n) { 
	return n * n; 
}