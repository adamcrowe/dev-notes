// ! Recursion
// Recursion is when a function calls itself (until it doesn't)

// Use case: To replace loops

// before:
var x = 0; 

while (x < 10) { 	// exit condition 
	// do stuff 
	x++; 
} 

// after: 
function loop(x) { 
	if (x >= 10) { 	// exit condition 
		return; 
	}
	// do stuff 
	loop(x + 1); 	// recursive call 
} 

loop(0);

// Use case: Traversing a tree-like structure to manipulate its nodes
let categories = [ 
	{ id: 'animals', parent: null }, 
	{ id: 'mammals', parent: 'animals' }, 
	{ id: 'cats', parent: 'mammals' }, 
	{ id: 'dogs', parent: 'mammals' }, 
	{ id: 'chihuahua', parent: 'dogs' }, 
	{ id: 'labrador', parent: 'dogs' }, 
	{ id: 'persian', parent: 'cats' }, 
	{ id: 'siamese', parent: 'cats' } 
]; 

let makeTree = (categories, parent) => { 
	let node = {}; 
	categories 
		.filter(c => c.parent === parent) 
		.forEach(c => node[c.id] = 
			makeTree(categories, c.id)); // recursive calls 

 	return Object.keys(node).length ? node : null;  
}; 

console.log( 
	JSON.stringify( 
		makeTree(categories, null) // initial call 
	, null, 2) 
); 

// anticipated tree structure 
{ 
	animals: { 
		mammals: { 
			cats: { 
				'persian': null 
				'siamese': null 
			}, 
			dogs: { 
				'chihuahua': null 
				'labrador': null 
			}      
		} 
	} 
}