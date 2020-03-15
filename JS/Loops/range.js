// create a range of numbers
const arrTen = [];

for (i of Array(10).keys()) {
    arrOfTen.push(i);
    console.log(i); // 0, 1, 2, ..., 99
}

// shorter...
const arrTen = [...Array(10).keys()];
