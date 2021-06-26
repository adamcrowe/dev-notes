# Running tests
* Install jest globally: `npm install jest -g`;
* Run jest on all tests with in dir: `cd dir && jest`
* Run jest on specific test: `jest dir/test.js --watch`

# Debugging in Node
* Initiate debugger (first add `debugger;` to code): `node inspect index.js`
* Press `c` to `continue` script until reaches debugger statement
* `repl` (read-eval-print loop) to launch interactive shell
* Type variable names to print their current values
* Press CTRL-c to exit repl
* Press CTRL-c to exit debugger