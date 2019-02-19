// The Promise object represents the eventual completion (or failure) of an asynchronous operation, and its resulting value.
// Essentially, a promise is a returned object to which you attach callbacks, instead of passing callbacks into a function.

const promise = createAudioFileAsync(audioSettings);
promise.then(successCallback, failureCallback);

// ! Chaining
const promise = doSomething();
const promise2 = promise.then(successCallback, failureCallback);
// The then() function returns a new promise, different from the original. This second promise (promise2) represents the completion not 
// just of doSomething(), but also of the successCallback or failureCallback you passed in, which can be other asynchronous functions 
// returning a promise. When that's the case, any callbacks added to promise2 get queued behind the promise returned by either 
// successCallback or failureCallback. Basically, each promise represents the completion of another asynchronous step in the chain.

doSomething()
    .then(result => doSomethingElse(result))
    .then(newResult => doThirdThing(newResult))
    .then(finalResult => {
        console.log(`Got the final result: ${finalResult}`);
    })
    .catch(failureCallback);
// The arguments to then are optional, and catch (failureCallback) is short for then(null, failureCallback).

// !! Chaining after a catch
// It's possible to chain after a failure, i.e. a catch, which is useful to accomplish new actions even after an action failed in the chain. Read the following example:
new Promise((resolve, reject) => {
    console.log('Initial');
    resolve();
})
.then(() => {
    throw new Error('Something failed');
    console.log('Do this');
    // Note: 'Do this' is not displayed because the Something failed error caused a rejection.
})
.catch(() => {
    console.log('Do that');
})
.then(() => {
    console.log('Do this, no matter what happened before');
});

// This will output the following text:
// Initial
// Do that
// Do this, no matter what happened before

// ! Error propagation
// In the old days, doing several asynchronous operations in a row would lead to the classic callback pyramid of doom:
doSomething(function (result) {
    doSomethingElse(result, function (newResult) {
        doThirdThing(newResult, function (finalResult) {
            console.log('Got the final result: ' + finalResult);
        }, failureCallback);
    }, failureCallback);
}, failureCallback);

// With modern functions, we attach our callbacks to the returned promises instead, forming a promise chain:
doSomething()
    .then(function (result) {
        return doSomethingElse(result);
    })
    .then(function (newResult) {
        return doThirdThing(newResult);
    })
    .then(function (finalResult) {
        console.log('Got the final result: ' + finalResult);
    })
    .catch(failureCallback);

// The arguments to then are optional, and catch (failureCallback) is short for then(null, failureCallback).You might see this expressed with arrow functions instead:
doSomething()
    .then(result => doSomethingElse(result))
    .then(newResult => doThirdThing(newResult))
    .then(finalResult => { console.log(`Got the final result: ${finalResult}`); })
    .catch(failureCallback);

// Basically, a promise chain stops if there's an exception, looking down the chain for catch handlers instead. This is very much modeled after how synchronous code works:
try {
    const result = syncDoSomething();
    const newResult = syncDoSomethingElse(result);
    const finalResult = syncDoThirdThing(newResult);
    console.log(`Got the final result: ${finalResult}`);
} catch (error) {
    failureCallback(error);
}  
// Promises solve a fundamental flaw with the callback pyramid of doom, by catching all errors, even thrown exceptions and programming errors. This is essential for functional composition of asynchronous operations.

// async/await (ECMAScript 2017) verson of above:
async function foo() {
    try {
        const result = await doSomething();
        const newResult = await doSomethingElse(result);
        const finalResult = await doThirdThing(newResult);
        console.log(`Got the final result: ${finalResult}`);
    } catch (error) {
        failureCallback(error);
    }
}

// !! Simple error handling
// The promise constructor takes one argument, a callback with two parameters, resolve and reject. 
// Do something within the callback, then call resolve if everything worked, otherwise call reject.
var promise = new Promise((resolve, reject) => {
    if (success) { /* everything turned out fine */
        resolve("Stuff worked!");
    }
    else {
        reject(Error("It broke"));
    }
});

promise.then(
    (result) => { 
        console.log(result); // "Stuff worked!"
    }, 
    (err) => {
        console.log(err); // Error: It broke
    },
);
// then() takes two arguments, a callback for a success case, and another for the failure case.
// Both are optional, so you can add a callback for the success or failure case only.

// A promise chain stops if there's an exception, looking down the chain for catch handlers instead:
async function foo() {
    try {
        const result = await doSomething();
        const newResult = await doSomethingElse(result);
        const finalResult = await doThirdThing(newResult);
        console.log(`Got the final result: ${finalResult}`);
    } catch (error) {
        failureCallback(error);
    }
}

// ! Composition
// Promise.resolve() and Promise.reject() are shortcuts to manually create an already resolved or rejected promise respectively. This can be useful at times.
// Promise.all() and Promise.race() are two composition tools for running asynchronous operations in parallel.
// We can start operations in parallel and wait for them all to finish like this:
Promise.all([func1(), func2(), func3()])
    .then(([result1, result2, result3]) => {
        /* use result1, result2 and result3 */ 
    });

// !! Sequential composition with async/await:
let result;
for (const f of [func1, func2, func3]) {
    result = await f(result);
}
/* use last result (i.e. result3) */

// ! Nesting
// Nesting is a control structure to limit the scope of catch statements. Specifically, a nested catch only catches failures in its scope and below, not errors higher up in the chain outside the nested scope. When used correctly, this gives greater precision in error recovery:
doSomethingCritical()
    .then(result => doSomethingOptional()
        .then(
            optionalResult => doSomethingExtraNice(optionalResult)
        ).catch( // Ignore if optional stuff fails; proceed.
            e => { }
        ) 
    ) 
    .then(() => moreCriticalStuff())
    .catch(e => console.log("Critical failure: " + e.message));
// Note that the optional steps here are nested, not from the indentation, but from the precarious placement of the outer(and) around them.
// The inner neutralizing catch statement only catches failures from doSomethingOptional() and doSomethingExtraNice(), after which the code resumes with moreCriticalStuff().Importantly, if doSomethingCritical() fails, its error is caught by the final(outer) catch only.

// ! Async/Await
// Async functions work like this:
async function myFirstAsyncFunction() {
    try {
        const fulfilledValue = await promise;
    }
    catch (rejectedValue) {
        // …
    }
}
// If you use the async keyword before a function definition, you can then use await within the function. When you await a promise, the function is paused in a non - blocking way until the promise settles. If the promise fulfills, you get the value back.If the promise rejects, the rejected value is thrown.

// Anything you await is passed through Promise.resolve(), so you can safely await non-native promises.
async function logFetch(url) {
    try {
        const response = await fetch(url);
        console.log(await response.text());
    }
    catch (err) {
        console.log('fetch failed', err);
    }
}
// Async functions always return a promise, whether you use await or not. 
// That promise resolves with whatever the async function returns, or rejects with whatever the async function throws. So with:
function wait(ms) { // wait ms milliseconds
    return new Promise(r => setTimeout(r, ms));
}

async function hello() {
    await wait(500);
    return 'world';
}
// Calling hello() returns a promise that fulfills with "world".

// !! Other async function syntax
// !!! Functions
// map some URLs to json-promises
const jsonPromises = urls.map(async url => {
    const response = await fetch(url);
    return response.json();
});
// array.map(func) doesn't care that it has been given an async function, it just sees it as a function that returns a promise
// (it won't wait for the first function to complete before calling the second).

// !!! Object methods
const storage = {
    async getAvatar(name) {
        const cache = await caches.open('avatars');
        return cache.match(`/avatars/${name}.jpg`);
    }
};

storage.getAvatar('jaffathecake').then(/* do more stuff */);

// !!! Class methods
class Storage {
    constructor() {
        this.cachePromise = caches.open('avatars');
    }

    async getAvatar(name) {
        const cache = await this.cachePromise;
        return cache.match(`/avatars/${name}.jpg`);
    }
}

const storage = new Storage();
storage.getAvatar('jaffathecake').then(/* do more stuff */);
// Note: Class constructors and getters / settings cannot be async.

// !!! Promisifying XMLHttpRequest
function get(url) {
    // Return a new promise.
    return new Promise(function (resolve, reject) {
        // Do the usual XHR stuff
        var req = new XMLHttpRequest();
        req.open('GET', url);

        req.onload = function () {
            // This is called even on 404 etc
            // so check the status
            if (req.status == 200) {
                // Resolve the promise with the response text
                resolve(req.response);
            }
            else {
                // Otherwise reject with the status text
                // which will hopefully be a meaningful error
                reject(Error(req.statusText));
            }
        };

        // Handle network errors
        req.onerror = function () {
            reject(Error("Network Error"));
        };

        // Make the request
        req.send();
    });
}

get('story.json').then(
    (response) => {
        console.log("Success!", response);
    }, (error) => {
        console.error("Failed!", error);
    },
);

// !! Chaining
// You can transform values simply by returning the new value:

var promise = new Promise(function (resolve, reject) {
    resolve(1);
});

promise
    .then(
        function (val) {
            console.log(val); // 1
            return val + 2;
        }
    ).then(
        function (val) {
            console.log(val); // 3
        }
    );

// !! Queuing asynchronous actions
// You can also chain thens to run async actions in sequence. When you return something from a then() 
// callback, it's a bit magic. If you return a value, the next then() is called with that value. 
// However, if you return something promise-like, the next then() waits on it, and is only called when 
// that promise settles (succeeds/fails). For example:

getJSON('story.json').then(function (story) {
    return getJSON(story.chapterUrls[0]);
}).then(function (chapter1) {
    console.log("Got chapter 1!", chapter1);
})
// Here we make an async request to story.json, which gives us a set of URLs to request, then we request 
// the first of those. This is when promises really start to stand out from simple callback patterns.

// You could even make a shortcut method to get chapters:

var storyPromise;

function getChapter(i) {
    storyPromise = storyPromise || getJSON('story.json');

    return storyPromise.then(function (story) {
        return getJSON(story.chapterUrls[i]);
    })
}

// and using it is simple:
getChapter(0).then(function (chapter) {
    console.log(chapter);
    return getChapter(1);
}).then(function (chapter) {
    console.log(chapter);
})
// We don't download story.json until getChapter is called, but the next time(s) getChapter is called we reuse 
// the story promise, so story.json is only fetched once. 

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises
// https://developers.google.com/web/fundamentals/primers/promises
// https://developers.google.com/web/fundamentals/primers/async-functions