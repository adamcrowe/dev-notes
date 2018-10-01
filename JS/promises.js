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

promise.then((result) => { 
    console.log(result); // "Stuff worked!"
}, (err) => {
    console.log(err); // Error: It broke
});
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

// ! Async/Await

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

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises
// https://developers.google.com/web/fundamentals/primers/promises
// https://developers.google.com/web/fundamentals/primers/async-functions