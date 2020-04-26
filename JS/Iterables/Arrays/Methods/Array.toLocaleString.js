// ! .toLocaleString([locales[, options]]);

// returns a string representing the elements of the array
// the elements are converted to Strings using toLocaleString methods with locale-specific separators (e.g. “,”)

var array1 = [1, 'a', new Date('21 Dec 1997 14:12:00 UTC')];
var localeString = array1.toLocaleString('en', {timeZone: "UTC"});

console.log(localeString); // "1,a,12/21/1997, 2:12:00 PM"

// using locales and options
// the elements of the array are converted to strings using their toLocaleString methods.

// Object: Object.prototype.toLocaleString()
// Number: Number.prototype.toLocaleString()
// Date: Date.prototype.toLocaleString()

// always display the currency for the strings and numbers in the prices array:
var prices = ['￥7', 500, 8123, 12]; 
console.log(
	prices.toLocaleString('ja-JP', { style: 'currency', currency: 'JPY' })
); 	// "￥7,￥500,￥8,123,￥12"

// more examples:
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DateTimeFormat
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/NumberFormat
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl