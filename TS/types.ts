let myNum: number = 0;                              // number
let myBool: boolean = false;                        // boolean
let myString: string = 'string';                    // string
let myString2: string = `string ${myNum}`;          // string
let myVar: any = "8s9sn";                           // any
let myUndefined: undefined = undefined;             // undefined
let myNull: null = null;                            // null
let strArr: string[] = ['str1', 'str2'];            // array of strings
let strArr2: Array<string> = ['str1', 'str2']; 	    // array of strings
let numArr: number[] = [0, 1, 2];				    // array of numbers
let numArr2: Array<number> = [0, 1, 2];			    // array of numbers
let boolArr: boolean[] = [true, false]			    // array of booleans
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
    console.log(result);
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

