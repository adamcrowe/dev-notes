# Closures
* See Closures section of [course-javascript-weird-parts](https://github.com/adamcrowe/course-javascript-weird-parts)

# Definition
* Functions can return other functions: a function that returns another function is called a 'higher-order function'
* A closure is a 'stateful' function where a returned inner function has "enclosed" the external function's variables (or 'state')
* Because functions remember the variables they could see at creation, every nested function is a closure: The inner function "encloses" the scope ("lexical environment") of the outer function

```javascript
// Example 1
function init() {
	var name = 'Mozilla'; // `name` is scoped to the `init` function execution context
	function displayName() { // `displayName()` is the inner function which encloses any variables and arguments within `init`
		console.log(name);
	}
	displayName();
}
init(); // Mozilla

// Example 2
function makeFunc() {
	var name = 'Mozilla';
	function displayName() {
		console.log(name);
	}
	return displayName;	// returns a function that encloses the lexical environment of its parent `makeFunc`
}
var myFunc = makeFunc();
myFunc(); // runs `displayName()` which finds `name` within an enclosed lexical environment of `makeFunc`

// Example 3: Currying
function outside(x) {
	function inside(y) {
		return x + y;
	}
	return inside;
}

fn_inside = outside(3);	// `fn_inside` returns a function that adds 3 to whatever you give it
// fn_inside is a closure: it encloses `x` from the lexical environment of `outside`

result = fn_inside(5); // returns 8
result1 = outside(3)(5); // returns 8

// Example 4: Custom adders
function makeAdder(x) {
	return function(y) {
		return x + y;
	};
}

var add5 = makeAdder(5); // add5 is a reference to fn(y) and x = 5
var add10 = makeAdder(10); // add5 is a reference to fn(y) and x = 10

console.log(add5(2)); // 7 = fn(2) // 2 + 5
console.log(add10(2)); // 12 = fn(2) // 2 + 10

// `makeAdder` is a function factory – it creates functions which can add a specific value to their argument.
// In the above example we use our function factory to create two new functions – one that adds 5 to its argument, and one that adds 10.
// `add5` and `add10` are both closures. They share the same function body definition but store different lexical environments:
```

## Scope Chaining (Closure Chains)

```javascript
function A(x) {
	function B(y) {
		function C(z) {
			console.log(x + y + z);
		}
		C(3);
	}
	B(2);
}

console.log(A(1)); // 6 (1 + 2 + 3)
// * `C` accesses `B`'s `y` and `A`'s `x`. This can be done because:
// * `B` forms a closure including `A`, i.e. `B` can access `A`'s arguments and variables.
// * `C` forms a closure including B.
// * Because `B`'s closure includes `A`, and `C`'s closure includes `A`, `C` can: access both `B` and A's arguments and variables.
// * In other words, `C` chains the scopes of `B` and `A` in that order.
// * The reverse, however, is not true. `A` cannot access `C`, because A cannot
// * access any argument or variable of `B`, which `C` is a variable of.
// * Thus, `C` remains private to only `B`.
```

# Data Privacy and Simulated Private Methods
* The nesting of functions grants the inner function full access to the lexical environment of the outer function (and all other variables and functions that the outer function has access to).
* However, the outer function does not have access to the variables and functions defined inside the inner function. This provides a sort of encapsulation for the variables of the inner function.
* Also, since the inner function has access to the scope of the outer function, the variables and functions defined in the outer function will live longer than the duration of the inner function execution, if the inner function manages to survive beyond the life of the outer function.
* A closure is created when the inner function is somehow made available to any scope outside the outer function.

* Some languages provide the ability to declare methods private, meaning they can only be called by other methods in the same class. JS does not provide a native way of doing this, but it is possible to emulate private methods using closures.
* Private methods aren't just useful for restricting access to code: they also provide a powerful way of managing your global namespace, keeping non-essential methods from cluttering up the public interface to your code. You can use closures to define public functions that can access private functions and variables. Using closures in this way is known as the 'module pattern'.

* Closures are useful because they let you associate some data (the "lexical environment") with a function that operates on that data.
* This has obvious parallels to object-oriented programming, where objects allow us to associate some data (the object's properties) with one or more methods.
* Consequently, you can use a closure anywhere that you might normally use an object with only a single method.

```javascript
// Example 1: Bank Account Manager
const manageBankAccount = function(initialBalance) {
 	let accountBalance = initialBalance;

  	return {
		getBalance: function() {
			return accountBalance;
		},
		deposit: function(amount) {
			accountBalance += amount;
		},
		withdraw: function(amount) {
			if (amount > accountBalance) {
				return 'You cannot draw that much!';
			}

			accountBalance -= amount;
		}
  	};
};

const accountManager = manageBankAccount(0); // sets the initial balance and returns a closure

accountManager.deposit(1000);
accountManager.withdraw(500);
accountManager.getBalance();
```

* Notice the `accountBalance` cannot be directly accessed anymore; it can only be viewed via through `getBalance()`, and changed via `deposit()` and `withdraw()`
* Even though `manageBankAccount` created the `accountBalance` variable, the three methods of the returned object all have access to `accountBalance` via the closure

```javascript
// Example 2: Pet Names
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
pet.getName(); // Vivie
pet.setName('Oliver');
pet.setSex('male');
pet.getSex(); // male
pet.getName(); // Oliver
```

* The `name` variable of the outer function is accessible to the inner functions, and there is no other way to access the inner variables except through the inner functions.
* The inner variables of the inner functions act as safe stores for the outer arguments and variables. They hold "persistent" and "encapsulated" data for the inner functions to work with.
* The functions do not even have to be assigned to a variable, or have a name:

```javascript
// Example 3: Private key
var getAPICode = (function() {
	var apiCode = '0]Eal(eh&2';	// API code we do not want outsiders to be able to modify

	return function() {
		return apiCode;
	};
}()); // IIFE

getAPICode(); // '0]Eal(eh&2'

// Example 4: Private ID
function sendRequest() {
	var requestID = '123';

	$.ajax({
		url: '/myUrl',
		success: function(response) {
			alert('Request ' + requestID  + ' returned');
		}
	});
}

// Example 5: Counter (single)
var counter = (function() {
	var privateCounter = 0;

	function changeBy(val) {
		privateCounter += val;
	}

	return { // return an object containing functions that share the same lexical environment (`privateCounter` and `changeBy`)
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
```

* Here we create a single lexical environment that is shared by three functions: `counter.increment`, `counter.decrement`, and `counter.value`.
* The shared lexical environment is created in the body of an anonymous function, which is executed as soon as it has been defined.
* The lexical environment contains two private items: a variable called `privateCounter` and a function called `changeBy`.
* Neither of these private items can be accessed directly from outside the anonymous function; instead, they must be accessed by the three public functions that are returned from the anonymous wrapper.
* Those three public functions are closures that share the same environment. Thanks to JavaScript's lexical scoping, they each have access to the `privateCounter` variable and `changeBy` function.

* Notice we're defining an anonymous function that creates a counter, and then we call it immediately and assign the result to the counter variable.
* We could store this function in a separate variable `makeCounter` and use it to create several counters:

```javascript
// Example 6: Counter (multiple)
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
```

* Notice how each of the two counters, `counter1` and `counter2`, maintains independence from the other. Each closure references a different version of the `privateCounter` variable through its own closure.
* Each time one of the counters is called, its lexical environment changes by changing `privateCounter`; however changes to the variable value in one closure does not affect the value in the other closure.
* Using closures in this way provides a number of benefits that are normally associated with object-oriented programming – in particular, data hiding and encapsulation.

* In JavaScript, closures are the primary mechanism used to enable data encapsulation and privacy. This enables you to decide that some data should not be directly exposed.
* When you use closures for data privacy, the enclosed variables are only in scope within the containing (outer) function.
* You can only get at the data from an outside scope through the object's privileged methods.
* In JavaScript, any exposed method defined within the closure scope is privileged.

```javascript
// Example 7: Greeter
function sayHi(name) {
	var message = "Hi ${name}!";

	function greeting() {
		console.log(message);
	}

	return greeting; // return closure containing `message`
} 

var sayHiToJon = sayHi("Jon");
// sayHiToJon is a closure, it retains access to lexical environment of `sayHi()`
// sayHiToJon is a closure: it returns a fn whose var `message` is in closure scope
console.log(sayHiToJon); // ƒ() { console.log(message) } // return greeting() def.
console.log(sayHiToJon()); // 'Hi Jon!' - sayHiToJon retains access to enclosed var
```

* A closure can access variables in the outer scope. The returned function can access the message variable from the enclosing scope.
* A closure can access outer scope variables even after the outer function has returned. `sayHiToJon` is a reference to `greeting` created when `sayHi` was run.
* The `greeting` function maintains a reference to its outer scope  (its lexical environment) in which `message` exists.

```javascript
// Example 8: Registry
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
console.log(elementary); // { getStaff: ƒ, addStaff: ƒ } // `elementary` is a closure with access to two public functions
console.log(staff); // ReferenceError: staff is not defined // staff is private to `SpringfieldSchool` (out of global scope)

// the `elementary` closure allows us to access the `staff` variable only via public methods:
elementary.getStaff(); // ["Seymour Skinner", "Edna Krabappel"]
elementary.addStaff("Otto Mann");
elementary.getStaff(); // ["Seymour Skinner", "Edna Krabappel", "Otto Mann"]
```

# Closure Problems and Solutions

## Creating closures in loops: A common mistake

```html
<p id="help">Helpful notes will appear here</p>
<p>E-mail: <input type="text" id="email" name="email"></p>
<p>Name: <input type="text" id="name" name="name"></p>
<p>Age: <input type="text" id="age" name="age"></p>
```

```javascript
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
```

* The `helpText` array defines three helpful hints, each associated with the ID of an input field in the document.
* The loop cycles through these definitions, hooking up an onfocus event to each one that shows the associated help method.
* If you run this code, you'll see that it doesn't work as expected. No matter what field you focus on, the message about your age will be displayed.
* The reason for this is that the functions assigned to `onfocus` are closures; they consist of the function definition and the captured environment from the `setupHelp` function's scope.
* Three closures have been created by the loop, but each one shares the same single lexical environment, which has a variable with changing values (`item.help`).
* The value of `item.help` is determined when the `onfocus` callbacks are executed.
* Because the loop has already run its course by that time, the item variable object (shared by all three closures) points to the last entry in the `helpText` list.

* One solution in this case is to use more closures: in particular, to use a function factory as described earlier:

```javascript
function showHelp(help) {
	document.getElementById('help').innerHTML = help;
}

// function factory
function makeHelpCallback(help) {
	return function() { // `help` is uniquely enclosed in a new lexical environment for each iteration of `item`
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
		document.getElementById(item.id).onfocus = makeHelpCallback(item.help); // `makeHelpCallback` takes a unique lexical environment for each iteration of loop
	}
}
setupHelp();
```

* This works as expected. Rather than the callbacks all sharing a single lexical environment...
* ...the `makeHelpCallback` function creates a new lexical environment for each callback, in which help refers to the corresponding string from the `helpText` array.

* Another way to write the above is using anonymous closures:

```javascript
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
		})(); // IIFE creates a new function execution environment for each iteration and with a unique `item.help`
	}
}
setupHelp();
```

* If you don't want to use more closures, you can use the `let` keyword introduced in ES2015:

```javascript
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
```

* The above example uses `let` instead of `var`, so every closure binds the block-scoped variable, meaning that no additional closures are required.

* Another example...
* What is wrong with the following code and how would you fix it?

```javascript
const arr = [10, 12, 15, 21];

for (var i = 0; i < arr.length; i++) {
	setTimeout(function() {
		// setTimeout() encloses `i` (and `arr`)
		// these function calls will appear on the call stack
		// only after the loop has completed and when i is 4
		console.log(`The value ${arr[i]} is at index: ${i}`);
	}, (i + 1) * 1000);
}
```

* Considering the above code, the console will display four identical messages "The value undefined is at index: 4".
* This happens because each function executed within the loop will be occur after the whole loop has completed (see the event loop and call stack), referencing the last value stored in `i`, which was 4.
* This problem can be solved by using IIFE, which creates a unique scope for each iteration and storing each value within its scope:

```javascript
const arr = [10, 12, 15, 21];

for (var i = 0; i < arr.length; i++) {
	(function(j) { // IIFE creates a unique scope for each iteration
		setTimeout(function() {
			console.log(`The value ${arr[j]} is at index: ${j}`);
		}, j * 1000);
	})(i); // i is passed into j
}
```

* Another solution would be declaring the `i` variable with `let` (declares a variable of block scope).
* Because `i` is only available to the block scope, the inner function doesn't look outside itself to find `i` (as is the case with `var`):

```javascript
const arr = [10, 12, 15, 21];

for (let i = 0; i < arr.length; i++) { // let i is being re-bound to i in each iteration of the loop
	setTimeout(function() {
		console.log(`The value ${arr[i]} is at index: ${i}`);
	}, i * 1000);
}
```

* How the above code is working:

```javascript
{
	let k;
	for (k = 0; k < arr.length; k++) {
		let i = k; // create a new `i` for each iteration
		setTimeout(function() {
			`The value ${arr[i]} is at index: ${i}`;
		}, i * 1000);
	}
}
```

# Closures and Prototypes
* When creating a new object/class, methods should normally be associated to the object's prototype rather than defined into the object constructor.
* The reason is that whenever the constructor is called, the methods would get reassigned for every object creation.
* Consider the following case:

```javascript
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
```

* Because the previous code does not take advantage of closures, we could instead rewrite it as follows:

```javascript
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
```

* However, redefining the prototype is not recommended. The following example instead appends to the existing prototype:

```javascript
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
```

* In the two previous examples, the inherited prototype can be shared by all objects and the method definitions need not occur at every object creation.

# References
* [MDN: Closures](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures)
* [Learn JavaScript Closures in 6 Minutes](https://yazeedb.com/posts/learn-closures-in-6-minutes)
