// ! typeof
var myFun = new Function('5 + 2'); 
var shape = 'round'; 
var size = 1; 
var foo = ['Apple', 'Mango', 'Orange']; 
var today = new Date(); 

typeof myFun;       // returns "function" 
typeof shape;       // returns "string" 
typeof size;        // returns "number" 
typeof foo;         // returns "object" (arrays are objects)
typeof today;       // returns "object" 
typeof doesntExist; // returns "undefined" 

typeof true; 		// returns "boolean" 
typeof null; 		// returns "object" 

typeof Date;      	// returns "function" 
typeof Function; 	// returns "function" 
typeof Math;      	// returns "object" 
typeof Option;    	// returns "function" 
typeof String;    	// returns "function"