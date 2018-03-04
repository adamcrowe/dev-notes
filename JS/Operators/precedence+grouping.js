// ! Precedence and Grouping
// * Operator Precedence Table <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence#Table>

// > The precedence of operators determines the order they are applied when evaluating an expression. You can override operator precedence by using parentheses.
var a = 1; 
var b = 2; 
var c = 3; 

// default precedence 
a + b * c     // 7 
// evaluated by default like this 
a + (b * c)   // 7 
// now overriding precedence 
// addition before multiplication 
(a + b) * c   // 9 
// which is equivalent to 
a * c + b * c // 9