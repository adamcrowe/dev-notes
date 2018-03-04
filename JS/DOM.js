// ! DOM

// !! DOM Manipulation

// !!! appendChild()
var summaryString = 
	('Tests: ' + numberOfTests + 
		'. PASSED: ' + passed + 
		'. FAILED: ' + failures + '.'); 

var summaryElement = document.createElement('h1'); 

summaryElement.textContent = summaryString; 

document.body.appendChild(summaryElement);

// !! DOM Traversal

// traverse DOM from element 
function logEachChildElement(element) { 
	// Every case: 
	// Log the current element 
	console.log(element); 
	// Recursive case: 
	// Repeat steps for each child element 
	if(element.children.length > 0) { 
		for (var i = 0; i < element.children.length; i++) { 
			logEachChildElement(element.children[i]); 
		} 
	} 
	// Base case or exit recursive case: 
	// If there are no children, do nothing 
} 

logEachChildElement(document.body);

// traverse DOM from element and process with callback 
function forEachChildElement(element, callback) { 
	// Every case: 
	// Run callback on the current element 
	callback(element); 
	// Recursive case: 
	// Repeat steps for each child element 
	if(element.children.length > 0) { 
		for (var i = 0; i < element.children.length; i++) { 
			forEachChildElement(element.children[i], callback); 
		} 
	} 
	// Base case or exit recursive case: 
	// If there are no children, do nothing 
} 

forEachChildElement(document.body, function(element) { 
	console.log(element.nodeName); 
});