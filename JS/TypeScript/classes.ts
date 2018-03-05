interface UserInterface {
	name: string;
	email: string;
	age: number;
	register();
	payInvoice();
}

class User implements UserInterface {
	name: string;
	email: string;
	age: number;

	constructor(name: string, email: string, age: number) {
		public this.name = name;
		protected this.email = email;
		private this.age = age;

		console.log('User created: ' + this.name);
	}

	register() {
		console.log(this.name + ' is now registered');
	}

	payInvoice() {
		console.log(this.name + ' has paid an invoice');
	}
}

class Member extends User {
	id: number;

	constructor(id: number, name, string, email: string, age: number) {
		super(name, email, age);
		this.id = id;
	}

	payInvoice() {
		super.payInvoice();
}

let bob = new User('Bob', 'bob@emai.com', 101);

console.log(bob.name); 	// Bob
console.log(bob.email); // age is protected
console.log(bob.age); 	// age is private
bob.register();			// Bob is now registered

let alice: User = new Member(1, 'Alice', 'alice@email.com', 101);

alice.payInvoice(); 	// Alice has paid an invoice
