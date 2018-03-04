// factorial(n);

// 4! = 4 * 3 * 2 * 1 
// n! = n * (n - 1)! 

function factorial(n) { 
	// Base case or exit recursive case: 
	if (n === 1) { 
		return 1; 
	// Recursive case: 
	} else { 
		return n * factorial(n - 1); 
	} 
}

factorial(4); 