// Object.prototype
// * Object's prototype is Object.prototype because Object is a constructor function 

var myObj = {}; // is using the constructor function: var myObj = new Object(); 
Object.getPrototypeOf(myObj) === Object.prototype; // true