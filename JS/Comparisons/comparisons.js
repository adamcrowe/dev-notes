// # Comparisons

// ## == vs. ===
// * == checks for equality using coercion
// * === checks for equality without using coercion (strict equality)
2 == "2";           // true
2 === "2";          // false
undefined == null;  // true
undefined === null; // false
"0" == false;       // true

// "0" == false: when comparing a boolean with a non-boolean,
// both are coerced into numbers and then compared (0 == 0)

false == "";           // true
false == [];           // true
false == {};           // false
"" == 0;               // true
"" == [];              // true
"" == {};              // false
0 == [];               // true
0 == {};               // false
0 == null;             // false

// ## Booleans
// Equality Table <http://dorey.github.io/JavaScript-Equality-Table/>
!!(null) === false;    // true
!!(0) === true;        // false
!!(1) === true;        // true
!!(001) === true;      // true
!!('true') === true;   // true
!!('false') === false; // false
!!('') === true;       // false
!!(' ') === true;      // true
!!({});                // true
!!([]);                // true
!!(function() {});     // true
Boolean(0) === false;  // true
Boolean(1) === false;  // false
Boolean(' ') === true; // true

// ## Greater than or equal:
x >= y

// ## Less than or equal:
x <= y
