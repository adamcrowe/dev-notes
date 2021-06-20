// # .map(callback[, thisObject])
// returns new array of return values from executing callback on every array item

// Example: String manipulation
const a1 = ['a', 'b', 'c'];
const a2 = a1.map(function(item) {
	return item.toUpperCase();
});
console.log(a2); // ['A', 'B', 'C']

// Example: String manipulation
const mapString = (transformFunction, string) =>
    [...string].map(transformFunction).join('');

altCase = (char, index) => (index % 2 === 0 ? char.toUpperCase() : char);
console.log(mapString(altCase, 'Get to the choppa!')); // GeT To tHe cHoPpA!

// Example: Double each item
const array1 = [1, 4, 9, 16];
const map1 = array1.map(x => x * 2);
console.log(map1); 	// [2, 8, 18, 32]

// Example: Map array of numbers to an array of square roots
const numbers = [1, 4, 9];
const roots = numbers.map(Math.sqrt);
console.log(roots);	// [1, 2, 3]

// Example: Reformat objects in an array
const kvArray = [
    {key: 1, value: 10},
	{key: 2, value: 20},
	{key: 3, value: 30}
];

const reformattedArray = kvArray.map(obj => {
	var rObj = {};
	rObj[obj.key] = obj.value;
	return rObj;
});

console.log(reformattedArray) // [{1: 10}, {2: 20}, {3: 30}]

// Example: Using .map as a generical function
const map = Array.prototype.map;
const a = map.call('Hello World', function(x) {
	return x.charCodeAt(0);
});
console.log(a) // [72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100]

// References
// MDN: Array.prototype.map() <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map>
// Map Isn't Just for Arrays <https://yazeedb.com/posts/map-isnt-just-for-arrays>
