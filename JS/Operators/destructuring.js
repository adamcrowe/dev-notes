// ! Destructuring
// > Destructoring unpacks values from arrays, or properties from objects, into distinct variables
 
// !! Array Destructuring

// array destructuring 
var foo = ['one', 'two', 'three']; 
var [one, two, three] = foo; 
console.log(one); 	// "one" 
console.log(two); 	// "two" 
console.log(three); // "three" 

var x = [1, 2, 3, 4, 5]; 
var [y, z] = x; 
console.log(y); // 1 
console.log(z); // 2 

[a, b, ...rest] = [10, 20, 30, 40, 50]; 
console.log(a); 	// 10 
console.log(b); 	// 20 
console.log(rest); 	// [30, 40, 50] 

// assignment separate from declaration: 
var a, b, rest; 
[a, b] = [10, 20]; 
console.log(a); // 10 
console.log(b); // 20 

// default values: 
var a, b; 
[a=5, b=7] = [1]; 
console.log(a); // 1 
console.log(b); // 7 

// swapping variables: 
var a = 1; 
var b = 3; 
[a, b] = [b, a]; 
console.log(a); // 3 
console.log(b); // 1 

// parsing an array returned from a function: 
function f() { 
	return [1, 2]; 
} 

var a, b; 
[a, b] = f(); 
console.log(a); // 1 
console.log(b); // 2 

// ignoring some returned values: 
function f() { 
	return [1, 2, 3]; 
} 

var [a, , b] = f(); 
console.log(a); // 1 
console.log(b); // 3 

// assigning the rest of an array to a variable: 
var [a, ...b] = [1, 2, 3]; 
console.log(a); // 1 
console.log(b); // [2, 3] 

// default values 
var a, b; 
[a=5, b=7] = [1]; 
console.log(a); // 1 
console.log(b); // 7 

// unpacking values from a regular expression match: 
/* When the regular expression exec() method finds a match, it returns an array containing first the entire matched portion of the string and then the portions of the string that matched each parenthesized group in the regular expression. Destructuring assignment allows you to unpack the parts out of this array easily, ignoring the full match if it is not needed. */ 

function parseProtocol(url) { 
	var parsedURL = /^(\w+)\:\/\/([^\/]+)\/(.*)$/.exec(url); 
	if (!parsedURL) { 
		return false; 
	} 
	
	console.log(parsedURL); 
	// ["https://developer.mozilla.org/en-US/Web/JavaScript", "https", "developer.mozilla.org", "en-US/Web/JavaScript"] 

 	var [, protocol, fullhost, fullpath] = parsedURL; 
	return protocol; 
} 

console.log(parseProtocol('https://developer.mozilla.org/en-US/Web/JavaScript')); 
// "https"

// !! Object Destructuring

// basic assignment: 
var o = {p: 42, q: true}; 
var {p, q} = o; 
console.log(p); // 42 
console.log(q); // true 

// assignment without declaration: 
var a, b; 
({ a, b } = { a: 10, b: 20 }); // round braces required, otherwise use: var {a, b} = {a: 10, b: 20} 
console.log(a); // 10 
console.log(b); // 20 

// assigning to new variable names: 
var o = {p: 42, q: true}; 
var {p: foo, q: bar} = o; 
console.log(foo); // 42 
console.log(bar); // true 

// default values: 
var {a = 10, b = 5} = {a: 3}; 
console.log(a); // 3 
console.log(b); // 5 

// assigning to new variables names and providing default value: 
var {a:aa = 10, b:bb = 5} = {a: 3}; // rename properties to aa and bb 
console.log(aa); // 3 
console.log(bb); // 5 

// nested object and array destructuring: 
var metadata = { 
	title: 'Scratchpad', 
	translations: [ 
		{ 
			locale: 'de', 
			localization_tags: [], 
			last_edit: '2014-04-14T08:43:37', 
			url: '/de/docs/Tools/Scratchpad', 
			title: 'JavaScript-Umgebung' 
		}
	], 

	url: '/en-US/docs/Tools/Scratchpad' 
}; 

var {title: englishTitle, translations: [{title: localeTitle}]} = metadata; 
console.log(englishTitle); // "Scratchpad" 
console.log(localeTitle);  // "JavaScript-Umgebung" 

// for of iteration and destructuring: 
var people = [ 
	{ 
		name: 'Mike Smith', 
		family: { 
			mother: 'Jane Smith', 
			father: 'Harry Smith', 
			sister: 'Samantha Smith' 
		}, 
		age: 35 
	}, 
	{ 
		name: 'Tom Jones', 
		family: { 
			mother: 'Norah Jones', 
			father: 'Richard Jones', 
			brother: 'Howard Jones' 
		}, 
		age: 25 
	} 
]; 

for (var { name: n, family: {father: f} } of people) { 
	console.log('Name: ' + n + ', Father: ' + f); 
} 
// "Name: Mike Smith, Father: Harry Smith" 
// "Name: Tom Jones, Father: Richard Jones" 

// unpacking fields from objects passed as function parameter: 
function userId({id}) { 
	return id; 
} 

function whois({displayName, fullName: {firstName: name}}) { 
	console.log(displayName + ' is ' + name); 
} 

var user = { 
	id: 42, 
	displayName: 'jdoe', 
	fullName: { 
		firstName: 'John', 
		lastName: 'Doe' 
	} 
}; 

console.log('userId: ' + userId(user)); // "userId: 42" 
whois(user); // "jdoe is John" 

// stage 3 proposal for using rest 
({a, b, ...rest} = {a: 10, b: 20, c: 30, d: 40}); 

console.log(a); // 10 
console.log(b); // 20 
console.log(rest); // {c: 30, d: 40}

var animal = { 
	species: 'dog', 
	weight: 23, 
	sound: 'woof' 
} 

var { species, sound } = animal; // destructure animal properties into vars 

console.log('The ' + species + ' says ' + sound + '!');

// destructure obj args into vars whilst setting default species: 
function makeSound({ species = 'animal', sound }) { 
	console.log('The ' + species + ' says ' + sound + '!'); 
} 

makeSound({   
	weight: 23, 
	sound: 'woof' 
});