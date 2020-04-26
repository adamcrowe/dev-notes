// ! .prototype()

// The Array.prototype property represents the prototype for the Array constructor and allows you to add new properties and methods to all Array objects. Array instances inherit from Array.prototype. As with all constructors, you can change the constructor's prototype object to make changes to all Array instances. For example, you can add new methods and properties to extend all Array objects. 

// add a new method returning the first element of an array 
if (!Array.prototype.first) { 
	Array.prototype.first = function() { 
		return this[0]; 
	} 
}