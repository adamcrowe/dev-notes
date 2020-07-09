/**
 * Returns factorial of n
 *
 * Example: Factorial 4
 * 4! = 4 * 3 * 2 * 1
 * @param {number} n
 */
function factorial(n) {
	// Base/exit recursion case:
	if (n === 1) {
		return 1;
	// Recursive case:
	} else {
		return n * factorial(n - 1);
	}
}

console.log(factorial(4)); // 4 * 3 * 2 * 1