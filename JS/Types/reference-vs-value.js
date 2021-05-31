// € Value vs. Reference:
var a = 2;             // 'a' holds a copy of the value 2.
var b = a;             // 'b' is always a copy of the value in 'a'
b++;
console.log(a);        // 2
console.log(b);        // 3

var c = [1, 2, 3];
var d = c;             // 'd' is a reference to the shared value
d.push(4);             // Mutates the referenced value (array is an object)
console.log(c);        // [1,2,3,4]
console.log(d);        // [1,2,3,4]

var e = [1, 2, 3, 4];
console.log(c === d);  // true
console.log(c === e);  // false - c and e exist in different locations in memory

// ## Copying an object, array or function:
// To copy a compound (object, array, function) value by value, you need to make a copy of it.
var c = [1, 2, 3, 4];
const copy = c.slice();  // 'copy' references a new value created by slice (which returns a new array)
console.log(c);          // [1,2,3,4]
console.log(copy);       // [1,2,3,4]
console.log(c === copy); // false - c and copy exist in different locations in memory
