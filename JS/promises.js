// ! Promises
// TODO: .reduce() example: Running Promises in Sequence 
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce>
// http://bluebirdjs.com 

import Promise from 'bluebird' 

const whenDragonLoaded = new Promise((resolve, reject)) => { 
	setTimeout(() => resolve({ 
		{ name: 'Fluffykins', health: 70 } 
	}, 2000) 
}); 

const names = 
	whenDragonLoaded 
		.map(dragon => dragon.name) 
		.then(name =>  console.log(name)); 

// output 
'Fluffykins'