// # Immediately Invoked Function Expression (IIFE)

// An IIFE is a function expression that is called immediately after you define it. It is usually used when you want to create a new variable scope.
// The (surrounding parenthesis) prevents the expression from being treated it as a function declaration. The final parenthesis() immediately executes the IIFE function.
// An IIFE...
// * Enables you to attach private data to a function.
// * Creates fresh environments.
// * Avoids polluting the global namespace.
// * Can be used to create a block scope for each loop iteration (see `let` in Closures section):

var result = [];

for (var i = 0; i < 5; i++) {
    result.push(function () {
		return i;
	});
}

console.log(result[1]()); 	// 5 - because `i` isn't block scoped to each iteration - see alternative 3 below
console.log(result[3]()); 	// 5 - because `i` isn't block scoped to each iteration - see alternative 3 below

// alternative 1
result = [];

for (var i = 0; i < 5; i++) {
	(function() { 				// use IIFE to create block scope for each iteration
		var j = i; 				// copy current value of i
		result.push(function() {
			return j;
		});
	})();
}

console.log(result[1]()); 		// 1
console.log(result[3]()); 		// 3

// alternative 2
result = [];

for (var i = 0; i < 5; i++) {
	(function(i) { 				// alt use of IIFE to create block scope for each iteration
		result.push(function() {
			return i;
		});
	})(i);
}

console.log(result[1]()); 		// 1
console.log(result[3]()); 		// 3

// alternative 3 (ES6)
result = [];

for (let i = 0; i < 5; i++) { 	// use `let` to create block scope for each iteration
	result.push(function() {
		return i;
	});
}

console.log(result[1]()); 		// 1
console.log(result[3]()); 		// 3
