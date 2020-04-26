// ! .splice(index, removeCount, addElement1, addElementN, ...)

// removes elements from an array and (optionally) replaces them and returns the items which were removed from the array 
var myArray = new Array('1', '2', '3', '4', '5'); 
myArray.splice(1, 3, 'a', 'b', 'c', 'd'); 
console.log(myArray); // ["1", "a", "b", "c", "d", "5"]