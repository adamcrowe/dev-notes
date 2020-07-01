// # Array.flatten()

// var newArray = arr.flatten(depth)

// .flatten() creates a new array with all sub-array elements concatenated into it recursively up to the specified depth.

// flattening nested arrays
var arr1 = [1, 2, [3, 4]];
arr1.flatten();  								// [1, 2, 3, 4]

var arr2 = [1, 2, [3, 4, [5, 6]]];
arr2.flatten(); 								// [1, 2, 3, 4, [5, 6]]

var arr3 = [1, 2, [3, 4, [5, 6]]];
arr3.flatten(2);								// [1, 2, 3, 4, 5, 6]

var arr4 = [1, 2, , 4, 5];
arr4.flatten();									// [1, 2, 4, 5]

// flatten alternative: reduce and concat (only one level deep)
var arr1 = [1, 2, [3, 4]];
arr1.flatten(); 								// is equivalent to...
arr1.reduce((acc, val) => acc.concat(val), []); // [1, 2, 3, 4]

// flatten multi-level nested array (without using Array.flatten)
function flattenArray(arr) {
    return arr.reduce((acc, item) => {
        // Base case: item is not an array
        if (!Array.isArray(item)) {
            acc.push(item);
            // Recursive case: item is an array
        } else {
            acc = acc.concat(flattenArray(item));
        }
        return acc;
    }, []);
}
const exampleArray = [1, 2, [3, 4, [5, 6, 7], 8], 9, 10];
console.log(flattenArray(exampleArray));  // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]