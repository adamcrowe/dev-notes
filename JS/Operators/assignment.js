// ! Assignment

// !! Compound Assignment

// !!! Remainder assignment: x %= y (meaning: x = x % y)
bar = 5; 
bar %= 2     // 1 
bar %= 'foo' // NaN 
bar %=       // NaN

// !!! ES7: Exponentiation assignment: x **= y (meaning: x = x ** y)
bar = 5 
bar **= 2     // 25 
bar **= 'foo' // NaN

// !!! Left shift assignment: x <<= y (meaning: x = x << y)
// The left shift assignment operator moves the specified amount of bits to the left and assigns the result to the variable. 
var bar = 5;  //    (00000000000000000000000000000101) 
bar <<= 2;    // 20 (00000000000000000000000000010100)

// !!! Right shift assignment: x >>= y (meaning: x = x >> y)
// The right shift assignment operator moves the specified amount of bits to the right and assigns the result to the variable.
var bar = 5;  //   (00000000000000000000000000000101) 
bar >>= 2;    // 1 (00000000000000000000000000000001) 

var bar -5;   //    (-00000000000000000000000000000101) 
bar >>= 2;    // -2 (-00000000000000000000000000000010)

// !!! Unsigned right shift assignment: x >>>= y (meaning: x = x >>> y) 
// The unsigned right shift assignment operator moves the specified amount of bits to the right and assigns the result to the variable.
var bar = 5;  //   (00000000000000000000000000000101) 
bar >>>= 2;   // 1 (00000000000000000000000000000001) 

var bar = -5; // (-00000000000000000000000000000101) 
bar >>>= 2;   // 1073741822 (00111111111111111111111111111110)

// !!! Bitwise AND assignment: x &= y (meaning: x = x & y) 
// a AND b yields 1 only if both a and b are 1
// The bitwise AND assignment operator uses the binary representation of both operands, does a bitwise AND operation on them and assigns the result to the variable.
var bar = 5; 
// 5: 00000000000000000000000000000101 
// 2: 00000000000000000000000000000010 
bar &= 2; // 0

// !!! Bitwise XOR assignment: x ^= y (meaning: x = x ^ y)
// a XOR b yields 1 if a and b are different.
// The bitwise XOR assignment operator uses the binary representation of both operands, does a bitwise XOR operation on them and assigns the result to the variable.
var bar = 5; 
bar ^= 2; // 7 
// 5: 00000000000000000000000000000101 
// 2: 00000000000000000000000000000010 
// ----------------------------------- 
// 7: 00000000000000000000000000000111

// !!! Bitwise OR assignment: x |= y (meaning: x = x | y)
// a OR b yields 1 if either a or b is 1.
// The bitwise OR assignment operator uses the binary representation of both operands, does a bitwise OR operation on them and assigns the result to the variable. 
var bar = 5; 
bar |= 2; // 7 
// 5: 00000000000000000000000000000101 
// 2: 00000000000000000000000000000010 
// ----------------------------------- 
// 7: 00000000000000000000000000000111
