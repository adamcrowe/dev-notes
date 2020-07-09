// # Create a range of numbers

// method 1 (begin at index 0)
const array10 = [];

for (i of Array(10).keys()) {
    array10.push(i);
    console.log(i); // 0, 1, 2, ... 9
}

// method 1 (shortened)
const array10 = [...Array(10).keys()];

// method 1 (as function)
const numberRange = length => [...Array(length).keys()];

// method 2 (begin at index 0)
const numRange = length => Array.apply(null, { length: length }).map(Number.call, Number);
// workings:
// const array10 = Array.apply(null { length: 10})' // [undefined, undefined, undefined... ] // 10 slots
// const number4 = Number.call(Number, 4); // Number is passed as `this` arg to .call(); in .map() above, index is passed as value arg to .call();

// # Create a range of characters
const numberRange = length => [...Array(length).keys()];
const alphabetRange = length => numberRange(length).map(num => String.fromCharCode(97 + num));
const withoutZ = alphabetRange(25);
// ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y"]

module.exports = numberRange;
