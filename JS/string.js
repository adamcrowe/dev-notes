// ! String

// !! Multi-lines

// new line character
console.log('string text line 1\n\
string text line 2');
// "string text line 1
// string text line 2"

// template literals
console.log(`string text line 1
string text line 2`);
// "string text line 1
// string text line 2"

// !! Embedded expressions

// concatenation
var a = 5;
var b = 10;
console.log('Fifteen is ' + (a + b) + ' and\nnot ' + (2 * a + b) + '.');
// "Fifteen is 15 and
// not 20."

// template literals
var a = 5;
var b = 10;
console.log(`Fifteen is ${a + b} and\nnot ${2 * a + b}.`);
// "Fifteen is 15 and
// not 20."

// !! Tagged templates
var person = 'Mike';
var age = 28;

function myTag(strings, personExp, ageExp) {
	var str0 = strings[0]; // "that "
	var str1 = strings[1]; // " is a "
	// There is technically a string after the final expression (in our example),
	// but it is empty (""), so disregard.
	// var str2 = strings[2];
	var ageStr;
	if (ageExp > 99){
		ageStr = 'centenarian';
	} else {
		ageStr = 'youngster';
	}

	return str0 + personExp + str1 + ageStr;
}

var output = myTag`that ${ person } is a ${ age }`;

console.log(output);
// that Mike is a youngster
