# FRONT-END TECHNICAL QUESTIONS

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