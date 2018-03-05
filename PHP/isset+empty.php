<?php
// The Definitive Guide To PHP's isset and empty <http://kunststube.net/isset>

// isset() does not trigger an error if the variable does not exist
isset() // returns TRUE if the variable exists and is not NULL 
// empty() does not trigger an error if the variable does not exist
empty() // returns TRUE if the variable does not exist or its value equals FALSE 

// empty() is nothing more and nothing less than a convenient shortcut for !isset($var) || $var == false
// the following things are considered "empty": 
// * "" (an empty string); 0 (0 as an integer); 
// * 0.0 (0 as a float); "0" (0 as a string); 
// * null; 
// * false; 
// * an empty array; 
// * var $var; (a variable declared, but without a value)
?>