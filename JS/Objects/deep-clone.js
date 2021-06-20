// # Deep clone an object (or array)

const obj1 = { a: 0, b: { c: 0 } };
const obj3 = JSON.parse(JSON.stringify(obj1)); // deep clone

obj1.a = 4; // check obj1 and obj3 have different memory references
obj1.b.c = 4; // check obj1 and obj3 have different memory references
console.log(JSON.stringify(obj1)); // {"a":4,"b":{"c":4}}
console.log(JSON.stringify(obj3)); // {"a":0,"b":{"c":0}}
