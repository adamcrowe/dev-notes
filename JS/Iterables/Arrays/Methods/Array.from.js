// # .from(arrayLike[, mapFn, thisObject])

// creates a new Array instance from an array-like or iterable object
console.log(Array.from('foo')); // ["f", "o", "o"]
console.log(Array.from([1, 2, 3], x => x + x)); // [2, 4, 6]

// Array.from() has an optional parameter mapFn, which allows you to execute a map function on each element of the array (or subclass object) that is being created.
/// More clearly, Array.from(obj, mapFn, thisArg) has the same result as Array.from(obj).map(mapFn, thisArg), except that it does not create an intermediate array.
// This is especially important for certain array subclasses, like typed arrays, since the intermediate array would necessarily have values truncated to fit into the appropriate type.

// array from a Set
var s = new Set(['foo', window]);
console.log(Array.from(s)); // ["foo", window]

// array from a Map
var m = new Map([[1, 2], [2, 4], [4, 8]]);
console.log(Array.from(m)); // [[1, 2], [2, 4], [4, 8]]

// array from an Array-like object (arguments)
function f() {
	return Array.from(arguments);
}

console.log(f(1, 2, 3)); // [1, 2, 3]

// # References
// MDN: Array.prototype.from() <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/from>
