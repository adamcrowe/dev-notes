// Commands:
// npm install											// install dependencies in package.json
// npm install - g @angular/cli							// install angular cli globally
// npm start											// run scripts to build project
// ng new <my-app>										// creates my-app-name folder/app in pwd
// ng generate component <component>					// creates new component
// ng generate guard <component>						// creates new guarded/protected component
// ng generate service <service>						// creates new service (at root level)
// ng generate service <service> --module=app			// creates new service (at app level)
// ng serve 											// compiles .ts to .js and starts local server on localhost:4200
// ng serve --port 9001 								// open on port 9001 
// ng serve --port 9001 --open 							// --open flag opens a browser to http://localhost:9001/
// ng build --target=production --base-href '/' 		// build dist folder for deployment
// ng generate module app-routing--flat--module = app 	// --flat puts the file in src/app instead of its own folder
														// --module=app tells the CLI to register it in the imports array of the AppModule

// EventEmitter 										
// is an object that implements the Observer Pattern:
// it will... 
// 1) maintain a list of subscribers
// 2) publish events to subscribers

// Angular only binds to public component properties.
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
