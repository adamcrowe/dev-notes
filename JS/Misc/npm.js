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

// Run script:
// npm run-script doc