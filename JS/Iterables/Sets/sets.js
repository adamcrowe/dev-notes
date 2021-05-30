// # Sets
// * Used for creating uniqueness (only unique values)
// * Store (nested) data of any kind and length
// * Iterable with special set methods available
// * Order is not guaranteed (unlike arrays)
// * Duplicates are not allowed (unlike arrays)
// * No index - based access (unlike arrays)

const ids = new Set([1, 2, 3]);
console.log(ids.has(1)); // true

const ids2 = new Set([1, 2, 3]);
ids2.add(2); // add another value 2

console.log(ids2.has(2)); // true
console.log(ids); // Set(3) {1, 2, 3} // duplicates not allowed

for (const entry of ids.entries()) {
    console.log(entry);
}
// returns:
// (2) [1, 1]
// (2) [2, 2]
// (2) [3, 3]

for (const entry of ids.values()) {
    console.log(entry);
}
// returns:
// 1
// 2
// 3

ids.delete(3);
console.log(ids); // Set(2) {1, 2}

// Remove duplicates substrings from a string
const testString = 'This is is a test test string';

function removeDuplicateStrings(str) {
    const arr = str.split(' '); // create array of words (without spaces)
    const set = new Set(arr); // a Set cannot have duplicate items
    return [...set].join(' '); // create string of words (with spaces)
}
console.log(removeDuplicateStrings(testString); // This is a test string

// shorter...
console.log([...new Set(testString.split(' '))].join(' '));

// Transform an Array into a Set
let myArray = ['value1', 'value2', 'value3']

let mySet = new Set(myArray)

mySet.has('value1') // true

console.log([...mySet]) // use the spread operator to transform a set into an Array

// Remove duplicate numbers
const numbers = [2, 3, 4, 4, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 5, 32, 3, 4, 5]
console.log([...new Set(numbers)]);

// Ensure the uniqueness of a list of values
const array = Array
    .from(document.querySelectorAll('[id]'))
    .map(function (e) {
        return e.id
    });

const set = new Set(array);
console.assert(set.size == array.length);

// ## WeakSets
// * The WeakSet object lets you store weakly held objects in a collection
// * The WeakSet is weak, meaning references to objects in a WeakSet are held weakly.
// * If no other references to an object stored in the WeakSet exist, those objects can be garbage collected.
let person = { name: 'Max' };
const persons = new WeakSet();
persons.add(person);

person = null; // person will be garbage collected (unlike with Set)

// # References
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet
