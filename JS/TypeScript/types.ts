let myString: string;
let myNum: number;
let myBool: boolean;
let myVar: any;
let myVoid: void;
let myUndefined: undefined;
let myNull: null;
let strArr: string[]; 				// array of strings
let numArr: number[]; 				// array of numbers
let boolArr: boolean[]; 			// array of booleans
// let strArr: Array<string>; 		// array of strings
// let numArr: Array<number>; 		// array of numbers
// let boolArr: Array<boolean>; 	// array of booleans
let strNumTuple: [string, number];	// mixed array

myString = 'Hello'.slice(0, 3);		// compiles
myNum = 1;							// compiles
myBool = false;						// compiles
myVar = true;						// compiles
strArr = ['Hello', 'World'];		// compiles
numArr = [1, 2, 3];					// compiles
boolArray = [true, false, false];	// compiles
strNumTuple = ['Hello', 5, 3, 1]; 	// compiles (3 and 1 are valid beyond first pattern definition)
myVoid = null;						// compiles
myVoid = undefined;					// compiles
myUndefined = undefined;			// compiles
myUndefined = null;					// compiles
myNull = undefined;					// compiles
myNull = null;						// compiles