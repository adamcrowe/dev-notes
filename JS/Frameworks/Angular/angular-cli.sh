# Commands:

npm install											# install dependencies in package.json
npm install - g @angular/cli						# install angular cli globally
npm start											# run scripts to build project
ng new <my-app>										# creates my-app-name folder/app in pwd

ng generate component <component>					# creates new component
ng generate component <component> -it				# inline template (overrides default creation of template file)
ng generate guard <component>						# creates new guarded/protected component
ng generate service <service>						# creates new service (at root level)
ng generate service <service> --module=app			# creates new service (at app level)
ng generate class <class>							# creates <class>.ts
ng generate directive <directive>					# creates /app/<directive>.directive.ts and declares the directive class in the root AppModule

ng serve 											# compiles .ts to .js and starts local server on localhost:4200
ng serve --port 9001 								# open on port 9001
ng serve --port 9001 --open 						# --open flag opens a browser to http://localhost:9001/
ng build --target=production --base-href '/' 		# build dist folder for deployment
ng generate module app-routing--flat--module = app 	# --flat puts the file in src/app instead of its own folder
													# --module=app tells the CLI to register it in the imports array of the AppModule

ng test												# run tests
													# compiles the application into an output directory
													# tests will execute after a build is executed via Karma

sudo lsof - t - i tcp: 4200 | xargs kill - 9 		# kill currently running process on port 4200

