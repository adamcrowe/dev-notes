// ! Asynchronous

// There are generally three approaches to dealing with async code:
// * Callbacks
// * Promises
// * Observables (RxJS)

// Video: What the heck is the event loop anyway? <https://www.youtube.com/watch?v=8aGhZQkoFbQ>
// Tool: Loupe: Visualizing the JS Runtime at Runtime <http://latentflip.com/loupe>

// JavaScript is a single-threaded programming language. This means that the JavaScript engine can only process a piece of code at a time. One of its main consequences is that when JavaScript encounters a piece of code that takes a long time to process, it will block all code after that from running. JavaScript uses a data structure that stores information about active functions named Call Stack. A Call Stack is like a pile of books. Every book that goes into that pile sits on top of the previous book. The last book to go into the pile will be the first one removed from it, and the first book added to the pile will be the last one removed. The solution to executing heavy pieces of code without blocking anything is asynchronous callback functions. These functions are executed later – asynchronously.

// The asynchronous process begins with an asynchronous callback functions placed into a Heap or region of memory. You can think of the Heap as an Event Manager. The Call Stack asks the Event Manager to execute a specific function only when a certain event happens. Once that event happens, the Event Manager moves the function to the Callback Queue. Note: When the Event Manager handles a function, the code after that is not blocked and JavaScript continues its execution. The Event Loop handles the execution of multiple pieces of your code over time. The Event Loop monitors the Call Stack and the Callback Queue. The Call Stack is constantly checked whether it is empty or not. When it is empty, the Callback Queue is checked if there is a function waiting to be invoked. When there is a function waiting, the first function in the queue is pushed into the Call Stack, which will run it. This checking process is called a 'tick' in the Event Loop. Let's break down the execution of the following code to understand how this process works:

const first = function() { 
	console.log("First message"); 
}; 

const second = function() { 
	console.log("Second message"); 
}; 

const third = function() { 	
	console.log("Third message"); 
}; 

first(); 
setTimeout(second, 0); 
third(); 

// First message 
// Third message 
// Second message

// 1. Initially the Browser console is clear and the Call Stack and Event Manager are empty. 
// 2. first() is added to the Call Stack. 
// 3. console.log("First message") is added to the Call Stack. 
// 4. console.log("First message") is executed and the Browser console displays "First message". 
// 5. console.log("First message") is removed from the Call Stack. 
// 6. first() is removed from the Call Stack. 
// 7. setTimeout(second, 0) is added to the Call Stack. 
// 8. setTimeout(second, 0) is executed and handled by the Event Manager. And after 0ms the Event Manager moves second() to the Callback Queue. 
// 9. setTimeout(second, 0) is now completed and removed from the Call Stack. 
// 10. third() is added to the Call Stack. 
// 11. console.log("Third message") is added to the Call Stack. 
// 12. console.log("Third message") is executed and the Browser console displays "Third message".
// 13. console.log("Third message") is removed from the Call Stack. 
// 14. Call Stack is now empty and the second() function is waiting to be invoked in the Callback Queue. 
// 15. The Event Loop moves second() from the Callback Queue to the Call Stack. 
// 16. console.log("Second message") is added to the Call Stack. 
// 17. console.log("Second message") is executed and the Browser console displays "Second message". 
// 18. console.log("Second message") is removed from the Call Stack. 
// 19. second() is removed from the Call Stack.
	
// Note: The second() function is not executed after 0ms. The time you pass in to setTimeout function does not relate to the delay of its execution. The Event Manager will wait the given time before moving that function into the Callback Queue. 
