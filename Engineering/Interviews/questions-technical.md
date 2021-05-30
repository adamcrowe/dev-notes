# TECHNICAL QUESTIONS

## How do you organize your class modules and assets?
## How would you explain APIs to non-technical stakeholders?

## Explain a non-functional requirement and a functional one?
* Functional requirements define what the system does or must not do; non-functional requirements specify how the system should do it.
** Functional requirements are product features and focus on user requirements (e.g. webpage must load)
** Non-functional requirements are product properties and focus on user expectations (e.g. webpage must load above-the-fold content within .3 secs)
* See: [Requirements](../Engineering/requirements.md)

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
* Big-O notation tells how fast an algorithm is. This is very important when evaluating whether to use other people's algorithms or your own.
* Big-O notation, also known as Landau's symbol, tells us how the runtime or space requirement of a function grows as the input grows.
* Which means that the algorithm speed isn't measured in seconds but in the growth of the number of operations.

## Differences between: `var`, `let`, `const`
* Reassignment: `var` and `let` can be reassigned; `const` cannot be reassigned (though its properties can be)
* Block Scope: `let` and `const` are block-scoped (not accessible from outside curly braced block); `var` is globally-scoped (accessible outside block)
* Hoisted: `let` and `const` are not hoisted (throw reference error if referred before assigned value); `var` is hoisted (throw undefined error if referenced before assigned value)

## What is prototypical inheritance?
* A prototype is a blueprint of object stored as an object on the object
* Every object inherits the `Object` prototype and any other properties and methods stored on the base object prototype object

## What is `this`?
* `this` is the current lexical scope, else it's the window object

## What is the data structure of the DOM?
* Tree

## What is a Stack? What is a Queue?
* A Stack follows the Last-In First-Out (LIFO) paradigm: the last element added will be removed first
** Add element: `array.push()`
** Remove (last) element: `array.pop()`
* A Queue follows the First-In First-Out (FIFO) paradigm: the first element added will be removed first
** Add element: `array.push()`
** Remove (first) element: `array.shift()`

## How do you check an image is loaded on the page?
* Use the `onload()` callback: <img onload="imageLoaded()">

## What do call() and apply() do?
* Both are used to assign, and thereby change, the scope (`this`) of the calling function
** `call()` takes arguments one-at-a-time: `func.call([thisArg[, arg1, arg2, ...argN]])`
** `apply()` takes an array of arguments: `func.apply(thisArg, [ argsArray])`

## What is event delegation?
* Rather than adding event listeners to individual elements (which is expensive in terms of performance)...
* ...you can assign an event handler to a parent element that will catch any events fired on the children.
* This is known as "event bubbling" where you "bubble up" events from the children to the parent handler.

## What is a worker?
* Because JavaScript is a single-threaded language, workers are used to offload computationally expensive work to a separate thread ("worker").

## How do you reverse a string?
```javascript
function reverseString(str) {
    return str.split('').reverse().join('');
    // return [...str].reverse().join('');
}
console.log(reverseString('Hello, world!')); // !dlrow ,olleH
```

## How do you remove duplicate strings?
```javascript
function removeDuplicateStrings(str) {
    const arr = str.split(' '); // create array of words (without spaces)
    const set = new Set(arr); // a Set cannot have duplicate items
    return [...set].join(' '); // create string of words (with spaces)
    // return [...new Set(str.split(' '))].join(' ');
}
console.log(removeDuplicateStrings('This is is a test test string')); // This is a test string
```

## How do you flatten an array without using .flat()?
```javascript
/**
 * Returns a flattened array from a nested array of any depth
 */
function flattenArray(arr) {
    return arr.reduce((acc, item) => {
        // Base case: item is not an array
        if (!Array.isArray(item)) {
            acc.push(item);
        // Recursive case: item is an array
        } else {
            acc = acc.concat(flattenArray(item));
        }
        return acc;
    }, []);
}
const exampleArray = [1,2,[3,4, [5,6,7], 8], 9, 10];
console.log(flattenArray(exampleArray)); // [1,2,3,4,5,6,7,8,9,10]
```

## How do we change the lexical scope of a function? (How do you implement Function.prototype.bind()?)
* Unlike `call()` and `apply()`, `bind()` can change the scope of a function without automatically executing the function.

```javascript
/**
 * Returns the function with an updated context (lexical scope)
 * @params context - the new lexical scope
 */
Function.prototype.bind = function(context) {
    const fn = this; // `this` is the function itself

    return function() {
        fn.call(context);
    }
}
```

## How do you implement debounce (e.g. to delay fetching of results in a search field)?
```javascript
function debounce(fn, time);
    let setTimeoutId; // track the timer

    return function() {
        if (setTimeoutId) clearTimeout(setTimeoutId); // cancel any previous timeouts to prevent stacking

        // set timeout before executing function
        setTimeoutId = setTimeout(() => {
            fn.apply(this, arguments);
            setTimeoutId = null; // delete the timer
        }, time)
    }
```

## How do you traverse a DOM tree data structure?
* We have two identical DOM trees, A and B
* For DOM tree A, we have the location of an element
* Task: Create a function to find that same element in tree B
```javascript
/**
 * Find an node in tree B, given an node in tree A
 * @params node - the node in tree A
 * @params root - the root node of tree B
 */
function reversePath(node, root) {
    const path = []; // path for tree B
    let pointer = node;

    // create a path array to the `node` in tree A
    while (pointer.parent) { // while the current node has a parent
        const index = [...pointer.parent.children].indexOf(pointer); // get the index of the node in the current parent tree
        path.push(index); // track the index
        pointer = pointer.parent; // go up a parent in the tree
    }

    // switch to tree B
    pointer = root;

    // loop over the path to node in tree A
    while (path.length) {
        pointer = pointer.children[path.pop()]; // traverse tree B by using the end node of the tree A path array
    }

    return pointer; // the node in tree B that corresponds to the `node` in tree A
}
```

## How do you move a DOM element?
```javascript
function moveElement(duration, distance, element) {
    const startTime = performance.now(); // highres timestamp

    function move(currentTime) {
        const elapsed = currentTime - startTime;
        const progress = elapsed / duration;
        const amountToMove = progress * distance;

        element.style.transform = `translateX(${ amountToMove }px)`;

        if (amountToMove < distance ) Window.requestAnimationFrame(move(performance.now()));
    }

    move(performance.now());
}
```

## How do you create a sleep function that will delay an awaiting promise?
```javascript
function sleep(time) {
    return new Promise((resolve) => {
        setTimeout(() => {
            resolve();
        }, time);
    });
}
```

# References
* [Interviewing for Front-End Engineers](https://frontendmasters.com/courses/interviewing-frontend)
* [25 Most Common Web Developer Interview Questions And Answers 2020](https://blog.codegiant.io/25-web-developer-interview-questions-and-answers-3030b21ae016)