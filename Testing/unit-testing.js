// Given-When-Then Format
// <https://stackoverflow.com/questions/33984182/why-jasmine-is-called-a-bdd-testing-framework-even-if-no-given-when-then-sup/38752262#38752262>

// Use the given-when-then format for precision about what is being tested
describe("Given a string containing 'foo'", function() {  
	var someString;
	beforeEach(function() {
		someString = "foo";
	});

   describe("When I append 'bar'", function() {
		beforeEach(function() {
			someString += "bar";
		});

		it("Then the string is 'foobar'", function() {
			expect(someString).toBe("foobar");
		});
	});
});
