// Closures
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures>

// Functions can always remember the variables that they could see at creation. Every nested function is a closure: the nested function "inherits" the arguments and variables of its containing function. In other words, the inner function contains or "encloses" the scope ("lexical environment") of the outer function. The inner function forms a closure: the inner function can use the arguments and variables of the outer function, while the outer function cannot use the arguments and variables of the inner function.

function init() {
	var name = 'Mozilla';		// name is a local variable created by init
	function displayName() {	// displayName() is the inner function, a closure
		alert(name);			// use enclosed variable declared in the parent function   
	}
	displayName();
}

init();

function makeFunc() {
	var name = 'Mozilla';
	function displayName() {
		alert(name);
	}
	return displayName;		// returns the function and lexical environment
}

var myFunc = makeFunc();
myFunc(); 					// run displayName() using its lexical environment makeFunc()

function outside(x) {
	function inside(y) {
		return x + y;
	}
	return inside;
}

fn_inside = outside(3);		// give me a function that adds 3 to whatever you give it
// fn_inside is a closure: it encloses outside's scope/"lexical environment" var x

result = fn_inside(5); 		// returns 8
result1 = outside(3)(5); 	// returns 8

function makeAdder(x) {
	return function(y) {
		return x + y;
	};
}

var add5 = makeAdder(5); 	// add5 is a reference to fn(y) and x = 5
var add10 = makeAdder(10); 	// add5 is a reference to fn(y) and x = 10

console.log(add5(2));		// 7 = fn(2) // 2 + 5
console.log(add10(2));		// 12 = fn(2) // 2 + 10

// In essence, makeAdder is a function factory – it creates functions which can add a specific value to their argument. In the above example we use our function factory to create two new functions – one that adds 5 to its argument, and one that adds 10. add5 and add10 are both closures. They share the same function body definition, but store different lexical environments. In add5's lexical environment, x is 5, while in the lexical environment for add10, x is 10.

// # Scope Chaining (Closure Chains)

function A(x) {
	function B(y) {
		function C(z) {
			console.log(x + y + z);
		}
		C(3);
	}
	B(2);
}

console.log( A(1) ); // 6 (1 + 2 + 3)
// * C accesses B's y and A's x. This can be done because:
//  * B forms a closure including A, i.e. B can access A's arguments and variables.
//  * C forms a closure including B.
// * Because B's closure includes A, C's closure includes A, C can:
//  * access both B and A's arguments and variables.
//  * In other words, C chains the scopes of B and A in that order.
//  * The reverse, however, is not true. A cannot access C, because A cannot
//  * access any argument or variable of B, which C is a variable of.
//  * Thus, C remains private to only B.

// # Data Privacy and Simulated Private Methods
// JavaScript allows for the nesting of functions and grants the inner function full access to all the variables and functions defined inside the outer function (and all other variables and functions that the outer function has access to). However, the outer function does not have access to the variables and functions defined inside the inner function. This provides a sort of encapsulation for the variables of the inner function. Also, since the inner function has access to the scope of the outer function, the variables and functions defined in the outer function will live longer than the duration of the inner function execution, if the inner function manages to survive beyond the life of the outer function. A closure is created when the inner function is somehow made available to any scope outside the outer function.

// Languages such as Java provide the ability to declare methods private, meaning that they can only be called by other methods in the same class.  JavaScript does not provide a native way of doing this, but it is possible to emulate private methods using closures. Private methods aren't just useful for restricting access to code: they also provide a powerful way of managing your global namespace, keeping non-essential methods from cluttering up the public interface to your code. You can use closures to define public functions that can access private functions and variables. Using closures in this way is known as the module pattern:

// Closures are useful because they let you associate some data (the "lexical environment") with a function that operates on that data. This has obvious parallels to object-oriented programming, where objects allow us to associate some data (the object's properties) with one or more methods. Consequently, you can use a closure anywhere that you might normally use an object with only a single method.

var createPet = function(name) {
	var sex;
	return {
		setName: function(newName) {
			name = newName;
		},
		getName: function() {
			return name;
		},
		getSex: function() {
			return sex;
		},
		setSex: function(newSex) {
			if(typeof newSex === 'string' && (newSex.toLowerCase() === 'male' || newSex.toLowerCase() === 'female')) {
				sex = newSex;
			}
		}
	}
}

var pet = createPet('Vivie');
pet.getName();          // Vivie
pet.setName('Oliver');
pet.setSex('male');
pet.getSex();           // male
pet.getName();          // Oliver

// The `name` variable of the outer function is accessible to the inner functions, and there is no other way to access the inner variables except through the inner functions. The inner variables of the inner functions act as safe stores for the outer arguments and variables. They hold "persistent" and "encapsulated" data for the inner functions to work with. The functions do not even have to be assigned to a variable, or have a name:

var getCode = (function() { 		// IIFE
	var apiCode = '0]Eal(eh&2';		// An API code we do not want outsiders to be able to modify...
	return function() {
		return apiCode;
	};
}()); 								// IIFE

getCode();							// '0]Eal(eh&2'

var counter = (function() {
	var privateCounter = 0;
	function changeBy(val) {
		privateCounter += val;
	}
	return {
		increment: function() {
			changeBy(1);
		},
		decrement: function() {
			changeBy(-1);
		},
		value: function() {
			return privateCounter;
		}
	};  
})(); // IIFE

console.log(counter.value()); // logs 0
counter.increment();
counter.increment();
console.log(counter.value()); // logs 2
counter.decrement();
console.log(counter.value()); // logs 1

// Here we create a single lexical environment that is shared by three functions: `counter.increment`, `counter.decrement`, and `counter.value`. The shared lexical environment is created in the body of an anonymous function, which is executed as soon as it has been defined. The lexical environment contains two private items: a variable called `privateCounter` and a function called `changeBy`. Neither of these private items can be accessed directly from outside the anonymous function. Instead, they must be accessed by the three public functions that are returned from the anonymous wrapper. Those three public functions are closures that share the same environment. Thanks to JavaScript's lexical scoping, they each have access to the `privateCounter` variable and `changeBy` function.

// You'll notice we're defining an anonymous function that creates a counter, and then we call it immediately and assign the result to the counter variable. We could store this function in a separate variable makeCounter and use it to create several counters:

var makeCounter = function() {
	var privateCounter = 0;
	function changeBy(val) {
		privateCounter += val;
	}
	return {
		increment: function() {
			changeBy(1);
		},
		decrement: function() {
			changeBy(-1);
		},
		value: function() {
			return privateCounter;
		}
	} 
};

var counter1 = makeCounter();
var counter2 = makeCounter();
alert(counter1.value()); // Alerts 0

counter1.increment();
counter1.increment();
alert(counter1.value()); // Alerts 2

counter1.decrement();
alert(counter1.value()); // Alerts 1
alert(counter2.value()); // Alerts 0

// Notice how each of the two counters, counter1 and counter2, maintains its independence from the other. Each closure references a different version of the privateCounter variable through its own closure. Each time one of the counters is called, its lexical environment changes by changing the value of this variable; however changes to the variable value in one closure does not affect the value in the other closure.

// Using closures in this way provides a number of benefits that are normally associated with object-oriented programming – in particular, data hiding and encapsulation.

// In JavaScript, closures are the primary mechanism used to enable data encapsulation and privacy. This enables you to decide that some data should not be directly exposed. When you use closures for data privacy, the enclosed variables are only in scope within the containing (outer) function. You can't get at the data from an outside scope except through the object's privileged methods. In JavaScript, any exposed method defined within the closure scope is privileged.

function sayHi(name) {
	var message = "Hi ${name}!";
	function greeting() {
		console.log(message);
	}
	return greeting; // return function def. with enclosed var `message`
} 

var sayHiToJon = sayHi("Jon");
// sayHiToJon is a closure, it retains access to vars in the enclosing scope sayHi()
// sayHiToJon is a closure: it returns a fn whose var `message` is in closure scope
console.log(sayHiToJon); 	// ƒ() { console.log(message) } // return greeting() def.
console.log(sayHiToJon()); 	// 'Hi Jon!' - sayHiToJon retains access to enclosed var

// A closure can refer to variables in the outer scope. The returned function can access the message variable from the enclosing scope.

// A closure can refer to outer scope variables even after the outer function has returned. sayHiToJon is a reference to the greeting function, created when sayHi was run. The greeting function maintains a reference to its outer scope (its environment) in which the message exists.

function SpringfieldSchool() {
	let staff = ["Seymour Skinner", "Edna Krabappel"];
	return {
		getStaff: function() {
			console.log(staff);
		},
		addStaff: function(name) {
			staff.push(name);
		}
	};
}

let elementary = SpringfieldSchool();
console.log(elementary); 	// { getStaff: ƒ, addStaff: ƒ }
console.log(staff); 		// ReferenceError: staff is not defined

// elementary closure allows us to access the staff variable:
elementary.getStaff(); 		// ["Seymour Skinner", "Edna Krabappel"]
elementary.addStaff("Otto Mann");
elementary.getStaff(); 		// ["Seymour Skinner", "Edna Krabappel", "Otto Mann"]

function sendRequest() {
	var requestID = '123';
	$.ajax({
		url: '/myUrl',
		success: function(response) {
			alert('Request ' + requestID  + ' returned');
		}
	});
}

// # Closure Problems and Solutions
// ## Creating closures in loops: A common mistake
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures>

// <p id="help">Helpful notes will appear here</p>
// <p>E-mail: <input type="text" id="email" name="email"></p>
// <p>Name: <input type="text" id="name" name="name"></p>
// <p>Age: <input type="text" id="age" name="age"></p>

function showHelp(help) { // see below: `help` will always be last in loop (see explanation below)
	document.getElementById('help').innerHTML = help;
}

function setupHelp() {
	var helpText = [
		{'id': 'email', 'help': 'Your e-mail address'},
		{'id': 'name', 'help': 'Your full name'},
		{'id': 'age', 'help': 'Your age (you must be over 16)'}
	];

	for (var i = 0; i < helpText.length; i++) {
		var item = helpText[i];
		document.getElementById(item.id).onfocus = function() {
			showHelp(item.help); // when called `item.help` will always be last in loop (see explanation below)
		}
	}
}
setupHelp();

// The `helpText` array defines three helpful hints, each associated with the ID of an input field in the document. The loop cycles through these definitions, hooking up an onfocus event to each one that shows the associated help method. If you run this code, you'll see that it doesn't work as expected. No matter what field you focus on, the message about your age will be displayed.

// The reason for this is that the functions assigned to `onfocus` are closures; they consist of the function definition and the captured environment from the `setupHelp`function's scope. Three closures have been created by the loop, but each one shares the same single lexical environment, which has a variable with changing values (`item.help`). The value of `item.help` is determined when the `onfocus` callbacks are executed. Because the loop has already run its course by that time, the item variable object (shared by all three closures) has been left pointing to the last entry in the `helpText` list.

// One solution in this case is to use more closures: in particular, to use a function factory as described earlier:

function showHelp(help) {
	document.getElementById('help').innerHTML = help;
}

// function factory
function makeHelpCallback(help) {
	return function() { // `help` is uniquely enclosed from each iteration of `item.id`
		showHelp(help);
	};
}

function setupHelp() {
	var helpText = [
		{'id': 'email', 'help': 'Your e-mail address'},
		{'id': 'name', 'help': 'Your full name'},
		{'id': 'age', 'help': 'Your age (you must be over 16)'}
	];

 	for (var i = 0; i < helpText.length; i++) {
		var item = helpText[i];
		document.getElementById(item.id).onfocus = makeHelpCallback(item.help);
		// `makeHelpCallback` takes a unique lexical environment for each iteration of loop
	}
}
setupHelp();

// This works as expected. Rather than the callbacks all sharing a single lexical environment, the `makeHelpCallback` function creates a new lexical environment for each callback, in which help refers to the corresponding string from the `helpText` array.

// Another way to write the above using anonymous closures is:

function showHelp(help) {
	document.getElementById('help').innerHTML = help;
}

function setupHelp() {
	var helpText = [
		{'id': 'email', 'help': 'Your e-mail address'},
		{'id': 'name', 'help': 'Your full name'},
		{'id': 'age', 'help': 'Your age (you must be over 16)'}
	];

	for (var i = 0; i < helpText.length; i++) {
		(function() {
			var item = helpText[i];
			document.getElementById(item.id).onfocus = function() {
				showHelp(item.help);
			}
		})(); // IIFE creates an event listener with a unique `item.help` for each iteration
	}
}
setupHelp();

// If you don't want to use more closures, you can use the `let` keyword introduced in ES2015:

function showHelp(help) {
	document.getElementById('help').innerHTML = help;
}

function setupHelp() {
	var helpText = [
		{'id': 'email', 'help': 'Your e-mail address'},
		{'id': 'name', 'help': 'Your full name'},
		{'id': 'age', 'help': 'Your age (you must be over 16)'}
	];

	for (var i = 0; i < helpText.length; i++) {
		let item = helpText[i]; // `let` creates a new block scope for each iteration
		document.getElementById(item.id).onfocus = function() {
			showHelp(item.help);
		}
	}
}
setupHelp();

// The above example uses `let` instead of `var`, so every closure binds the block-scoped variable, meaning that no additional closures are required.

// What is wrong with the following code and how would you fix it?

const arr = [10, 12, 15, 21];

for (var i = 0; i < arr.length; i++) {
	setTimeout(function() {
		// setTimeout() encloses `i` (and `arr`)
		// these function calls will appear on the call stack
		// only after the loop has completed and when i is 4
		console.log(`The value ${arr[i]} is at index: ${i}`);
	}, (i + 1) * 1000);
}

// Considering the above code, the console will display four identical messages "The value undefined is at index: 4". This happens because each function executed within the loop will be executed after the whole loop has completed (see the event loop and call stack), referencing the last value stored in `i`, which was 4. This problem can be solved by using IIFE, which creates a unique scope for each iteration and storing each value within its scope:

const arr = [10, 12, 15, 21];

for (var i = 0; i < arr.length; i++) {
	(function(j) { 				// IIFE creates a unique scope for each iteration
		setTimeout(function() {
			console.log(`The value ${arr[j]} is at index: ${j}`);
		}, j * 1000);
	})(i); 						// i is passed into j
}

// Another solution would be declaring the `i` variable with `let` (declares a variable of block scope), which creates the same result because `i` is only available to the block scope and so the inner function doesn't look outside to find `i` (as in the case of `var`):

const arr = [10, 12, 15, 21];

for (let i = 0; i < arr.length; i++) {
	// let i is being re-bound to i in each iteration of the loop
	setTimeout(function() {
		console.log(`The value ${arr[i]} is at index: ${i}`);
	}, i * 1000);
}

// How the above code is working:
{
	let k;
	for (k = 0; k < arr.length; k++) {
		let i = k; // create a new `i` for each iteration
		setTimeout(function() {
			`The value ${arr[i]} is at index: ${i}`;
		}, i * 1000);
	}
}

// # Closures and Prototypes
// When creating a new object/class, methods should normally be associated to the object's prototype rather than defined into the object constructor. The reason is that whenever the constructor is called, the methods would get reassigned (that is, for every object creation). Consider the following case:

function MyObject(name, message) {
	this.name = name.toString();
	this.message = message.toString();
	this.getName = function() {
		return this.name;
	};
	this.getMessage = function() {
		return this.message;
	};
}

// Because the previous code does not take advantage of closures, we could instead rewrite it as follows:

function MyObject(name, message) {
	this.name = name.toString();
	this.message = message.toString();
}

MyObject.prototype = {
	getName: function() {
		return this.name;
	},
	getMessage: function() {
		return this.message;
	}
};

/// However, redefining the prototype is not recommended. The following example instead appends to the existing prototype:

function MyObject(name, message) {
	this.name = name.toString();
	this.message = message.toString();
}

MyObject.prototype.getName = function() {
	return this.name; // `getName` encloses `this.name` from `MyObject`
};

MyObject.prototype.getMessage = function() {
	return this.message;
};

// In the two previous examples, the inherited prototype can be shared by all objects and the method definitions need not occur at every object creation.
