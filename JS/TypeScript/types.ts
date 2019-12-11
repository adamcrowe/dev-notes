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
let myObject: object = {a: 'first', b: 'second'};    // object
let confused: string | number = 'hello'             // union
let hithere: any = "OH HI THERE";                   // type assertions
let strLength: number = (hithere as string).length; // length
enum Size { Small, Medium, Large }                  // enum
let sizeName: string = Size[2]; alert(sizeName);    // Returns 'Medium' (Size[2])

let myVoid = (): void => console.log('hi')          // void
let myError = (): never => { throw Error('err!') }; // never

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
    private sing: string;
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
