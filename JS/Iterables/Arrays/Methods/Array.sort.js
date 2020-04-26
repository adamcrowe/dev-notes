// ! .sort([compareFunction])

// sorts the elements of an array in place (no copy is made), and returns a reference to the array. If a compareFunction is not supplied, elements are sorted by converting them to strings and comparing strings in Unicode code point order.

var months = ['March', 'Jan', 'Feb', 'Dec'];
months.sort();
console.log(months); // ["Dec", "Feb", "Jan", "March"]

var array1 = [1, 30, 4, 21];
array1.sort();
console.log(array1); // [1, 21, 30, 4]

var myArray = new Array('Wind', 'Rain', 'Fire');
myArray.sort();
console.log(myArray); // ["Fire", "Rain", "Wind"]

// sort() with callback function
var myArray = new Array('Wind', 'Rain', 'Fire');

// sort by the last letter of a string 
var sortFn = function(a, b) {
    if (a[a.length - 1] < b[b.length - 1]) return -1;
    if (a[a.length - 1] > b[b.length - 1]) return 1;
    if (a[a.length - 1] == b[b.length - 1]) return 0;
}

myArray.sort(sortFn);
console.log(myArray); // ["Wind","Fire","Rain"]

// !! compareFunction
// * if compareFunction is supplied, the array elements are sorted according to the return value of the compare function. If a and b are two elements being compared, then:

// ** If compareFunction(a, b) is less than 0, sort a to an index lower than b, i.e. a comes first.

// ** If compareFunction(a, b) returns 0, leave a and b unchanged with respect to each other, but sorted with respect to all different elements.

// ** If compareFunction(a, b) is greater than 0, sort b to an index lower than a, i.e. b comes first.

// ** compareFunction(a, b) must always return the same value when given a specific pair of elements a and b as its two arguments. If inconsistent results are returned then the sort order is undefined.

function compare(a, b) {
    if (a < b) {
        return -1;
    }
    if (a > b) {
        return 1;
    }
    // else a is equal to b
    return 0;
}

// use debugger to step through sorting
var numbers = [4, 2, 5, 1, 3];

numbers.sort(function(a, b) {
    debugger;
    return a - b;
});

console.log(numbers); // [1, 2, 3, 4, 5]

// sort objects by value property
var items = [
    { name: 'Edward', value: 21 },
    { name: 'Sharpe', value: 37 },
    { name: 'And', value: 45 },
    { name: 'The', value: -12 },
    { name: 'Magnetic', value: 13 },
    { name: 'Zeros', value: 37 }
];

// sort by value
items.sort(function (a, b) {
    return a.value - b.value;
});

// sort by name
items.sort(function(a, b) {
    var nameA = a.name.toUpperCase(); // ignore upper and lowercase
    var nameB = b.name.toUpperCase(); // ignore upper and lowercase

    if (nameA < nameB) {
        return -1;
    }

    if (nameA > nameB) {
        return 1;
    }
    // names must be equal
    return 0;
});

// String.localeCompare compares non-english characters so they appear in the right order
var items = ['réservé', 'premier', 'cliché', 'communiqué', 'café', 'adieu'];

items.sort(function (a, b) {
    return a.localeCompare(b);
});

// console.log(items)
// ['adieu', 'café', 'cliché', 'communiqué', 'premier', 'réservé']

// using map to process sorted temp arrays
// original array to be sorted
var list = ['Delta', 'alpha', 'CHARLIE', 'bravo'];

// temp array holds objects with index/position and sort-value
var mapped = list.map(function(el, i) {
    return { index: i, value: el.toLowerCase() };
})

// sorting the mapped array
mapped.sort(function(a, b) {
    if (a.value > b.value) {
        return 1;
    }

    if (a.value < b.value) {
        return -1;
    }
    return 0;
});

// use index/position to get element from original array
var result = mapped.map(function(el) {
    return list[el.index];
});