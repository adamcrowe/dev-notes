// TODO:
// <https://jasmine.github.io/2.8/introduction#section-Jasmine_Clock>
// <https://jasmine.github.io/2.8/introduction#section-Asynchronous_Support>

// to avoid false positives, always start with failing tests
fail();

// ! Given-When-Then Format
// <https://stackoverflow.com/questions/33984182/why-jasmine-is-called-a-bdd-testing-framework-even-if-no-given-when-then-sup/38752262#38752262>

// use the given-when-then format for precision about what is being tested

// Jasmine:
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