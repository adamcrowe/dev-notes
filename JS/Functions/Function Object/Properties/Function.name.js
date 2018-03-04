// ! Function.name
// Indicates the function's name as specified when it was created, or "anonymous" if unnamed.
// Property is read-only
 
// symbols as function names 
var sym1 = Symbol("foo"); 
var sym2 = Symbol(); 

var o = { 
	[sym1]: function(){}, 
	[sym2]: function(){} 
}; 

o[sym1].name; // "[foo]" 
o[sym2].name; // ""