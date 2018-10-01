// REGEX REFERENCE: http://www.rexegg.com | https://regexr.com | https://visca.com/regexdict/
/pattern/flags		
/(a|b)/				// a or b captured and referenced as $1
/abc/				// A sequence of characters
/[abc]/				// Any character from a set of characters
/[^abc]/			// Any character not in a set of characters
/[a-z]/				// Any single character in the range a-z
/[a-zA-Z]/			// Any single character in the range a-z or A-Z
/[a-z]+/gi			// Any single character in the range a-z or A-Z (case insensitive)
/[0-9]/				// Any character in a range of characters
/x{0,}/				// One or more occurrences of the pattern x (long)
/x+/				// One or more occurrences of the pattern x (short)
/x+?/				// One or more occurrences, nongreedy
/x{0,}/				// Zero or more occurrences (long)
/x*/				// Zero or more occurrences (short)
/x?/				// Zero or one occurrence
/x{3}/				// Exactly 3 of occurrences
/x{3,}/				// 3 or more of occurrences
/x{3,6}/			// Between 3 and 6 occurrences
/x(?= y)/			// Positive lookahead: Match 'x' if it is followed by 'y'
/w(?=w)/			// Positive lookahead: Match 'w' only if next character is 'w' (test case: 'ww')
/w(?=.*w)/			// Positive lookahead: Match 'w' when next or any subsequent character is 'w' (test case: 'wow' returns first 'w')
/w(?!.*w)/			// Negative lookahead: Match last 'w' / Match 'w' if subsequent characters do not match the pattern ('wow' last 'w')
/x(?! y)/			// Negative lookahead: Match 'x' if it is not followed by 'y'
/(w)(?!.*\1)/		// Negative lookahead: Match last capture group ('w') if subsequent characters do not match the capture group ('w')
$&					// The original string
/(...)/				// Capture everything enclosed
/(abc)/				// A capture group (captured and referenced as $1)
/a|b|c/				// Any one of several patterns
/\d/				// Any digit character
/\D/				// Any non-digit character
/\w/				// Any alphanumeric character (“word character”) (letter, number, underscore)
/\W/				// Any non-word alphanumeric character (“word character”)
/\s/				// Any whitespace character
/\S/				// Any non-whitespace character
/./					// Any single character except newlines
/\b/				// Any word boundary character
/^/					// Start of input
/$/					// End of input

Modifiers/Flags:
g					// global (get all occurrences not just first)
i					// case insensitive
m					// make dot match newlines 
					// more: http://www.rexegg.com/regex-modifiers.html

// REGEX EXAMPLES:
var regex = new RegExp("[^0-9-" + decimal + "]", "g"); // find non-numeric, non-dash, and non-decimal characters 
'string'.match(/s/); // returns: ["s", index: 0, input: "s"]
'string'.match(/x/); // returns: null
'ss'.match(/s/); // returns: ["s", index: 0, input: "ss"]
'ss'.match(/s/g); // (g = global flag = get all instances of pattern) returns: ["s", "s"]
'as'.match(/a|s/g); // returns: ["a", "s"]
'as'.match(/as/g); // returns: ["as"]
'abcdefg'.match(/a|b|c|d|e|f|g/g); // returns: ["a", "b", "c", "d", "e", "f", "g"]
'abcdefg'.match(/./g); // (. = any single character) returns: ["a", "b", "c", "d", "e", "f", "g"]
'abcdefgABC123#% '.match(/./g); // returns: ["a", "b", "c", "d", "e", "f", "g", "A", "B", "C", "1", "2", "3", "#", "%", " "]
'abCD12%&'.match(/[abcdefg]/g); // ([] = members of a set) returns: ["a", "b"]
'abCD12%&'.match(/[a-z]/g); // ([startRange-endRange]) returns: ["a", "b"]
'abAB'.match(/[A-Z]/g); // ([startRange-endRange]) returns: ["A", "B"]
'abcdefgABC123#%'.match(/[0-9]/g); // returns: ["1", "2", "3"]
'abcdefgABC123#%'.match(/[a-zA-Z0-9]/g); // returns: ["a", "b", "c", "d", "e", "f", "g", "A", "B", "C", "1", "2", "3"]
'abcdefgABC123#%'.match(/[a-zA-Z%]/g); // combine range with character returns: ["a", "b", "c", "d", "e", "f", "g", "A", "B", "C", "%"]
'abcdefgABC123#%'.match(/[^a-zA-Z0-9]/g); // (^ = NOT) returns: ["#", "%"]
'DONT!be*a^framework-chaser'.match(/[a-zA-Z]{1,20}/g); // ({} = consecutive matches) returns: ["DONT", "be", "a", "framework", "chaser"]
'DONT!be*a^framework-chaser'.match(/[a-zA-Z]{1,}/g); // open-ended consecutive returns: ["DONT", "be", "a", "framework", "chaser"]
'DONT!be*a^framework-chaser'.match(/[a-zA-Z]+/g); // shortened open-ended consecutive returns: ["DONT", "be", "a", "framework", "chaser"]
'DONT!be*a^framework-chaser'.match(/[a-z]+/gi); // (i = case insensitive) returns: ["DONT", "be", "a", "framework", "chaser"]
'345-666-9999'.match(/[0-9]{3}/g); // returns: ["345", "666", "999"]
'345-666-9999'.match(/[0-9]{3}-/g); // returns: ["345-", "666-"]
'345-666-9999'.match(/[0-9]{3}-[0-9]{3}-/g); // returns: ["345-666-"]
'345-666-9999'.match(/[0-9]{3}-[0-9]{3}-[0-9]{4}/g); // returns: ["345-666-9999"]
'345-666-9999'.match(/\d{3}-\d{3}-\d{4}/g); // (\d = digit) returns: ["345-666-9999"]
'Info: 111-222-3333'.replace(/\d{3}-\d{3}-\d{4}/, 'phone number was here'); // returns: "Info: phone number was here"
'Info: 111-222-3333'.replace(/\d{3}-\d{3}-\d{4}/, 'phone number is $&'); // ($& = the string) returns: "Info: phone number is 111-222-3333"
'Info: 111-222-3333'.replace(/\d{3}-\d{3}-(\d{4})/, '$& $1'); // (\d{4}) = captured group, referenced as $1 (first captured group): $& $1
'Info: 111-222-3333'.replace(/\d{3}-\d{3}-(\d{4})/, '$& $1'); // returns: "Info: 111-222-3333 3333"
'Info: 111-222-3333'.replace(/(\d{3})-(\d{3})-(\d{4})/, '$& $1 $2 $3'); // 3 captured groups returns: "Info: 111-222-3333 111 222 3333"Ho
'Lovelace, Ada Babbage, Charles Turing, Alan'.replace(/([a-z]+), ([a-z]+)/gi, '$2 $1'); // returns: "Ada Lovelace Charles Babbage Alan Turing" 
'ww'.match(/w(?=w)/g); // match 'w' only if next character is 'w' // returns: ["w"]
'wow'.match(/w(?=.*w)/g); // match 'w' when next or any subsequent character is 'w' (testcase: 'wow')
'wow'.match(/w(?!.*w)/g); // match last 'w' in string // returns: ["w"]
'aaww'.match(/(w)(?!.*\1)/g); // match last back referenced capture group (\1 = 'w') in string // returns: ["w"]
'aaww'.match(/(a|w)(?!.*\1)/g); // match last back referenced capture group (\1 = 'w') in string // returns: ["a", "w"]
'aaaabbbcccddd'.match(/(.)(?!.*\1)/g); // match last capture group (\1 = 'w') in string // returns: ["a", "b", "c", "d"]
'aaaabbbcccddd'.match(/(.)(?!.*\1)/g).length; // how many unique characters? returns: 4
'rrr'.match(/(r)(\1{2})/g); // match 'r' followed by two r's ('rr') returns: ["rrr"]
'rarr'.match(/(r)a(\1{2})/g); // match 'r' followed by two r's ('rr') returns: ["rarr"]
'(999)'.match(/\((.*)\)/); // match zero or more occurrences of anything within and including parentheses // returns: ["(999)", "999"]
'(999)'.replace(/\((.*)\)/, "-$1"); // returns: "-999"  
'999999'.replace(/\B(?=(\d{3})+(?!\d))/g, ','); // return "999,999" i.e., comma-separate the value every 3 digits
