// ! Currying

// Curried functions take only one argument and return a function expecting the next argument until the final function returns the accumulated output

let dragon = 
	name => 
		size => 
			element => 
				name + ' is a ' + 
					size + ' dragon that breathes ' + 
						element + '!' 

console.log(dragon('fluffykins')('tiny')('lighting'); 
// fluffykins is a tiny dragon that breathes lighting!

let dragon = 
	name => 
		size => 
			element => 
				name + ' is a ' + 
					size + ' dragon that breathes ' + 
						element + '!' 

let fluffykinsDragon = dragon('fluffykins'); 
let tinyDragon = fluffykinsDragon('tiny'); 

console.log(tinyDragon('lighting'); 
// fluffykins is a tiny dragon that breathes lighting!