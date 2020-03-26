# SETUP
* [Create React App](https://create-react-app.dev)
    * `npx create-react-app my-app --template redux`
    * [TypeScript](https://create-react-app.dev/docs/adding-typescript)
    * [React Router](https://create-react-app.dev/docs/adding-a-router)
    * [React Bootstrap](https://create-react-app.dev/docs/adding-bootstrap)
    * [Deployment (GitHub, AWS, Firebase)](https://create-react-app.dev/docs/deployment)

# UTILITIES
## Routing
* [React Router](https://reacttraining.com/react-router)

## State Management
* [Redux](https://redux.js.org)
* [React Redux](https://react-redux.js.org)
* [Redux Thunk](https://github.com/reduxjs/redux-thunk)
    * `const store = createStore(rootReducers, applyMiddleware(thunkMiddleware, logger))`
    * Redux Thunk middleware allows you to write action creators that return a function (e.g. an async API call) instead of an action (e.g., a plain object)
* [Logger for Redux](https://github.com/LogRocket/redux-logger)
* [Redux DevTools](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd)

## UI Components
* [React Bootstrap](https://react-bootstrap.github.io)

## Debugging
* [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en)
    * To view performance metrics for your react app: Append ```?react_perf``` to your local server URL (e.g. localhost:3000/?react_perf)
    * Puts your console on blast when React is making unnecessary updates <https://github.com/maicki/why-did-you-update>
