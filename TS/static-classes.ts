/* Static methods and properties are directly accessible on a class without having to instantiate the class e.g., Math.PI, Math.pow(10, 2) */
/* "Static classes" are classes that group together related functionality (methods) but do not act as blueprints for objects */

class Department {
	static fiscalYear: number = 2020;
}

console.log(Department.fiscalYear); // 2020
