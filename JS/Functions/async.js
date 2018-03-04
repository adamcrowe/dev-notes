// TODO: Async
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function>
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise>
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/await>

function resolveAfter2Seconds(x) { 
	return new Promise(resolve => { 
		setTimeout(() => { 
			resolve(x); 
		}, 2000); 
	}); 
}; 

// async function expression assigned to a variable 
var add = async function(x) {
	// await pauses async until a Promise is fulfilled (resolved or rejected) 
	// await takes value of fulfilled Promise and resumes execution of async fn 
	var a = await resolveAfter2Seconds(20); 
	var b = await resolveAfter2Seconds(30); 
	
	return x + a + b; 
}; 

add(10).then(v => { 
	console.log(v);  	// prints 60 after 4 seconds
}); 

// rejected Promise 
async function f3() { 
	try { 
		var z = await Promise.reject(30); 
	} catch(e) { 
		console.log(e);	// 30 
	} 
} 

f3(); 

// async function expression used as an IIFE 
(async function(x) { 
	var p_a = resolveAfter2Seconds(20); 
	var p_b = resolveAfter2Seconds(30); 

	return x + await p_a + await p_b; 
})(10).then(v => { 
	console.log(v);		// prints 60 after 2 seconds
});