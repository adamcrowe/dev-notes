function getSum(num1:number, num2:number):number { // return value must be a number
	return num1 + num2; 
}

console.log(getSum(3, 4)); 			// compiles
console.log(getSum('Hi', 4));		// error

// set parameter and return types
let mySum(num1:any, num2:any):number {
	if (typeof num1 === 'string') {
		num1 = parseInt(num1);
	}
	if (typeof num2 === 'string') {
		num2 = parseInt(num2);
	}
	return num1 + num2; 
}

console.log(mySum('3', 4)); 		// compiles

// make parameter optional (optionalParameter?)
function getName(firstName: string, lastName?: string):string {
	if(!lastName) {
		return firstName;
	}

	return firstName + ' ' + lastName;
}

console.log(getName('Bob')); 		// compiles