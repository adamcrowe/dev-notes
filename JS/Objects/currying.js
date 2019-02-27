// ! Currying
// https://stackoverflow.com/questions/32782922/what-do-multiple-arrow-functions-mean-in-javascript

// Curried functions take only one argument and return a function expecting the next argument until the final function returns the accumulated output

let dragon =
	name =>
		size =>
			element =>
				name + ' is a ' +
					size + ' dragon that breathes ' +
						element + '!'

console.log(dragon('fluffykins')('tiny')('lighting'));
// returns: fluffykins is a tiny dragon that breathes lighting!

let dragon =
	name =>
		size =>
			element =>
				name + ' is a ' +
					size + ' dragon that breathes ' +
						element + '!'

let fluffykinsDragon = dragon('fluffykins'); // send in name
// console.log(fluffykinsDragon) returns: size => element => name + ' is a ' + size + ' dragon that breathes ' + element + '!'

let tinyDragon = fluffykinsDragon('tiny'); // send in size
// console.log(tinyDragon) returns: element => name + ' is a ' +	size + ' dragon that breathes ' + element + '!')

console.log(tinyDragon('lighting')); // send in element
// returns: fluffykins is a tiny dragon that breathes lighting!