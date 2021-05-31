# Execution Context
* An execution context is an environment where the JS code is evaluated and executed

## 3 Types of Execution Context

### Global Execution Context
* The global execution context is the default or base execution context. The code that is not inside any function is in the global execution context.
* The global execution context performs two things: it creates a global object (the window object for browsers) and sets the value of `this` to the global object.
* There can only be one global execution context in a program.

### Functional Execution Context
* Every time a function is invoked, a brand new execution context is created. Each function has its own execution context that is created when the function is invoked or called.
* There can be any number of function execution contexts. Whenever a new execution context is created, it goes through a series of steps in a defined order (explained below).

### Eval Function Execution Context
* Code executed inside an `eval` function also gets its own execution context. (`eval` isn't often used by JS developers.)

# Execution Stack (Call Stack)
* The Execution Stack is a stack with a LIFO (Last in, First out) structure, which is used to store all the execution context created during the code execution.
* When the JavaScript engine first encounters your script, it creates a global execution context and pushes it to the top (LIFO) of the current execution stack.
* Whenever the engine finds a function invocation, it creates a new execution context for that function and pushes it to the top (LIFO) of the execution stack.
* The engine executes the function whose execution context is at the top of the stack. When this function completes, its execution stack is popped off the stack.
* The engine then reaches to the execution context below it in the current stack.

## Example

```javascript
let a = 'Hello World!';

function first() {
  	console.log('Inside first function');
  	second();
  	console.log('Again inside first function');
}

function second() {
  	console.log('Inside second function');
}

first();
console.log('Inside Global Execution Context');
```

## The Execution Stack Progression

Global Execution Context
-----------------------------------
First() Function Execution Context
Global Execution Context
-----------------------------------
Second() Function Execution Context
First() Function Execution Context
Global Execution Context
-----------------------------------
First() Function Execution Context
Global Execution Context
-----------------------------------
Global Execution Context

* When the above code loads in the browser, the JS engine creates a global execution context and pushes it to the current execution stack.
* When a call to first() is encountered, the JS engines creates a new execution context for that function and pushes it to the top of the current execution stack.
* When the second() function is called from within the first() function, the JS engine creates a new execution context for that function and pushes it to the top of the current execution stack.
* When the second() function finishes, its execution context is popped off from the current stack, and the control reaches to the execution context below it, that is the first() function execution context.
* When the first() finishes, its execution stack is removed from the stack and control reaches to the global execution context.
* Once all the code is executed, the JS engine removes the global execution context from the current stack.

## Execution Context Creation
* The execution context is created in two phases: __CREATION PHASE__ and __EXECUTION PHASE__.

## CREATION PHASE
* This is where execution context is created. Following things happen during the creation phase:
	* 1. __LexicalEnvironment__ component is created.
	* 2. __VariableEnvironment__ component is created.

```javascript
ExecutionContext = {
  	LexicalEnvironment = <ref. to LexicalEnvironment in memory>,
  	VariableEnvironment = <ref. to VariableEnvironment in  memory>,
}
```

### 1. Lexical Environment
* The official ES6 docs define Lexical Environment as:

> A Lexical Environment is a specification type used to define the association of Identifiers to specific variables and functions based upon the lexical nesting structure of ECMAScript code. A Lexical Environment consists of an Environment Record and a possibly null reference to an outer Lexical Environment. -- <http://ecma-international.org/ecma-262/6.0/>

* A lexical environment is a structure that holds identifier-variable mapping.
* The identifier refers to the name of the variables/functions, and the variable is the reference to the actual object (including function object and array object) or to the primitive value.

```javascript
var a = 20;
var b = 40;

function foo() {
  	console.log('bar');
}
```

* The lexical environment for the above snippet looks like this:

```javascript
lexicalEnvironment = {
	a: 20, // identifier-variable
  	b: 40, // identifier-variable
  	foo: <ref. to foo function> // identifier-variable
}
```

* Each lexical environment has three components:
	* Environment Record
	* Reference to the outer environment
	* `this` binding

#### Environment Record
* The environment record is the place where the variable and function declarations are stored inside the lexical environment.
* There are two types of environment record:
	* __Declarative environment record__: Stores variable and function declarations.
		* The lexical environment for function code contains a declarative environment record.
	* __Object environment record__: The lexical environment for global code contains an object environment record.
		* Apart from variable and function declarations, the object environment record also stores a global binding object (window object in browsers).
		* For each of the binding object's properties (in case of browsers, it contains properties and methods provided by browser to the window object), a new entry is created in the record.

* Note: For the function code, the environment record also contains an `arguments` object that contains an indexes-arguments mapping as well as the length of the arguments.
* For example, an argument object for the below function looks like this: ```Arguments: {0: 2, 1: 3, length: 2}```

```javascript
function foo(a, b) {
	var c = a + b;
}
foo(2, 3); // Arguments: {0: 2, 1: 3, length: 2}
```

#### Reference to the Outer Environment
* The outer environment reference means the lexical environment has access to its outer lexical environment and its variables.

#### This Binding
* This is where the value of `this` is determined or set.
* In the global execution context, the value of `this` refers to the global object (in browsers, this refers to the Window Object).
* In the function execution context, the value of `this` depends on how the function is called:
	* If called by an object reference, then the value of `this` is set to that object, otherwise, the value of `this` is set to the global object or undefined (in strict mode). For example:

```javascript
const person = {
	name: 'peter',
	birthYear: 1994,
  	calcAge: function() {
    	console.log(2018 - this.birthYear);
  	}
}
person.calcAge();
// 'this' refers to 'person', because 'calcAge' was called with the 'person' object reference

const calculateAge = person.calcAge;
calculateAge();
// 'this' refers to the global window object because no object reference was given
```

* Abstractly, the lexical environment looks like this in pseudocode:

```javascript
GlobalExectionContext = {
  	LexicalEnvironment: {
    	EnvironmentRecord: {
      		Type: "Object",
      		// Identifier bindings go here
    	}
    	outer: <null>,
    	this: <global object>
  	}
}
FunctionExectionContext = {
  	LexicalEnvironment: {
    	EnvironmentRecord: {
      		Type: "Declarative",
      		// Identifier bindings go here
    	}
    	outer: <Global or outer function environment reference>,
    	this: <depends on how function is called>
  	}
}
```

### 2. Variable Environment
* A variable environment is also a Lexical Environment whose EnvironmentRecord holds bindings created by VariableStatements within this execution context.
* In ES6, one difference between __LexicalEnvironment__ component and the __VariableEnvironment__ component is that:
	* the former is used to store `function` declaration and variable (`let` and `const`) bindings, while...
	* the latter is used to store the variable (`var`) bindings only.

## EXECUTION PHASE
* In this phase assignments to all those variables are done and the code is finally executed.

```javascript
let a = 20;
const b = 30;
var c;

function multiply(e, f) {
 	var g = 20;
 	return e * f * g;
}
c = multiply(20, 30);
```

* When the above code is executed, the JS engine creates a global execution context to execute the global code.
* The __global execution context__ will look something like this during the creation phase:

```javascript
GlobalExectionContext = {
  	LexicalEnvironment: {
    	EnvironmentRecord: {
      		Type: "Object",
      		// Identifier bindings go here
      		a: <uninitialized>,
      		b: <uninitialized>,
      		multiply: <func>
    	}
    	outer: <null>,
    	ThisBinding: <Global Object>
  	},
  	VariableEnvironment: {
    	EnvironmentRecord: {
      		Type: "Object",
      		// Identifier bindings go here
      		c: undefined,
    	}
    	outer: <null>,
    	ThisBinding: <Global Object>
  	}
}
```

* During the execution phase, the variable assignments are done.
* The __global execution context__ will look something like this during the execution phase.

```javascript
GlobalExectionContext = {
	LexicalEnvironment: {
    	EnvironmentRecord: {
      		Type: "Object",
      		// Identifier bindings go here
      		a: 20,
      		b: 30,
      		multiply: <func>
    	}
    	outer: <null>,
    	ThisBinding: <Global Object>
  	},
	VariableEnvironment: {
    	EnvironmentRecord: {
      		Type: "Object",
      		// Identifier bindings go here
      		c: undefined,
    	}
    	outer: <null>,
    	ThisBinding: <Global Object>
  	}
}
```

* When a call to function `multiply(20, 30)` is encountered, a new function execution context is created to execute the function code.
* The __function execution context__ will look something like this during the creation phase:

```javascript
FunctionExectionContext = {
	LexicalEnvironment: {
    	EnvironmentRecord: {
      		Type: "Declarative",
      		// Identifier bindings go here
      		Arguments: {0: 20, 1: 30, length: 2},
    	},
    	outer: <GlobalLexicalEnvironment>,
    	ThisBinding: <Global Object or undefined>,
  	},
	VariableEnvironment: {
    	EnvironmentRecord: {
      		Type: "Declarative",
      		// Identifier bindings go here
      		g: undefined
    	},
    	outer: <GlobalLexicalEnvironment>,
    	ThisBinding: <Global Object or undefined>
  	}
}
```

* After this, the execution context goes through the execution phase that means assignments to the variables inside the function are done.
* The __function execution context__ will look something like this during the execution phase:

```javascript
FunctionExectionContext = {
	LexicalEnvironment: {
    	EnvironmentRecord: {
      		Type: "Declarative",
      		// Identifier bindings go here
      		Arguments: {0: 20, 1: 30, length: 2},
    	},
    	outer: <GlobalLexicalEnvironment>,
    	ThisBinding: <Global Object or undefined>,
  	},
	VariableEnvironment: {
    	EnvironmentRecord: {
      		Type: "Declarative",
      		// Identifier bindings go here
      		g: 20
    	},
    	outer: <GlobalLexicalEnvironment>,
    	ThisBinding: <Global Object or undefined>
  	}
}
```

* After the function completes, the returned value is stored inside `c`.
* The global lexical environment is updated. After that, the global code completes and the program finishes.

* Note: The `let` and `const` defined variables do not have any value associated with them during the creation phase, but `var` defined variables are set to `undefined`.
	* This is because, during the creation phase, the code is scanned for variable and function declarations; while the function declaration is stored in its entirety in the environment...
	* ...the variables are initially set to `undefined` (in case of `var`) or remain uninitialized (in case of `let` and `const`).
	* This is the reason why you can access `var` defined variables before they are declared (though `undefined`) but get a reference error when accessing let and const variables before they are declared.
	* This is, what we call "hoisting".

* Note: During the execution phase, if the JS engine couldn't find the value of `let` variable at the actual place it was declared in the source code, then it will assign it the value of `undefined`.


# References
* [Understanding Execution Context and Execution Stack in Javascript](https://blog.bitsrc.io/understanding-execution-context-and-execution-stack-in-javascript-1c9ea8642dd0)
* [What the heck is the event loop anyway? | Philip Roberts | JSConf EU](https://www.youtube.com/watch?v=8aGhZQkoFbQ)
* TODO: [JAVASCRIPT: UNDERSTANDING THE WEIRD PARTS](https://www.udemy.com/course/understand-javascript)

