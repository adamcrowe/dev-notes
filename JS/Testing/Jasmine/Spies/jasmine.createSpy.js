jasmine.createSpy()

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
	return dict.hello() + " " + dict.world(); // "hello world" 
}; 

// test spec 
describe("creatingSpy", function) { 
	it("can have a spy function", function() { 
		var person = new Person(); 
		person.getName = jasmine.createSpy("SpyName"); 
		person.getName(); 

		expect(person.getName).toHaveBeenCalled(); 
	}); 
});

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
	return dict.hello() + " " + dict.world(); // "hello world" 
}; 

// test spec 
describe("creatingSpy", function) { 
	it("can chain methods on the created spy", function() { 
		person.getSecretAgentName = jasmine.createSpy("SpyName1").and.returnValue("James Bond"); 

		expect(person.getSecretAgentName.toEqual("James Bond"); 
	});

	it("can call fake methods on the created spy", function() { 
		person.getRealName = jasmine.createSpy("spyName2").and.callFake(function() { 
			alert("I am also a spy! Ha ha!"); 

			return "John Doe"; 
		}); 

		expect(person.getRealName.toEqual("John Doe"); 
	}); 
});

describe("A spy, when created manually", function() { 
	var whatAmI; 

	beforeEach(function() { 
		whatAmI = jasmine.createSpy('whatAmI');
		whatAmI("I", "am", "a", "spy"); 
	}); 

	it("is named, which helps in error reporting", function() { 
		expect(whatAmI.and.identity()).toEqual('whatAmI'); 
	});

	it("tracks that the spy was called", function() { 
		expect(whatAmI).toHaveBeenCalled(); 
	}); 

	it("tracks its number of calls", function() { 
		expect(whatAmI.calls.count()).toEqual(1); 
	}); 

	it("tracks all the arguments of its calls", function() {
	  expect(whatAmI).toHaveBeenCalledWith("I", "am", "a", "spy"); 
	}); 

	it("allows access to the most recent call", function() { 
		expect(whatAmI.calls.mostRecent().args[0]).toEqual("I"); 
	}); 
});