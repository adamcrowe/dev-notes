# What is State?
> State is the short-term memory of your application. (Long-term memory is usually stored in a databass.)
> State is the data that represents the outcome of all the actions the user has taken since the application loaded.
> Note: Other agents might affect state e.g., the server might set some variables, a service worker might do something in the background, etc.

# State Management
## [Redux](https://redux.js.org)
> The whole state of your app is stored in an object tree inside a single store. The only way to change the state tree is to emit an action, an object describing what happened. To specify how the actions transform the state tree, you write pure reducers. That's it!
* See `./Redux` for example
* See `../JS/Frameworks/React` folder for redux-with-react code examples

