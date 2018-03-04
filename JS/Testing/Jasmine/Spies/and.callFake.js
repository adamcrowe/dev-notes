// ! .and.callFake() 
// replace fn with fake fn 

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
	return dict.hello() + " " + dict.world(); 				// "hello world" 
}; 

// test spec 
describe("simulate API calls", function) { 
	it("can call a fake function", function() { 
		var fakeHello = function() { 
			alert("I am a spy! Ha ha!"); 
		
			return "hello"; 
		}; 

		var dictionary = new Dictionary(); 

		spyOn(dictionary, "hello").and.callFake(fakeHello); // intercept .hello 
		
		dictionary.hello(); 								// alert: "I am a spy! Ha ha!" 
	}); 
});