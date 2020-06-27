See: `TS` (Typescript) folder

# CONCEPTS
> The four principles of object-oriented programming are encapsulation, abstraction, inheritance, and polymorphism.

## Encapsulation
> Encapsulation is achieved when each object keeps its state private, inside a class. Other objects don’t have direct access to this state. Instead, they can only call a list of public functions — called methods.
* Encapsulation is the process of enclosing programming elements inside larger, more abstract entities. Also known as information hiding, or separation of concerns.
* Encapsulation is when you separate or hide one part of your code from the rest of your code (see the Open-Closed principle)
* Encapsulation separates your data from your app's behavior. Then you can control how each part is used by the rest of your application.
* The simplest form of encapsulation is when you make class properties private, and only expose manipulations to those properties via public methods.

## Abstraction
> Applying abstraction means that each object should only expose a high-level mechanism for using it.
* This mechanism should hide internal implementation details. It should only reveal operations relevant for the other objects.
* Preferably, this mechanism should be easy to use and should rarely change over time.
* Think of it as a small set of public methods which any other class can call without “knowing” how they work.

## Inheritiance
> [Similar classes can] share common logic. The child class reuses all fields and methods of the parent class (common part) and can implement its own (unique part).
* Inheritance lets you build classes based on other classes (extending a class), and avoid duplicating and repeating code.
* By implemented a class hierarchy, each class adds only what is necessary for it while reusing common logic with the parent classes.
* For example, `PrivateTeacher` class can inherit common logic from `Teacher` class and `Teacher` can inherit common logic from `Person` class.
* In inheritance, the class being inherited from is called the `superclass`, and the class that is doing the inheritance is called the `subclass`.

* `ExtendingClass` extends `BaseClass`
    * `ExtendingClass` inherits all `BaseClass` functionality
    * `ExtendingClass` is a subclass of `BaseClass`; `BaseClass` is a superclass of `ExtendingClass`
        * A subclass can add its own methods to the methods it inherits from its superclass.
        * A subclass can either override the behavior of its superclass methods, or just call the `superclass's methods.

## Polymorphism
> Polymorphism means “many shapes” in Greek.
* Polymorphism allows a `subclass` to stand in for the `superclass`.
* A subclass "stands in" for its `superclass` by implementing an interface (or by extending an `abstract class`) that defines the required methods:

``` typescript
interface GeometricFigure {
	calculateSurface();
	calculatePerimeter();
}
```
* `Triangle`, `Circle`, and `Rectangle` each contain their own implementations of `GeometricFigure` methods
* (`Triange` implements `GeometricFigure`...)

### References
[How to explain object-oriented programming concepts to a 6-year-old](https://www.freecodecamp.org/news/object-oriented-programming-concepts-21bb035f7260)
