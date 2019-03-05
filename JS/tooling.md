# Tooling

## npm
> npm manages downloads of dependencies of your project
* https://www.sitepoint.com/beginners-guide-node-package-manager
* https://www.sitepoint.com/10-npm-tips-and-tricks

### Commands

										// if has package.json...
npm install								// creates and saves required dependencies to node_module folder
npm install <package-name> --save 		// installs and adds dependency to package.json
npm install <package-name> --save-dev 	// installs and adds dependency to package.json devDependencies
npm update								// update all dependencies in package.json
npm update <package-name>				// update specific dependency in package.json
npm <task-name>							// run task e.g. npm watch, npm dev, npm prod

### Aliases
npm i <package-name>                    // install local package
npm i -g <package-name>                 // install global package
npm un <package-name>                   // uninstall local package
npm up                                  // npm update packages
npm t                                   // run tests
npm ls                                  // list installed modules
npm ll or npm la                        // print additional package information while listing modules

npm i express momemt lodash mongoose... // install multiple packages at once

### Webpack Scripts
``` javascript
{
  "scripts": {
    "watch": "webpack --watch --progress --colors --config webpack.conf.js",
    "dev": "webpack --progress --colors --config webpack.conf.js",
    "prod": "NODE_ENV=production webpack -p --config webpack.conf.js",
  },
}
```