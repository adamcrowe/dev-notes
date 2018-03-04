// ! hasOwnProperty()
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/hasOwnProperty>

var dog = { 
	// prototype property 
	bark: function() {
		console.log('bark');
	}
}

var myDog = Object.create(dog); 

// non-prototype property 
myDog.name = 'Rover';

for (property in myDog) {
	console.log(property); 		// returns: bark, name 
}

// only get non prototype properties of an object 
for (property in myDog) { 
	if (myDog.hasOwnProperty(property)) { 
		console.log(property) 	// returns: name 
	}
}