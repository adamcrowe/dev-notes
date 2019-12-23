# NPM
> npm manages downloads of dependencies of your project

```
/* Example package.json file
{
    "name": "My Repo",
    "version": "1.0.1",
    "main": "index.ts",
    "repository": "http://my-repo",
    "author": "Author",
    "license": "UNLICENCED",
    "scripts": {
        "doc": "typedoc --readme ./README.md --exclude ./docs --excludeExternals --ignoreCompilerErrors --out docs --mode file ./"
    },
    "devDependencies": {
        "typedoc": "^0.14.2"
    }
}
*/
```

### Commands

npm init -y                                 // create package.json answering yes to all config options
										    // if has package.json...
npm install								    // creates and saves required dependencies to node_module folder
npm install --save <package-name>	        // installs and adds dependency to package.json
npm install --save-dev <package-name> 	    // installs and adds peer dependency to package.json devDependencies
npm install --save-dev fibers@>=3.1.0       // example using specified peer dependency
npm update								    // update all dependencies in package.json
npm update <package-name>				    // update specific dependency in package.json
npm run <"script">							// run script e.g. npm watch, npm dev, npm prod
npm audit                                 	// produce a report of dependency vulnerabilities and, if available, suggested patches
npm audit fix                             	// automatically install compatible updates to vulnerable dependencies
npm run doc									// run "doc" script


### Aliases
npm i <package-name>                      	// install local package
npm i -g <package-name>                   	// install global package
npm un <package-name>                     	// uninstall local package
npm up                                    	// npm update packages
npm t                                     	// run tests
npm ls                                    	// list installed modules
npm ll or npm la                          	// print additional package information while listing modules

npm i express momemt lodash mongoose...   	// install multiple packages at once
