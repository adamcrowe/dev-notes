TODO: [Hello, declarative world](http://codon.com/hello-declarative-world)

# PROGRAMMING PARADIGMS

## OOP

* An object is a way of encapsulating state and behaviour. Objects communicate via messages.
* Strengths: Modelling real world objects; Re-usability; Easier to test

## Functional

* Functions take in data and output data; they neither store state nor mutate incoming data.
* Strengths: No concurrency; Brevity; Re-usability; Easier to test (don't need to set object state)
* Resources: Books: The Little Schemer; SICP

## Logic (Prolog)

* What not how. Facts and clauses. Rules specify relationships between facts (pattern matching).
* Strengths: Flexibility; Constraint-based calculations
* Resources:
	* Talks: A Taste of Prolog
	* Books: The Art of Prolog (Sterling), Prolog Programming for the Working Programmer (Clocksin)

## Procedural (Assembly):

* Two registers: D is for data, A is for data or addresses.
* Strengths: None
* Resources:
	* Courses: NAND to Tetris
	* Books: The Elements of Computer Systems: Building a Modern Computer from First Principles (Nisan)

# General Resources

* Books:
	* Exercises in Programming Style (Lopes)
	* Seven Languages in Seven Weeks

---

# IMPERATIVE VS DECLARATIVE/FUNCTIONAL

> Imperative programming is about telling your machine _how_ to do something, while Declarative programming really is about telling your machine _what_ you would like to happen in order to do something. -- [Declarative vs. Imperative Programming for the Web](http://codenugget.co/2015/03/05/declarative-vs-imperative-programming-web.html)

## Example 1:

From: [Imperative and (Functional) Declarative JS In Practice](http://www.redotheweb.com/2015/09/18/declarative-imperative-js.html)

### Imperative Implementation

```javascript
// imperative implementation
export function getNestedValue(object, propertyName) {
	if (!propertyName) throw new Error("Impossible to set null property");
	var subObject = object;
	var parts = propertyName.split(".");
	var len = parts.length;
	var i;

	for (i = 0; i < len; i++) {
		if (!subObject || typeof subObject === "undefined") return undefined;
		subObject = subObject[parts[i]];
	}

	return subObject;
}
```

> What’s “imperative” in this script? The script is basically telling the computer _how_ to do something, and as a result what you want to happen will happen. After all, that’s what most programmers are taught to do, right? Right, you’re usually doing imperative programming without knowing it. -- [Imperative and (Functional) Declarative JS In Practice](http://www.redotheweb.com/2015/09/18/declarative-imperative-js.html)

### Declarative (Functional) Implementation

> It turns out there is another way: the “declarative” way. In declarative programming, the program tells the computer _what_ you would like to happen, and lets the computer figure out how to do it. -- [Imperative and (Functional) Declarative JS In Practice](http://www.redotheweb.com/2015/09/18/declarative-imperative-js.html)

```javascript
// declarative/functional implementation
function getValue(object, propertyName) {
	if (!propertyName) throw new Error("Impossible to set null property");
	return typeof object === "undefined" ? undefined : object[propertyName];
}

export function getNestedValue(object, propertyName) {
	return propertyName.split(".").reduce(getValue, object);
}
```

> Did you notice? The imperative style requires the definition of four local variables (subObject, parts, len, and i), while the declarative style only uses function parameters. Less variable declarations, less questions about variable naming, less questions about variable scope… That’s a huge benefit I think. In fact, one thing declarative programming gets out of the way is to manage state, and that’s a huge relief. -- [Imperative and (Functional) Declarative JS In Practice](http://www.redotheweb.com/2015/09/18/declarative-imperative-js.html)

## Example 2:

- From: [Declarative vs. Imperative Programming for the Web](http://codenugget.co/2015/03/05/declarative-vs-imperative-programming-web.html)

### Imperative Implementation

```javascript
// imperative implementation
function sumOfSquares(nums) {
	var i;
	var sum = 0;
	var squares = [];

	for (i = 0; i < nums.length; i++) {
			squares.push(nums[i] * nums[i]);
	}

	for (i = 0; i < squares.length; i++) {
			sum += squares[i];
	}

	return sum;
}
console.log(sumOfSquares([1, 2, 3, 4, 5]));
```

### Declarative (Functional) Implementation

```javascript
// declarative/functional implementation
function sumOfSquares(nums) {
	return nums
		.map(function (num) {
			return num * num;
		})
		.reduce(function (start, num) {
			return start + num;
		}, 0);
}
console.log(sumOfSquares([1, 2, 3, 4, 5]));
```

## Example 3:

From: [Declarative vs. Imperative Programming for the Web](http://codenugget.co/2015/03/05/declarative-vs-imperative-programming-web.html)

### Imperative Implementation

```javascript
// imperative implementation
jQuery(function ($) {
	var username = "";
	var password = "";

	// Disable the button at start
	$("#signup-button").attr("disabled", true);

	// Email field
	$("#email-field").on("blur", function () {
		username = $(this).val();
		if (username == "") {
			$("#email-error").html("Please enter email address");
			$("#signup-button").attr("disabled", true);
		}
		else {
			checkValues();
		}
	});

	// Password field
	$("#password-field").on("blur", function () {
		password = $(this).val();
		if (password == "") {
			$("#password-error").html("Please enter password");
			$("#signup-button").attr("disabled", true);
		}
		else {
			checkValues();
		}
	});

	// Both fields
	function checkValues() {
		if (username != "" && password != "") {
			$("#email-error").html("");
			$("#password-error").html("");
			$("#signup-button").attr("disabled", false);
		}
	}
});
```

### Declarative (Functional) Implementation

```javascript
// declarative/functional implementation
jQuery(function ($) {
	function checkIfEmpty(e) {
		return !e.target.value;
	}

	function checkIfBothEmpty(noEmail, noPass) {
		return noEmail || noPass;
	}

	function getEmailMessage(noEmail) {
		return noEmail ? "Please enter email address." : "";
	}

	function getPasswordMessage(noPassword) {
		return noPassword ? "Please enter password." : "";
	}

	// Email field
	var email = $("#email-field").asEventStream("blur").map(checkIfEmpty);
	email.map(getEmailMessage).assign($("#email-error"), "html");

	// Password field
	var password = $("#password-field").asEventStream("blur").map(checkIfEmpty);
	password.map(getPasswordMessage).assign($("#password-error"), "html");

	// Both fields
	Bacon.combineWith(checkIfBothEmpty, email, password) // Bacon.js
		.assign($("#signup-button"), "attr", "disabled");
});
```

# References
* [Aja Hammerly: 4 Programming Paradigms In 40 Minutes](https://www.youtube.com/watch?v=cgVVZMfLjEI)
* [Imperative and (Functional) Declarative JS In Practice](http://www.redotheweb.com/2015/09/18/declarative-imperative-js.html)
* [Declarative vs. Imperative Programming for the Web](http://codenugget.co/2015/03/05/declarative-vs-imperative-programming-web.html)
