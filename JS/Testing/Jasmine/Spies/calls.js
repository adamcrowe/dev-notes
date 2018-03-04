// ! .calls property tracks and exposes every spy call

.calls.any() 			// returns false if the spy has not been called, and true when at least one call
.calls.count() 			// returns the number of times the spy was called
.calls.argsFor(index) 	// returns the arguments passed to call number index
.calls.allArgs() 		// returns the arguments to all calls
.calls.all() 			// returns the context (the `this`) and arguments passed all calls
.calls.mostRecent() 	// returns the context (the `this`) and arguments for the most recent call
.calls.first() 			// returns the context (the `this`) and arguments for the first call  
.calls.reset() 			// clears all tracking for a spy
	
// When inspecting the return from .all(), .mostRecent() and .first(), the object property is set to the value of `this` when the spy was called.

it("tracks the context", function() { 
	var spy = jasmine.createSpy('spy'); 
	var baz = { 
		fn: spy 
	}; 

   var quux = { 
		fn: spy 
	}; 

	baz.fn(123); 
	quux.fn(456); 

	expect(spy.calls.first().object).toBe(baz); 
	expect(spy.calls.mostRecent().object).toBe(quux); 
});