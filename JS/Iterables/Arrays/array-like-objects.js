// ! Array-like Objects
// Have various numbered elements and a `.length` property but do not have array methods

// !! Array-like Objects
// * String
// * HTML DOM NodeList (returned by document.getElementsByTagName(), document.forms(), etc.)
// * The `arguments` object accessible within the body of a function

// `Array.prototype` methods can be called against array-like objects:
function printArguments() {
	Array.prototype.forEach.call(arguments, function(item) {
 		console.log(item);
	});
}

function explodeString(string) {
	Array.prototype.forEach.call(string, function(chr) {
		console.log(chr);
	});
}

explodeString('my string');

// Sometimes the best way to work with an array-like object is to convert it to an array:
Array.prototype.slice.call(arguments);
// or
Array.from(arguments); // creates a new Array instance from an array-like or iterable object.