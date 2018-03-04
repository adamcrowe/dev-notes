// ! Function Stack 

// the function call stack: 
function foo(i) { 
	debugger; 
	if (i < 0) {
		return; // when i === -1, exit foo(i - 1) calls
	} 
	console.log('begin: ' + i); 
	foo(i - 1); // when exited foo(i - 1) calls... 
	console.log('end: ' + i); // ...still on the call stack i === 0 | 1 | 2 | 3 
} 

foo(3);
// output: 
// begin: 3 
// begin: 2 
// begin: 1 
// begin: 0 
// end: 0 
// end: 1 
// end: 2 
// end: 3