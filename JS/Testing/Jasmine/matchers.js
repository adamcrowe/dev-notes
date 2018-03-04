// ! Matchers

// inverse: not.toBe / not.toEqual / not.toThrow / etc

toBe 				// strict comparisons ===
toEqual 			// coercive comparisons ==
toMatch 			// regular expressions
toBeDefined 		// comparison against `undefined` expect(foo).toBeDefined();
tobeUnDefined 		// comparison against `undefined` expect(foo).not.tobeUnDefined();
toBeNaN 			// nonsensical number values
toBeNull 			// comparison against `null`
toBeTruthy 			// boolean casting testing
toBeFalsy 			// boolean casting testing
toContain 			// item within array or substring within string
toBeLessThan 		// a < b
toBeGreaterThan 	// b > a
toBeCloseTo 		// expect(12.34).toBeCloseTo(12.3, 1); // 1dp
toThrow 			// testing if function throws exception 
toThrowError 		// testing for specific thrown exception expect(foo).toThrowError(TypeError, "err");

// !! jasmine.any(String, Number, Function, Object)
describe("jasmine.any", function() {
	it("matches any value", function() {
		expect({}).toEqual(jasmine.any(Object));
		expect(12).toEqual(jasmine.any(Number));
	});
	
	describe("when used with a spy", function() {
		it("is useful for comparing arguments", function() {
			var foo = jasmine.createSpy('foo'); 
			foo(12, function() {
				return true;
			});
			expect(foo).toHaveBeenCalledWith(jasmine.any(Number), jasmine.any(Function)); 
		});
	});
});

expect(rand()).toEqual(jasmine.any(Number));			// true
expect("Hello world").toEqual(jasmine.any(String));		// true
expect({}).toEqual(jasmine.any(Object));				// true
expect(new myObject).toEqual(jasmine.any(myObject));	// true

// !! jasmine.anything
describe("jasmine.anything", function() {
	it("matches anything", function() {
		expect(1).toEqual(jasmine.anything());
	});

 	describe("when used with a spy", function() {
		it("is useful when the argument can be ignored", function() {
			var foo = jasmine.createSpy('foo');
			
			foo(12, function() {
				return false;
			}); 
			// returns true if the actual value is not null or undefined. 
			expect(foo).toHaveBeenCalledWith(12, jasmine.anything());
		});
	});
});

// !! jasmine.objectContaining
describe("jasmine.objectContaining", function() {
	var foo;
	beforeEach(function() {
		foo = {
			a: 1,
			b: 2,
			bar: "baz"
		};
	});

	it("matches objects with the expect key/value pairs", function() {
		expect(foo).toEqual(jasmine.objectContaining({
			bar: "baz"
		}));
		
		expect(foo).not.toEqual(jasmine.objectContaining({
			c: 37
		}));
	});

	describe("when used with a spy", function() {
		it("is useful for comparing arguments", function() {
			var callback = jasmine.createSpy('callback');

			callback({
				bar: "baz"
			});

			expect(callback).toHaveBeenCalledWith(jasmine.objectContaining({
				bar: "baz"
			}));

			expect(callback).not.toHaveBeenCalledWith(jasmine.objectContaining({ 
				c: 37
			}));
		});
	});
});

// !! jasmine.arrayContaining
describe("jasmine.arrayContaining", function() {
	var foo;

	beforeEach(function() {
		foo = [1, 2, 3, 4];
	});

	it("matches arrays with some of the values", function() {
		expect(foo).toEqual(jasmine.arrayContaining([3, 1]));
		expect(foo).not.toEqual(jasmine.arrayContaining([6]));
	});

	describe("when used with a spy", function() {
		it("is useful when comparing arguments", function() {
			var callback = jasmine.createSpy('callback');

			callback([1, 2, 3, 4]);

			expect(callback).toHaveBeenCalledWith(jasmine.arrayContaining([4, 2, 3]));
			expect(callback).not.toHaveBeenCalledWith(jasmine.arrayContaining([5, 2]));
		});
	});
});

// !! jasmine.stringMatching
describe('jasmine.stringMatching', function() {
	it("matches as a regexp", function() {
		expect({foo: 'bar'}).toEqual({foo: jasmine.stringMatching(/^bar$/)});
		expect({foo: 'foobarbaz'}).toEqual({foo: jasmine.stringMatching('bar')});
	});

	describe("when used with a spy", function() {
		it("is useful for comparing arguments", function() {
			var callback = jasmine.createSpy('callback');
			callback('foobarbaz');

			expect(callback).toHaveBeenCalledWith(jasmine.stringMatching('bar'));
			expect(callback).not.toHaveBeenCalledWith(jasmine.stringMatching(/^bar$/));
		});
	});
});