// ! a.entries() 

// returns a new Array Iterator object that contains the key/value pairs for each index in the array
var array1 = ['a', 'b', 'c'];
var iterator1 = array1.entries();

console.log(iterator1.next().value); // Array [0, "a"]
console.log(iterator1.next().value); // Array [1, "b"]

// using a for...of loop
var a = ['a', 'b', 'c'];
var iterator = a.entries();

for (let e of iterator) {
  console.log(e);
}
// [0, 'a']
// [1, 'b']
// [2, 'c']