// ! Function Object
// !! Constructor
// new Function ([arg1[, arg2[, ...argN]],] functionBody) 
var sum = new Function('a', 'b', 'return a + b'); 
console.log(sum(2, 6)); // 8