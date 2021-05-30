// # Maps
// * Used for storing additional information about an object *outside* of that object
// * Store key - value data of any kind and length
// * Can take any value for the key(unlike objects)
// * Iterable with special map methods available
// * Order is guaranteed(unlike objects)
// * Duplicate keys are not allowed
// * Key - based access

const person1 = { name: 'Max' }; // keep this object clean of metadata
const person2 = { name: 'Manuel' }; // keep this object clean of metadata

const personData = new Map([[person1, [{ date: 'yesterday', price: 10 }]]]); // use object as key, metadata as value

personData.set(person2, [{ date: 'two weeks ago', price: 100 }])

console.log(personData);
console.log(personData.get(person1)); // retrieve metadata for object

for (const entry of personData.entries()) {
    console.log(entry);
}

for (const [key, value] of personData.entries()) {
    console.log(key, value);
}

for (const key of personData.keys()) {
    console.log(key);
}

for (const key of personData.keys()) {
    console.log(personData.get(key));
}

for (const value of personData.values()) {
    console.log(value);
}

// ## WeakMap
// * The WeakMap object is a collection of key/value pairs in which the keys are weakly referenced.
// * WeakMaps hold "weak" references to key objects, which means that they do not prevent garbage collection in case there would be no other reference to the key object.

let person = { name: 'Max' };
const personData = new WeakMap();
personData.set(person, 'Extra info');

person = null; // person will be garbage collected (unlike with Map)

/// ### References
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap
