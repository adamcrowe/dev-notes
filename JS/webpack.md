# Webpack
* [webpack](https://webpack.js.org)
* Webpack is a bundling and build orchestration tool.
* Webpack can also optimize (minify) code using a build step.

## Bundling
* Use webpack to bundle separate js files to reduce network requests.

## Build Orchestration
See: `course-understanding-typescript/drag-and-drop` for example webpack configuration:

``` javascript
"scripts": {
    "start": "webpack-dev-server",
    "build": "webpack --config webpack.config.prod.js"
  },
  "devDependencies": {
    "clean-webpack-plugin": "^3.0.0",
    "lite-server": "^2.5.4",
    "ts-loader": "^6.2.2",
    "typescript": "^3.8.3",
    "webpack": "^4.42.1",
    "webpack-cli": "^3.3.11",
    "webpack-dev-server": "^3.10.3"
  }
```

Another example:
``` javascript
{
  "scripts": {
    "watch": "webpack --watch --progress --colors --config webpack.conf.js",
    "dev": "webpack --progress --colors --config webpack.conf.js",
    "prod": "NODE_ENV=production webpack -p --config webpack.conf.js",
  },
}
```

## Code Splitting
> Code-Splitting is a feature supported by bundlers like Webpack, Rollup and Browserify (via factor-bundle) which can create multiple bundles that can be dynamically loaded at runtime. Code-splitting your app can help you “lazy-load” just the things that are currently needed by the user, which can dramatically improve the performance of your app. While you haven’t reduced the overall amount of code in your app, you’ve avoided loading code that the user may never need, and reduced the amount of code needed during the initial load.
-- [React: Code Splitting](https://reactjs.org/docs/code-splitting.html)

> Code splitting is one of the most compelling features of webpack. This feature allows you to split your code into various bundles which can then be loaded on demand or in parallel. It can be used to achieve smaller bundles and control resource load prioritization which, if used correctly, can have a major impact on load time.
-- [Webpack: Code Splitting](https://webpack.js.org/guides/code-splitting)

> Deciding where in your app to introduce code splitting can be a bit tricky. You want to make sure you choose places that will split bundles evenly, but won’t disrupt the user experience. A good place to start is with routes. Most people on the web are used to page transitions taking some amount of time to load. You also tend to be re-rendering the entire page at once so your users are unlikely to be interacting with other elements on the page at the same time.
-- [React: Code Splitting](https://reactjs.org/docs/code-splitting.html)