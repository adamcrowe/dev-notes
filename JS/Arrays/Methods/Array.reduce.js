// ! .reduce(callback[, initialValue])

// The reduce() method applies a function against an accumulator and each element in the array (from left to right) to reduce it to a single value.

// The first time the callback is called, accumulator and currentValue can be one of two values. If initialValue is provided in the call to reduce(), then accumulator will be equal to initialValue, and currentValue will be equal to the first value in the array. If no initialValue is provided, then accumulator will be equal to the first value in the array, and currentValue will be equal to the second.

var a = [10, 20, 30]; 
var total = a.reduce(function(accumulator, currentValue) { 
    return first + second; 
}, 0); // initialValue = 0 

console.log(total)                      // 60 (0 + 10 + 20 + 30)

const array1 = [1, 2, 3, 4]; 
const reducer = (accumulator, currentValue) => accumulator + currentValue; 
console.log(array1.reduce(reducer));    // 10 (1 + 2 + 3 + 4) 

console.log(array1.reduce(reducer, 5)); // 15 (5 + 1 + 2 + 3 + 4)

[0, 1, 2, 3, 4].reduce((prev, curr) => prev + curr, 10); // 20

// If the array is empty and no initialValue is provided, TypeError will be thrown. If the array has only one element (regardless of position) and no initialValue is provided, or if initialValue is provided but the array is empty, the solo value will be returned without calling callback.

// It is usually safer to provide an initial value because there are three possible outputs without initialValue, as shown in the following example.

var maxCallback = ( acc, cur ) => Math.max( acc.x, cur.x ); 
var maxCallback2 = ( max, cur ) => Math.max( max, cur ); 

// reduce() without initialValue 
[ { x: 22 }, { x: 42 } ].reduce( maxCallback ); // 42 
[ { x: 22 }            ].reduce( maxCallback ); // { x: 22 } 
[                      ].reduce( maxCallback ); // TypeError 

// map/reduce; better solution, also works for empty or larger arrays 
[ { x: 22 }, { x: 42 } ].map( el => el.x ).reduce( maxCallback2, -Infinity );

// flatten an array of arrays 
var flattened = [[0, 1], [2, 3], [4, 5]].reduce( 
    function(a, b) { 
        return a.concat(b); 
    }, 
    [] // initialValue = []
); 

/* shortened
var flattened = [[0, 1], [2, 3], [4, 5]].reduce( 
    (acc, cur) => acc.concat(cur), 
    [] // initialValue = []
); 
*/ 
console.log(flattened) // [0, 1, 2, 3, 4, 5

// count instances of values in an object 
var names = ['Alice', 'Bob', 'Tiff', 'Bruce', 'Alice']; 
var countedNames = names.reduce(function (allNames, name) { 
    if (name in allNames) { 
        allNames[name]++; 
    } else { 
        allNames[name] = 1; 
    } 
    return allNames; 
}, {}); 

console.log(countedNames); // { 'Alice': 2, 'Bob': 1, 'Tiff': 1, 'Bruce': 1 }

// bonding arrays using the spread operator and initialValue 
var friends = [{ 
    name: 'Anna', 
    books: ['Bible', 'Harry Potter'], 
    age: 21 
}, { 
    name: 'Bob', 
    books: ['War and peace', 'Romeo and Juliet'], 
    age: 26 
}, { 
    name: 'Alice', 
    books: ['The Lord of the Rings', 'The Shining'], 
    age: 18 
}]; 

var allbooks = friends.reduce(function(prev, curr) { 
    return [...prev, ...curr.books]; 
}, ['Alphabet']); 

console.log(allbooks); 
// ['Alphabet', 'Bible', 'Harry Potter', 'War and peace', 'Romeo and Juliet', 'The Lord of the Rings', 'The Shining']

// remove duplicate items in array 
let arr = [1, 2, 1, 2, 3, 5, 4, 5, 3, 4, 4, 4, 4]; 

let result = arr.sort().reduce((init, current) => { 
    if (init.length === 0 || init[init.length - 1] !== current) {   
        init.push(current); 
    } 
    return init; 
}, []); // initialValue = []

console.log(result); // [1, 2, 3, 4, 5]