# BEHAVIOURIAL QUESTIONS
## Tell me about yourself and what you've been up to?
## How did you get into coding/software engineering?
## What is your work experience with coding so far?
## What is your experience with Agile methodologies?
## What specific languages are you working with?
## What’s your strongest language?
## How you do develop your coding skills?
## What are your favorite types of projects to work on?
## Tell me about the software engineering project you’re most proud of. What did you do that worked out particularly well?
## Tell me about the software development project you’re least proud of. What would you do differently?
## What do you know about our company?
## Any particular projects at our company that you are excited about?

# FRONT-END TECHNICAL QUESTIONS

## How do you organize your class modules and assets?
## How would you explain APIs to non-technical stakeholders?

## Explain a non-functional requirement and a functional one?
* Functional requirements define what the system does or must not do; non-functional requirements specify how the system should do it.
** Functional requirements are product features and focus on user requirements (e.g. webpage must load)
** Non-functional requirements are product properties and focus on user expectations (e.g. webpage must load above-the-fold content within .3 secs)

## What is your experience with object-oriented programming (OOP)?
## What is your experience with SQL?

## What is the difference between black box and white box testing?
* Black box testing is only used for establishing a correct output given an input.
* In contrast, white box testing also covers the implementation of that particular function — it tests whether its implementation is correct or not.

## Can you describe the model-view-controller (MVC) architecture?
* MVC separates data from the user interface. The MVC architecture is mostly used for GUI applications.
* The model layer contains the data, the view layer sends the data to the user, and the controller is the one that makes changes to the model based on user input.

## What is a recursive function?
* A function that calls itself directly or indirectly. The recursion continues until it reaches a set of parameters that return a value instead of calling the function recursively.

## Explain Big-O notation in the simplest terms.
* The big-O notation tells how fast an algorithm is. This is very important whether you are evaluating other people’s algorithms or your own.
* Big-O notation, also known as Landau’s symbol, tells how the runtime or space requirement of a function grows as the input grows.
* Which means that the algorithm speed isn’t measured in seconds but in the growth of the number of operations.

## Differences between: `var`, `let`, `const`
* Reassignment: `var` and `let` can be reassigned; `const` cannot be reassigned (though its properties may be)
* Block Scope: `let` and `const` are block-scoped (not accessible from outside curly braced block); `var` is globally-scoped (accessible outside block)
* Hoisted: `let` and `const` are not hoisted (throw reference error if referred before assigned value); `var` is hoisted (throw undefined error if referenced before assigned value)

## What is prototypical inheritance?
* A prototype is a blueprint of object stored as an object on the object
* Every object inherits the Object prototype and any other properties and methods stored on the base object prototype object

## What is `this`?
* `this` is the current scope else it's the window object

## What is the data structure of the DOM?
* Tree

## Stack vs Queue
* A Stack follows the Last-In First-Out (LIFO) paradigm: the last element added will be removed first
** Add element: `array.push()`
** Remove (last) element: `array.pop()`
* A Queue follows the First-In First-Out (FIFO) paradigm: the first element added will be removed first
** Add element: `array.push()`
** Remove (first) element: `array.shift()`

## How to check image is loaded
* Use the onload callback: <img onload="imageLoaded()">

## What do call() and apply() do?
* Both are used to assign a scope (`this`) to the calling function
** call() takes arguments one-at-a-time: `func.call([thisArg[, arg1, arg2, ...argN]])`
** apply() takes an array of arguments: `func.apply(thisArg, [ argsArray])`

## What is event delegation?
* Rather than adding event listeners to individual elements, you can assign an event handler to a parent element and catch any events on the children.
** This is known as "bubbling up" events to the parent.

## What is a worker?
* Because JavaScript is a single-threaded language, workers are used to offload computationally expensive work to a separate thread.

### References
[25 Most Common Web Developer Interview Questions And Answers 2020](https://blog.codegiant.io/25-web-developer-interview-questions-and-answers-3030b21ae016)