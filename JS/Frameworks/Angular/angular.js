// Commands:
// npm install										// install dependencies in package.json
// npm start										// run scripts to build project
// ng new <my-app>									// creates my-app-name folder/app in pwd
// ng generate component <component>				// creates new component
// ng generate guard <component>					// creates new guarded/protected component
// ng serve 										// compiles .ts to .js and starts local server on localhost:4200
// ng serve --port 9001 							// open on port 9001 
// ng build --target=production --base-href '/' 	// build dist folder for deployment

// EventEmitter 									// is an object that implements the Observer Pattern:
													// it will... 
													// 1) maintain a list of subscribers
													// 2) publish events to subscribers

// @Outputs specify events that can be emitted from the component; the view can listen to these events
/* @Output() loading: EventEmiter<boolean> = new EventEmitter<boolean>(); */


// ngFor
// breadcrumbs...
/*<div class="product-department">
	<span *ngFor="let name of product.department; let i=index">
		<a href="#">{{ name }}</a>
		<span>{{ i < (product.department.length -1) ? '>' : '' }}</span>
	</span>
</div>*/	
