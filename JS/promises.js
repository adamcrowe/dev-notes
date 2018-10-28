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

get('story.json').then((response) => {
    console.log("Success!", response);
}, (error) => {
    console.error("Failed!", error);
})

// !! Chaining
// You can transform values simply by returning the new value:

var promise = new Promise(function (resolve, reject) {
    resolve(1);
});

promise.then(function (val) {
    console.log(val); // 1
    return val + 2;
}).then(function (val) {
    console.log(val); // 3
})

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
// the first of those.This is when promises really start to stand out from simple callback patterns.

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