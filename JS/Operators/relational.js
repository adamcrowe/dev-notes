// ! Relational 
// !! `in` returns true if property is in the object

// arrays 
var trees = ['redwood', 'bay', 'cedar', 'oak', 'maple']; 
0 in trees;			// returns true 
3 in trees;			// returns true 
6 in trees;			// returns false 

'bay' in trees;		// returns false (you must specify the index number, not the value at that index) 
'length' in trees;  // returns true (length is an Array property) 

// built-in objects 
'PI' in Math;			// returns true 
var myString = new String('coral'); 
'length' in myString;  // returns true (length is an String property) 

// custom objects 
var mycar = { make: 'Honda', model: 'Accord', year: 1998 }; 
'make' in mycar;       // returns true 
'model' in mycar;      // returns true
  
// !! `in` returns true if property is in object prototype chain
'toString' in {}; // returns true

// !! `instanceof` returns true if the object is of object type
var theDay = new Date(1995, 12, 17); 
if (theDay instanceof Date) { 
	// statements to execute 
}