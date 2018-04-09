// npm install -g typescript
// tsc myTypeScriptFile.ts -w

names: string[];        // an array of strings
names: Array<string>    // an array of strings
Array<Article>			// Array is a collection that will only hold Article objects
articles: Article[];	// articles is a array of Article objects

constructor(title: string, link: string, votes?: number) {} // votes? is optional


// Generics: https://www.typescriptlang.org/docs/handbook/generics.html
// accept any type and return any type
function identity(arg: any): any {
    return arg;
}

// accept any type and return any type with information about the type
function identity<T>(arg: T): T {
    return arg;
}
let output = identity<string>("myString");  // type of output will be 'string'
let output = identity("myString");  		// shortened version: type of output will be 'string'