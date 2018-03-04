// ! Getters and Setters

// You can define getters (accessor methods) and setters (mutator methods) on any standard built-in object or user-defined object that supports the addition of new properties. The syntax for defining getters and setters uses the object literal syntax.

// !! `get` binds an object property to a function that will be called when that property is looked up.

// get dynamic value 
var obj = { 
	log: ['a', 'b', 'c'], 
	get latest() { 
		if (this.log.length == 0) { 
			return undefined; 
		} 

		return this.log[this.log.length - 1]; 	
	} 
} 

console.log(obj.latest); // expected output: "c"

// remove getter 
delete obj.latest;
		
// append getter to an existing object using Object.defineProperty() 
var o = {a: 0}; 

Object.defineProperty(o, 'b', { get: function() { return this.a + 1; } }); 
console.log(o.b) 			// 1

// using computated property name 
var expr = 'foo'; 

var obj = { 
	get [expr]() { return 'bar'; } 
}; 

console.log(obj.foo); 		// "bar"

// !! `set` binds an object property to a function to be called when there is an attempt to set that property.

// basic example 
var language = { 
	set current(name) { 
		this.log.push(name); 
	}, 
	log: [] 
} 

language.current = 'EN'; 
language.current = 'FA'; 

console.log(language.log); 	// expected output: Array ["EN", "FA"]

// remove setter 
delete language.current;

// append a setter to an existing object 
var o = {a: 0}; 

Object.defineProperty(o, 'b', { set: function(x) { this.a = x / 2; } }); 

o.b = 10; 
console.log(o.a) 			// 5

// using computated property name 
var expr = 'foo'; 
var obj = { 
	baz: 'bar', 
	set [expr](v) { this.baz = v; } 
}; 

console.log(obj.baz); 		// "bar" 

obj.foo = 'baz';      		// run the setter 
console.log(obj.baz); 		// "baz"