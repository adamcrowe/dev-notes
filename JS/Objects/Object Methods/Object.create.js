// Object.create()

// create model object (prototype) 
var dog = {
	fetch: function() {
		console.log('fetch');
	}
}

// every object has the Object.prototype as its prototype 
var defaultObjectPrototype = Object.getPrototypeOf(dog); // object{} 

// Object.prototype is the last object in the prototype chain 
Object.getPrototypeOf(defaultObjectPrototype); 			// null 

// create object based on `dog` 
var myDog = Object.create(dog);

// set property 
myDog.name = 'Muttley';

// myDog has access to fetch method of prototype `dog` 
myDog.fetch(); // 'fetch' 

// check the prototype object of `myDog` 
Object.getPrototypeOf(myDog) === dog; 					// true

// move function from constructor to prototype: 

// before: 
function Dog(name) {
	this.name = name;
	this.fetch = function() {
		console.log('fetching');
	}
}

// after: 

// 1: create constructor 
function Dog(name) {
	this.name = name;
}

// 2: add function to Dog prototype 
Dog.prototype.fetch = function() {
	console.log('fetching');
}

// 3: create object from Dog constructor  
var myDog = new Dog('Muttley');

// 4: call fetch function 
myDog.fetch();		// fetching

// object copy function 
function copy(obj) { 
	const copy = Object.create(Object.getPrototypeOf(obj));
	const propNames = Object.getOwnPropertyNames(obj); 

	propNames.forEach(function(name) { 
		const desc = Object.getOwnPropertyDescriptor(obj, name); 
		Object.defineProperty(copy, name, desc); 
	}); 

	return copy; 
} 

const obj1 = { a: 1, b: 2 }; 
const obj2 = copy(obj1); 
console.log(obj2) 	// looks like obj1