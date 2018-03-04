// ! Method Definition Syntax

// ES6 shorter syntax 
var obj = { 
	foo() {}, 
	bar() { return 'baz'; } 
}; 

console.log(obj.bar()); 	// baz

// computed property names 
var bar = { 
	foo0: function() { return 0; }, 
	foo1() { return 1; }, 
	['foo' + 2]() { return 2; } 
}; 

console.log(bar.foo0()); 	// 0 
console.log(bar.foo1()); 	// 1 
console.log(bar.foo2()); 	// 2