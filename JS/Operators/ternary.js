// ! Ternary

// multiple operations per case using comma separators: 
var stop = false, age = 23; 

age > 18 ? ( 
	alert('OK, you can go.'), 
	location.assign('continue.html') 
) : ( 
	stop = true, 
	alert('Sorry, you are much too young!') 
);

// multiple operations during the assignation of a value 
var age = 16; 
var url = age > 18 ? ( 
	alert('OK, you can go.'), 
	// alert returns "undefined", but it will be ignored because it isn't the last comma-separated value of the parenthesis 
	'continue.html' // the value to be assigned if age > 18 
) : ( 
	alert('You are much too young!'), 
	alert('Sorry :-('), 
	// etc. etc. 
	'stop.html' // the value to be assigned if !(age > 18) 
); 

location.assign(url); // "stop.html"

// > A good way to spot that the ternary will be a suitable replacement for an if/else statement is when the return keyword is used multiple times and is the only expression inside of the if block.
var func1 = function( .. ) { 
	if (condition1) { return value1 } 
	else if (condition2) { return value2 } 
	else if (condition3) { return value3 } 
	else { return value4 } 
} 

// simplify using ternary with single return
var func2 = function( .. ) { 
	return 	condition1 ? value1 
		: 	condition2 ? value2 
		: 	condition3 ? value3 
		:              	 value4 
}