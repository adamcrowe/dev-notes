// ! .and.callThrough()

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
	return dict.hello() + " " + dict.world(); 			// "hello world" 
}; 

// test spec 
describe("Person", function() { 
	it('uses the dictionary to say "hello world"', function() { 
		var dictionary = new Dictionary; 
		var person = new Person; 

		spyOn(person, "sayHelloWorld").and.callThrough(); 	// track calls and return     
		
		var result = person.sayHelloWorld(dictionary); 
		
		expect(result).toEqual("hello world"); 			// only possible with andCallThrough 

		expect(person.sayHelloWorld).toHaveBeenCalled(); 
	}); 
});