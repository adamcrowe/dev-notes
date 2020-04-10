// Generic types provide flexibility (to set types dynamically) as well as type safefy.

/**
 * 01. Built-in Generic Types
 */

// Array = generic type; string = additional type information (which allows type safety checks)
const names: Array<string> = ['Alice']; // same type as string[]
names[0].split(''); // typescript knows we can use .split() because names is a string array

// Promise = generic type; string = additional type information (which allows type safety checks)
const promise: Promise<string> = new Promise((resolve, reject) => { // Promise will resolve a string
    setTimeout(() => {
        resolve('This is done!');
    }, 2000);
});

promise.then((data) => {
    data.split(''); // typescript knows we can use .split() because the promise resolves a string (Promise<string>)
    // if the promise resolved a number (Promise<number>), data.split('') would cause a type error
});

/**
 * 02. Custom Generic Types
 */

// T and U tell typescript that the two objects are of a different type and are set dynamically on calling the function
function merge<T, U>(objA: T, objB: U) { // returns: T & U intersection because Object.assign returns a T & U intersection
    return Object.assign(objA, objB); // ObjectConstructor.assign<T, U>(target: T, source: U): T & U
}

const mergedObj = merge({ name: 'Alice' }, { age: 21 });
console.log('+++ mergedObj.name: ', mergedObj.name);
console.log('+++ mergedObj.age: ', mergedObj.age);
const mergedObj2 = merge({ name: 'Bob' }, { hobbies: ['Chess', 'Bridge'] });
console.log('+++ mergedObj2.name: ', mergedObj2.name);
console.log('+++ mergedObj2.hobbies: ', mergedObj2.hobbies);

const mergedObj3 = merge({ name: 'Bob' }, 30);
console.log('+++ mergedObj3: ', mergedObj3); // does not include 30 because it's not an object (must add constraints to T and U)

/*
 * 03. Type Constraints using `extends`
 */

/* Example 1 */

// Constraint: // T and U must both be objects
function mergeWithConstraints<T extends object, U extends object>(objA: T, objB: U) {
    return Object.assign(objA, objB);
}

// const mergedObj4 = mergeWithConstraints({ name: 'Bob' }, 30); // error: 30 is not an object
const mergedObj4 = mergeWithConstraints({ name: 'Bob' }, { age: 30 });
console.log('+++ mergedObj4: ', mergedObj4);

/* Example 2 */
interface Lengthy {
    length: number;
}

// Constraint: T must have a length property
function countAndDescribe<T extends Lengthy>(element: T): [T, string] { // return tuple
    let descriptionText = 'Got no value';

    if (element.length) {
        descriptionText = (element.length === 1) ? 'Got 1 element' : 'Got ' + element.length + ' elements';
    }

    return [element, descriptionText]; // tuple
}

console.log('+++ countAndDescribe: ', countAndDescribe('Hi there!')); // ["Hi there!", "Got 9 elements"]
console.log('+++ countAndDescribe: ', countAndDescribe(['Sports', 'Cooking'])); // [Array(2), "Got 2 elements"]
// console.log('+++ countAndDescribe: ', countAndDescribe(30)); // error: 30 does not have a length property


/* Example 3 */

// Constraint: key must be a keyof object
function extractAndConvert<T extends object, U extends keyof T>(
    obj: T, key: U
): string {
    return 'Value: ' + obj[key];
}

extractAndConvert({ name: 'Alice' }, 'name');

/**
 * 04. Generic Classes
 */

// A generic class uses a generic type
class DataStorage<T extends string | number | boolean> { // use only strings or numbers or booleans
    private data: T[] = [];

    addItem(item: T) {
        this.data.push(item);
    }

    removeItem(item: T) {
        this.data.splice(this.data.indexOf(item), 1);
    }

    getItems() {
        return [...this.data];
    }
}

const textStorage = new DataStorage<string>();
// textStorage.addItem(10); // error: number not assignable to type string
textStorage.addItem('Alice');

const numberStorage = new DataStorage<number>();
// numberStorage.addItem('Bob''); // error: string not assignable to type number
numberStorage.addItem(10);


/**
 * Generic Utility Types
 * See: https://www.typescriptlang.org/docs/handbook/utility-types.html
 */

/* Partial<T>: Make all properties in T optional */
interface CourseGoal {
    title: string;
    description: string;
    completeUntil: Date;
}

function createCourseGoal(
    title: string,
    description: string,
    date: Date
): CourseGoal {
    let courseGoal: Partial<CourseGoal> = {}; // Type T in Partial<T> will eventually be CourseGoal
    courseGoal.title = title;
    courseGoal.description = description;
    courseGoal.completeUntil = date;
    return courseGoal as CourseGoal; // Make type CourseGoal
}

/* Readonly */
const employees: Readonly<string[]> = ['Alice', 'Bob'];
// employees.push('Charles'); // error
// employees.pop(); // error