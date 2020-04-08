// See: https://www.typescriptlang.org/docs/handbook/
// npm install -g typescript
// tsc myTypeScriptFile.ts -w

const names: string[];          // an array of strings
const names1: Array<string>     // an array of strings
const articles: Array<Article>  // Array is a collection that will only hold Article objects
const articles2: Article[]; 	// articles is a array of Article objects

constructor(title: string, link: string, votes?: number) {} // votes? is optional

// Generics: https://www.typescriptlang.org/docs/handbook/generics.html
// accept any type and return any type
function identity1(arg: any): any {
    return arg;
}

// accept any type and return any type with information about the type
function identity2<T>(arg: T): T {
    return arg;
}
let output1 = identity2<string>("myString");  // type of output will be 'string'
let output2 = identity2("myString");  		  // shortened version: type of output will be 'string'