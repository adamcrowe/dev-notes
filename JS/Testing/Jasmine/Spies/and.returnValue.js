// ! .and.returnValue()

// initialization 
var Dictionary = function() {}; 

Dictionary.prototype.hello = function() { 
	return "hello"; 
}; 

Dictionary.prototype.world = function() { 
	return "world"; 
}; 

var Person = function() {}; 

Person.prototype.sayHelloWorld = function(dict) { 
	return dict.hello() + " " + dict.world(); 					// "hello world" 
}; 

// test spec 
describe("Person", function() { 
	it('uses the dictionary to say "hello world"', function() { 
		var dictionary = new Dictionary; 
		var person = new Person; 
		
		spyOn(dictionary, "hello").and.returnValue("bonjour"); 	// force return
		
		var result = person.sayHelloWorld(dictionary); 
		
		expect(result).toEqual("bonjour world"); 				// only possible with and.returnValue 
	}); 
});