// ! beforeEach() + afterEach()

describe("employee", function() {
	var employee; 
	// execute some code before every spec 
	beforeEach(function() {
		employee = new Employee;
	});
	// spec 
	it("has a name", function() {
		expect(employee.name).toBeDefined();
	});
	// spec 
	it("has a role", function() {
		expect(employee.role).toBeDefined();
	});
});
	
describe("Calculator", function() { 
	var calculator = new Calculator; 
	// execute some code after each spec 
	afterEach(function() {
		calculator.reset();
	});
	// spec 
	it("can add two positive integers", function() {
		expect(calculator.add(5, 12)).toEqual(17); 
	});
	// spec 
	it("can add two negative integers", function() {
		expect(calculator.add(-5, -12)).toEqual(-17); 
	});
});