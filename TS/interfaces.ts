/**
 * 01. Interfaces
 * An interface describes only the structure (but not values) of an object.
 * Interfaces are not compiled to JavaScript; they are used only during compilation.
 */

interface Person {
    name: string;
    age: number;
    greet(phase: string): void;
}

let user1: Person;
user1 = {
    name: 'Alice',
    age: 21,
    greet(phrase: string) {
        console.log(phrase + this.name);
    }
}

user1.greet('Hi, ');

// For comparison...
// type Person = {
//     name: string;
//     age: number;
//     greet(phase: string): void;
// }

/**
 * 02. Interfaces and Class Implementation Contracts
 * Unlike types, an interface can be implemented by a class
 */

interface Named {
    readonly name: string;
    outputName?: string; // outputName is optional
}

interface Greetable extends Named { // inherit from Named
    greet(phase: string): void;
}

class User implements Greetable { // User implements Greetable
    name: string;
    age: number;

    constructor(
        n: string,
        a: number
    ) {
        this.name = n;
        this.age = a;
    }

    greet(phrase: string) {
        console.log(phrase + this.name);
    }
}

const user2: Greetable = new User('Alice', 21); // user2 implements Greetable
console.log('+++ user2: ', user2);
user2.greet('Hello, ');
// user2.name = 'Bob'; // error: name is read-only

/**
 * 03. Interfaces as Function Types
 */

interface AddFn {
    (a: number, b: number): number; // params and return type
}

let add: AddFn; // add must implement AddFn interface

add = (n1: number, n2: number) => {
    return n1 + n2;
}

console.log('+++ add: ', add(1, 3));

// For comparison...
// type AddFn = (a: number, b: number) => number;


// Interface vs Type alias in TypeScript 2.7 <https://medium.com/@martin_hotell/interface-vs-type-alias-in-typescript-2-7-2a8f1777af4c>