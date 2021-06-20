// # Deep Copy/Clone
// * Use for multi-dimensional arrays

nestedNumbers = [[1], [2]]; // multi-dimensional array
numbersCopy = JSON.parse(JSON.stringify(nestedNumbers));
// JSON.stringify turns an object into a string
// JSON.parse turns a string into an object
numbersCopy[0].push(300); // test if clone has different memory reference
console.log(nestedNumbers);
// [[1], [2]]
console.log(numbersCopy);
// [[1, 300], [2]]

// # Shallow Copy/Clone
// * Use for non-multi-dimensional arrays

// Spread operator
numbers = [1, 2, 3];
numbersCopy = [...numbers];

// For loop
numbers = [1, 2, 3];
numbersCopy = [];

for (i = 0; i < numbers.length; i++) {
    numbersCopy[i] = numbers[i];
}

// Array.from
numbers = [1, 2, 3];
numbersCopy = Array.from(numbers);

// Array.slice
numbers = [1, 2, 3];
numbersCopy = numbers.slice();

// Array.concat
numbers = [1, 2, 3];
numbersCopy = numbers.concat([]);

// Array.map
numbers = [1, 2, 3];
numbersCopy = numbers.map((x) => x);

// Array.filter
numbers = [1, 2, 3];
numbersCopy = numbers.filter(() => true);

// Array.reduce
numbers = [1, 2, 3];

numbersCopy = numbers.reduce((newArray, element) => {
    newArray.push(element);

    return newArray;
}, []);

// # References
// How to clone an array in JavaScript <https://yazeedb.com/posts/how-to-clone-an-array-in-javascript>
