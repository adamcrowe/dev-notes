// roundFloat()

function roundFloat(value, precision) { 
	// value = 1.005; precision = 2; result we want = 1.01 
	// 1.005e2 == 1.005 * 100 == 100.5 
	var exponentialForm = Number(value + 'e' + precision); 
	// 100.5 rounded = 101 
	var rounded = Math.round(exponentialForm); 
	// 101 ==> 101e-2 == 101/100 == 1.01 
	var result = rounded + 'e-' + precision; 
	
	return result; 
}