// ! Handlebars
// <http://handlebarsjs.com/>

// install handlebars globally
sudo npm install -g handlebars

// !! Packaging
// setup repo

cd {repo} npm install handlebars handlebars-loader path --save-dev

{
	"name": "packaged", 
	"version": "1.0.0", 
	"description": "test", 
	"devDependencies": { 
		"handlebars": "^4.0.10", 
		"handlebars-loader": "^1.5.0", 
		"path": "^0.12.7" 
	}
}

// cd {repo} npm install

// see: Watch and Code repo: experiments/handlebars/packaged
// <https://www.youtube.com/watch?v=wSNa5b1mS5Y>
// <https://github.com/LearnWebCode/handlebars-webpack>

// !! Precompiling
// see: Watch and Code repo: experiments/handlebars/precompiled: 

// (1) Extract template into a handlebars file (e.g. `groceries-template.handlebars`) 
// (2) Create compiled template: $ handlebars groceries-template.handlebars -f groceries-template.js 
// (3) Remove template sections from html (compare `groceries-list.html` with `groceries-list-precompiled.html`) 
// (4) Include compiled script and create new template variable: see `groceries-list-precompiled.html`

// !! Tutorials/Guides
// <https://zordius.github.io/HandlebarsCookbook/>
// <https://github.com/helpers/handlebars-helpers>