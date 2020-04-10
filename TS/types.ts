let myNum: number = 0;                              // number
let myBool: boolean = false;                        // boolean
let myString: string = 'string';                    // string
let myString2: string = `string ${myNum}`;          // string
let myVar: any = "8s9sn";                           // any
let myUndefined: undefined = undefined;             // undefined
let myNull: null = null;                            // null
let strArr: string[] = ['str1', 'str2'];            // array of strings
let strArr2: Array<string> = ['str1', 'str2'];      // array of strings
let numArr: number[] = [0, 1, 2];                   // array of numbers
let numArr2: Array<number> = [0, 1, 2];             // array of numbers
let boolArr: boolean[] = [true, false]              // array of booleans
let strNumTuple: [string, number] = ['str', 1];     // tuple/mixed array
let myObject: object = {a: 'first', b: 'second'};   // object
let confused: string | number = 'hello';            // union (or)
const number = 56;                                  // type is 56
let literalStr: 'literalVal1' | 'literalVal2';      // literal (use in param definitions)
let hithere: any = "OH HI THERE";                   // type assertions
let strLength: number = (hithere as string).length; // cast to string

// function return types
let myVoid = (): void => console.log('hi');         // void (function does not return)
let myErr = (): never => { throw Error('err!') };   // never (neither returns nor logs)

// never
function generateError(message: string, code: number): never {
    throw { message: message, errorCode: code };
}
generateError('An error occurred!', 500);

// functions as types
let combineValues: (a: number, b: number) => number;

// functions as types
function addAndHandle(n1: number, n2: number, cb: (num: number) => void) {
    const result = n1 + n2;
    cb(result);
}

addAndHandle(10, 20, (result) => {
    console.log(result); // 30
})

// enum
enum Size { Small = 1, Medium = 2, Large = 3 }      // enum with custom values (1,2,3)
let sizeName: string = Size[2];
console.log(sizeName);                              // returns 'Medium' (Size[2])
let sizeNumber: number = Size.Small;
console.log(sizeNumber);                            // returns '1' (Size.Small)

enum Default { Small, Medium, Large}                // enum with default values
let sizeNum: number = Default.Small;                // returns 0

// custom types (aliases)
type Combinable = number | string;                  // alias of union
type ConversionFormat = 'as-number' | 'as-string';  // alias of union
type User1 = { name: string; age: number };         // User1 custom type

// intersection types (the common type)
type Combinable2 = string | number;
type Numeric = number | boolean;
type Universal = Combinable2 & Numeric;             // type of Universal is number (the common type)

// interface
interface RobotArmy {
    count: number,
    type: string,
    magic?: string
}

// use interface
let fightRobotArmy = (robots: RobotArmy) => {
    console.log('FIGHT!');
}

// define interface inline
let fightRobotArmy2 = (robots: { count: number, type: string, magic?: string }) => {
    console.log('FIGHT!');
}

// function uses interface
let fightRobotArmyFn = (robots: RobotArmy): void => {
    console.log('FIGHT!');
}

// function defines interface inline
let fightRobotArmy2Fn = (robots: { count: number, type: string, magic?: string }): void => {
    console.log('FIGHT!');
}

// classes
class Animal {
    public sing: string;
    constructor(sound: string) {
        this.sing = sound;
    }
    greet() {
        return "Hello, " + this.sing;
    }
}

let lion = new Animal("Lion");
// error: can't access private property
console.log(lion.sing);
// returns "Hello, Lion";
console.log(lion.greet());

/**
 * 01. Intersection Types
 */

type Admin = {
    name: string;
    priviledges: string[];
};

type Employee = {
    name: string;
    startDate: Date;
};

type ElevatedEmployee = Admin & Employee;

const employee1: ElevatedEmployee = {
    name: 'Alice',
    priviledges: ['create-server'],
    startDate: new Date()
}

// For comparison... Extending Interfaces
// interface Admin {
//     name: string;
//     privileges: string[];
// }

// interface Employee {
//     name: string;
//     startDate: Date,
// }

// interface ElevatedEmployee extends Admin, Employee {}

type Combinable = string | number;
type Numeric = number | boolean;
// intersection type
type Universal = Combinable & Numeric; // type is number (the common/intersection type)

function add(a: Combinable, b: Combinable) {
    if (typeof a === 'string' || typeof b === 'string') {
        return a.toString() + b.toString();
    }
    return a + b;
}

console.log('+++ result1: ', add('A', 'B')); // returns: 'AB';
console.log('+++ result2: ', add(1, 2)); // returns: 3

console.log(typeof add('A', 'B')); // string
console.log(typeof add(1, 2)); // number
// console.log(add('A', 'B').split('')); // error...
// error: Property 'split' does not exist on type 'Combinable'
// fix: use Function Overload (see below)

/**
 * 02. Type Guards
 */

/* Example 1 */
type UnknownEmployee = Employee | Admin; // intersection type

function printEmployeeInformation(emp: UnknownEmployee) {
    console.log('Name: ' + emp.name);

    if ('priviledges' in emp) { // type guard: check for priviledges property
        console.log('+++ Privileges: ' + emp.priviledges);
    }

    if ('startDate' in emp) { // type guard: check for startDate property
        console.log('+++ Start Date: ' + emp.startDate);
    }
}

printEmployeeInformation(employee1);
printEmployeeInformation({ name: 'Bob', startDate: new Date() });

/* Example 2 */
class Car {
    drive() {
        console.log('Driving...');
    }
}

class Truck {
    drive() {
        console.log('Driving a truck...');
    }

    loadCargo(amount: number) {
        console.log('Loading cargo ... ' + amount);
    }
}

type Vehicle = Car | Truck;

const vehicle1 = new Car();
const vehicle2 = new Truck();

function useVehicle(vehicle: Vehicle) {
    vehicle.drive();

    if (vehicle instanceof Truck) { // type guard checking for Truck constructor function
        vehicle.loadCargo(1000);
    }
}

useVehicle(vehicle1);
useVehicle(vehicle2);

/**
 * 03. Discriminated Unions
 */

interface Bird {
    type: 'bird'; // discriminates within union
    flyingSpeed: number;
}

interface Horse {
    type: 'horse'; // discriminates within union
    runningSpeed: number;
}

type Animal = Bird | Horse; // union

function moveAnimal(animal: Animal) {
    let speed;

    switch (animal.type) { // check using discrimated union type
        case 'bird':
            speed = animal.flyingSpeed;
            break;
        case 'horse':
            speed = animal.runningSpeed;
            break;
    }

    console.log('Moving at speed: ' + speed);
}

moveAnimal({ type: 'bird', flyingSpeed: 10 });

/**
 * 04. Type Casting / Type Assertion
 * https://basarat.gitbooks.io/typescript/docs/types/type-assertion.html
 */

const userInputElement1 = document.getElementById('user-input'); // type is HTMLElement (require HTMLInputElement)
const userInputElement2 = <HTMLInputElement>document.getElementById('user-input'); // cast to HTMLInputElement
const userInputElement3 = document.getElementById('user-input') as HTMLInputElement; // cast to HTMLInputElement
const userInputElement4 = document.getElementById('user-input');
const userInputElement5 = document.getElementById('user-input')!; // ! = value will not be null

// userInputElement1.value = 'Hi there 1!'; // error: Property 'value' does not exist on type 'HTMLElement'
userInputElement2.value = 'Hi there 2!';
userInputElement3.value = 'Hi there 3!';

if (userInputElement4) { // check !null
    (userInputElement4 as HTMLInputElement).value = 'Hi there 4!'; // cast to HTMLInputElement
}

(userInputElement5 as HTMLInputElement).value = 'Hi there 5!'; // cast to HTMLInputElement

/**
 * 05. Index Properties
 */

interface ErrorContainer { // to provide the flexibility to add new errors, use an index property:
    [prop: string]: string; // key must be a string; value must be a string
}

const errorEmail: ErrorContainer = {
    email: 'Not a valid email!',
    username: 'Username must start with an UPPERCASE character!'
}

/*
 * 06. Function Overload
 * Function overloads are stacked directly on top of function declaration...
 */

function adder(a: number, b: number): number; // function overload: define return type given args
function adder(a: string, b: string): string; // function overload: define return type given args
function adder(a: number, b: string): string; // function overload: define return type given args
function adder(a: string, b: number): string; // function overload: define return type given args
function adder(a: Combinable, b: Combinable) { // type Combinable = string | number;
    if (typeof a === 'string' || typeof b === 'string') {
        return a.toString() + b.toString();
    }
    return a + b;
}

console.log('+++ adder1: ', add('A', 'B')); // returns: 'AB';
console.log('+++ adder2: ', add(1, 2)); // returns: 3

console.log(typeof adder('A', 'B')); // string
console.log(typeof adder(1, 2)); // number
console.log(adder('A', 'B').split('')); // split works because return type of adder('A', 'B') is string
// console.log(adder(1, 2).split('')); // error: split not available to type number

/**
 * 07. Optional Chaining Operator
 */

const fetchedUserData = {
    id: 'u1',
    name: 'Alice',
    job: { title: 'CEO', description: 'Alice Corp.' }
}

console.log(fetchedUserData?.job?.title); // check if job and title properties exist

/**
 * 08. Null(ish) Coalesce Operator
 */

const userInput = ''; // '' is falsey so: userInput || 'DEFAULT' would return 'DEFAULT'
const storedData = userInput ?? 'DEFAULT'; // use ?? to preserve non-null/undefined falsey values such as '' or 0
console.log('+++ storedData: ', storedData); // returns ''
console.log('+++ typeof storedData: ', typeof storedData); // returns: string

