/**
 * Returns a rounded floating point number
 *
 * @param {number} value
 * @param {number} precision
 */
function roundFloat(value, precision) {
	// value = 1.005; precision = 2; result we want = 1.01
	// 1.005e2 == 1.005 * 100 == 100.5
	const exponentialForm = Number(value + 'e' + precision);
	// 100.5 rounded = 101
	const rounded = Math.round(exponentialForm);
	// 101 ==> 101e-2 == 101/100 == 1.01
	const result = rounded + 'e-' + precision;
	return result;
}

module.exports = roundFloat;