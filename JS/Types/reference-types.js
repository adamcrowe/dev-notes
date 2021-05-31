// # Reference Types
objects, arrays, functions
// * are compared by reference (to memory location)
// * passed by reference (to memory location)
// * mutable

// ## object
// copying an object (dereferencing):

// shallow copy
var newObject = $.extend({}, oldObject);

// deep copy
var newObject = $.extend(true, {}, oldObject);

// ## array
// copying an array (dereferencing):

var array1 = [0, 1, 2];

// deferenced copy but not deep; won't copy nested arrays
var array2 = array1.splice(0);
