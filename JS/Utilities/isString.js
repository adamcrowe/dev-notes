/**
 * Returns true if input is a string
 *
 * @param {any} input
 * @returns {boolean}
 */
function isString(input) {
	return !!(input === '' || (input && input.charCodeAt && input.substr));
}

module.exports = isString;