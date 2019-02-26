// ! Arrow Functions
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions>

// An arrow function expression has a shorter syntax than a function expression and does not have its own `this`, `arguments`, `super`, or `new.target`.

var materials = ["Hydrogen", "Helium", "Lithium", "Beryllium"];

// longer syntax
materials.map(function(material) {
	return material.length;
}); // [8, 6, 7, 9]

// shorter syntax
materials.map(material => {
	return material.length;
}); // [8, 6, 7, 9]

// even shorter syntax (return is implicit)
materials.map(material => material.length); // [8, 6, 7, 9]

// Arrow functions capture the `this` value of the enclosing context, so the following works as expected:
function Person() {
	this.age = 0;

 	setInterval(() => {
		this.age++; // `this` properly refers to the person object
	}, 1000);
}

var p = new Person();