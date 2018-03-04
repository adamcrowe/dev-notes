// ! Custom Matchers

// custom matcher: secondArrayItem 
describe("custom asymmetry", function() {
	var tester = {
		asymmetricMatch: function(actual) {
			var secondArrayItem = actual.split(',')[1];
			return secondArrayItem === 'bar';
		}
	};

	it("dives in deep", function() {
		expect("foo,bar,baz,quux").toEqual(tester);
	});

	describe("when used with a spy", function() { 
		it("is useful for comparing arguments", function() {
			var callback = jasmine.createSpy('callback');
			callback('foo,bar,baz'); 

			expect(callback).toHaveBeenCalledWith(tester);
		});
	});
});

// custom matcher: toBeLarge 
beforeEach(function() {
	this.addMatchers({
		toBeLarge: function() {
			// this.message is explanatory output 
			this.message = function() {
				// this.actual is the argument to expect e.g., expect(this.actual) 
				return "Expected " + this.actual + " to be large";
			};
			// test condition returning boolean 
			return this.actual > 100;
		}
	});
});

// usage: 
expect(5).toBeLarge();      // failure 
expect(200).toBeLarge();    // success 
expect(12).not.toBeLarge(); // success

// custom matcher: toBeWithinRangeOf 
beforeEach(function() {
	this.addMatchers({
		toBeWithinRangeOf: function(distance, base) {
			// this.mesage is explanatory output 
			this.message = function() { 
				var lower = base - distance;
				var upper = base + distance;
				// this.actual is the argument passed to expect e.g. expect(this.actual) 
				return "Expected " + this.actual + " to be between " + 
				lower + " and " + upper + " (inclusive)";
			};
			
			// test condition returning boolean 
			return Math.abs(this.actual - base) <= distance;
		}
	};
};

// usage: expect 6 to be within 2 of 5 (between 3 (5-2) and 7 (5+2), inclusive). 
expect(6).toBeWithinRangeOf(2, 5);