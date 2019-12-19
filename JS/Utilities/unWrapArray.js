// unWrapArray()

function unwrapArray(data) { 
	// Base case or exit recursive case: 
	if (!Array.isArray(data)) { 
		return data; 
	// Recursive case: 
	 } else { 
		return unwrapArray(data[0]); 
	} 
} 

unwrapArray([[[[[['wrapped']]]]]]);