See: `TS` (Typescript) folder

# Concepts
## Inheritiance
* Inheritance lets you build classes based on other classes, and avoid duplicating and repeating code.
* Inheritance is when one class extends another class to reuse or build upon the inherited class’s behavior.
* In inheritance, the class being inherited from is called the superclass; the class that is doing the inheritance is called the subclass.

* `ExtendingClass extends BaseClass`
    * `ExtendingClass` inherits all `BaseClass` functionality
    * `ExtendingClass` is a subclass of `BaseClass`; `BaseClass` is a superclass of `ExtendingClass`
        * A subclass can add its own methods to the methods it inherits from its superclass.
        * A subclass can change the behavior of its superclass, as well as call the superclass's methods. This is called overriding the superclass's behavior.

## Polymorphism
* Polymorphism is closely related to inheritance. When one class inherits from another, then polymorphism allows a subclass to stand in for the superclass.
* Polymorphism is when a subclass “stands in" for its superclass. Polymorphism allows your applications to be more flexible, and less resistant to change.

* `Jet extends Airplane`
    * Jet subclasses Airplane. That means that anywhere that you can use an Airplane... (`Airplane plane = new Airplane()`) ...you could also use a Jet (`Airplane plane = new Jet()`).

## Encapsulation
* Encapsulation is when you separate or hide one part of your code from the rest of your code.
* Encapsulation is a key technique in being able to follow the Open-Closed principle.
* Encapsulation separates your data from your app’s behavior. Then you can control how each part is used by the rest of your application.
* The simplest form of encapsulation is when you make the variables of your classes private, and only expose that data through methods on the class.
* Encapsulation. The process of enclosing programming elements inside larger, more abstract entities. Also known as information hiding, or separation of concerns.
