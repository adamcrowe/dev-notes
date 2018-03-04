// ! .toHaveBeenCalled()

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
	return dict.hello() + " " + dict.world(); 	// "hello world" 
}; 

// test spec 
describe("Person", function() { 
	it('uses the dictionary to say "hello world"', function() { 
		var dictionary = new Dictionary; 
		var person = new Person; 
		
		spyOn(dictionary, "hello"); 			// replace Dictionary.prototype.hello with spy 
		spyOn(dictionary, "world"); 			// replace Dictionary.prototype.world with spy 
		
		person.sayHelloWorld(dictionary);    
		
		expect(dictionary.hello).toHaveBeenCalled(); // spy reports back 
		expect(dictionary.world).toHaveBeenCalled(); // spy reports back 
	}); 
});