// ! Prototypes and Inheritance
// Details of the object model
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Details_of_the_Object_Model>

// !! Prototypes:
// * A prototype is a blueprint or model of an object stored as an object.
// * Every object has a prototype (object), from which it inherits all of the prototype's properties.
// * Retrieve the prototype of an object using `Object.getPrototypeOf(myObject)`.
// * Whenever an object is created from a constructor function, it inherits a `.constructor` prototype.
// * The `.constructor` prototype links back the constructor function that used to create it the object.

function Dog(breed, name) {
	(this.breed = breed), (this.name = name);
}

Dog.prototype.describe = function() {
	console.log("${this.name} is a ${this.breed}");
}

const rusty = new Dog("Beagle", "Rusty");

// .prototype property points to inherited properties and the constructor:
console.log(Dog.prototype);		// { describe: ƒ , constructor: ƒ }

// rusty is an object created from the Dog constructor function:
console.log(rusty);				// { breed: "Beagle", name: "Rusty" }

// Object inherited properties from constructor function's prototype:
console.log(rusty.describe());	// "Rusty is a Beagle"

// .__proto__ property points to the .prototype property and the constructor:
console.log(rusty.__proto__);	// { describe: ƒ , constructor: ƒ }

// .constructor property points to the constructor of the object:
console.log(rusty.constructor);	// ƒ Dog(breed, name) { ... }

// !! Prototype Chain: The prototype chain is a series of links between objects that reference one another. When looking for a property in an object, the JavaScript engine will first try to access that property on the object itself. If it is not found, the JavaScript engine will look for that property on the object from which it inherited its properties: the object's prototype. The engine will traverse up the chain looking for that property and return the first one it finds. The last object in the chain is the built-in `Object.prototype`, which has null as its prototype. Once the engine reaches this object, it returns `undefined`.

// !! Own vs Inherited Properties: Objects have own properties and inherited properties. Own properties are properties that were defined on the object. Inherited properties were inherited through the prototype chain.

function Car() {}

Car.prototype.wheels = 4;
Car.prototype.airbags = 1;

var myCar = new Car();
myCar.color = "black";

// Check for Property including Prototype Chain:
console.log("airbags" in myCar);	// true
console.log(myCar.wheels);			// 4
console.log(myCar.year);			// undefined

// Check for Own Property (i.e., not inherited from prototype)
console.log(myCar.hasOwnProperty("airbags"));	// false — inherited
console.log(myCar.hasOwnProperty("color"));		// true

// `Object.create(obj)` Creates a new object with the specified prototype object and properties:
var dog = { legs: 4 };							// prototype object
var myDog = Object.create(dog);					// create using prototype

console.log(myDog.hasOwnProperty("legs"));		// false
console.log(myDog.legs);						// 4

// .__proto__ points to the .prototype property
console.log(myDog.__proto__ === dog);			// true

// !! Inheritance by reference: An inherited property is a copy by reference of the prototype object's property from which it inherited that property. If an object's property is mutated on the prototype, objects that inherited that property will share the same mutation. But if the property is replaced, the change will not be shared.

// Prototype Delegation:
var objProt = { text: "original" };
var objAttachedToProt = Object.create(objProt);
console.log(objAttachedToProt.text); // original

objProt.text = "prototype property changed";
console.log(objAttachedToProt.text); // prototype property changed

objProt = { text: "replacing property" };
console.log(objAttachedToProt.text); // prototype property changed

// !! Classical Inheritance vs. Prototypal Inheritance: "...the problem with object-oriented languages is they've got all this implicit environment that they carry around with them. You wanted a banana but what you got was a gorilla holding the banana and the entire jungle." ~ Joe Armstrong, Coders at Work

// !!! Class Inheritance: Instances inherit from classes (like a blueprint  or a description of the object to be created), and create sub-class relationships: hierarchical class taxonomies. Instances are typically instantiated via constructor functions with the `new` keyword. Class inheritance may or may not use the `class` keyword from ES6.

// !!! Prototypal Inheritance: Instances inherit directly from other objects. Instances are typically instantiated via factory functions or `Object.create()`. Instances may be composed from many different objects, allowing for easy selective inheritance.
// * The downside of classical inheritance is that it causes:
// ** inflexible hierarchy
// ** tight coupling problems
// ** fragile base class problems
// ** duplication problems (the gorilla/banana problem)

// In prototypal inheritance, objects inherit directly from other objects. Objects are typically created via Object.create(myPrototype), object literals or factory functions.
// * There are three different kinds of prototypal inheritance:
// ** Prototype Delegation: A delegate prototype is an object which is used as a model for another object. When you inherit from a delegate prototype, the new object gets a reference to the prototype and its properties. This process is usually accomplished by using Object.create().
// ** Concatenative Inheritance: The process of inheriting properties from one object to another by copying the object's prototype properties, without retaining a reference between them. This process is usually accomplished by using Object.assign().
// ** Functional Inheritance: This process makes use of a factory function (a function that is neither a class nor a constructor that returns an object without using the `new` keyword) to create an object, and then adds new properties directly to the created object. This process has the benefit of allowing data encapsulation via closure.

// Prototype Delegation:
var objProt = { text: "original" };
var objAttachedToProt = Object.create(objProt);
console.log(objAttachedToProt.text); // original

objProt.text = "prototype property changed";
console.log(objAttachedToProt.text); // prototype property changed

objProt = { text: "replacing property" };
console.log(objAttachedToProt.text); // replacing property

// Concatenative Inheritance using factory function:
var barker = (state) => ({
	bark: () => console.log('Woof, I am ' + state.name)
});

var driver = (state) => ({
	drive: () => state.position = state.position + state.speed
});

var killer = (state) => ({
	kill: () => console.log('Murder! Death! Kill!')
})

// murderRobotDog factory
var murderRobotDog = (name) => {
	let state = {
		name,
		speed: 100,
		position: 0
	}

	return Object.assign(	// combine objects and return single object
		{},
		barker(state),
		driver(state),
		killer(state)
	)
};

murderRobotDog('sniffles').bark(); 	// 'Woof, I am sniffles'
murderRobotDog('sniffles').kill(); 	// 'Murder! Death! Kill!'
murderRobotDog('sniffles').drive(); // '100'

// Functional Inheritance using factory function:
const person = function(name) {
	const message = "Hello! My name is ${name}";
	return {
		greeting: () => console.log(message)
	};
};

const will = person("Will");
will.greeting();	// Hello! My name is Will

// ! "Favor [prototypal] composition over [class] inheritance": Many developers agree that class inheritance should be avoided in most cases. In the class inheritance pattern you design your types regarding what they are, which makes it a very strict pattern. Composition, on the other hand, you design your types regarding what they do, which makes it more flexible and reusable.

// old way (class inheritance)
function Greeter(name) {
	this.name = name || "John Doe";
}

Greeter.prototype.hello = function hello() {
	return "Hello, my name is " + this.name + ".";
};

var george = new Greeter("George");
george.hello(); 	// Hello, my name is George

// new way (prototype delegation)
var proto = {
	hello: function hello() {
		return "Hello, my name is " + this.name + ".";
	}
};

// create object based on proto
var george = Object.create(proto);

// set property
george.name = "George";

// call prototype function
george.hello();		// Hello, my name is George.

// mixin style
var proto = {
	hello: function hello() {
		return "Hello, my name is " + this.name + ".";
	}
};

// http://underscorejs.org/#extend
var george = _.extend({}, proto, { name: "George" });

// or use ES6 Object.assign()
var george = Object.assign(
	{},
	proto,
	{ name: "George" }
);