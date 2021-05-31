// # Type Coercion
// ## Truthy & Falsy Values

// * Falsy values are values that will be coerced to false when forced into a boolean.
false, 0, "", undefined, null, NaN

// * Anything not explicitly on the falsy list is truthy when coerced into a boolean.
'hello', '0', ' ', [], {}, function(){}

// ## Implicit
var name = "Joey";
// coerce name string into truthy boolean
if (name) {
	console.log(name + " doesn't share food!"); // Joey doesn't share food!
}

1 + "2" = "12";       // string coerces numbers
"" + 1 + 0 = "10";    // empty string coerces numbers
"" - 1 + 0 = -1;      // subtraction coerces string
"-9\n" + 5 = "-9\n5"; // string coerces number
"-9\n" - 5 = -14;     // subtraction coerces string
"2" * "3" = 6;        // multiplication coerces string
4 + 5 + "px" = "9px"; // string coerces addition
"$" + 4 + 5 = "$45";  // string coerces numbers
"4" - 2 = 2;          // subtraction coerces string
"4px" - 2 = NaN;      // no compatible coercion
null + 1 = 1;         // additions coerces null
undefined + 1 = NaN;  // no compatible coercion

// ## Explicit
var a = "21";
// implicit coercion
var b = a * 2;
console.log(b); // 42
// explicit coercion
var c = Number(a) * 2;
console.log(c); // 42
