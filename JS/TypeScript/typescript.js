// npm install -g typescript
// tsc myTypeScriptFile.ts -w

names: string[];        // an array of strings
names: Array<string>    // an array of strings
Array<Article>			// Array is a collection that will only hold Article objects (this pattern is called 'generics')
articles: Article[];	// articles is a array of Article objects

constructor(title: string, link: string, votes?: number) {} // votes? is optional