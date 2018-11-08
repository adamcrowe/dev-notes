/* Angular performs change detection on all components (from top to bottom) every time something changes in your app from something like a user event or data received from a network request. Change detection is very performant, but as an app gets more complex and the amount of components grows, change detection will have to perform more and more work. There’s a way to circumvent that however and set the change detection strategy to OnPush on specific components. Doing this will instruct Angular to run change detection on these components and their sub-tree only when new references are passed to them versus when data is simply mutated. -- https://alligator.io/angular/change-detection-strategy

// to trigger change detection, create a new array from the old one
addFood(food) {
    this.foods = [...this.foods, food];
}

// When using the OnPush change detector strategy pass new references to objects and arrays to variables to trigger change detector
// If mutuating data rather than passing new references, use ChangeDetectorRef.detectChanges() to manually trigger change detection
// ChangeDetectorRef.markForCheck() instructs Angular that this input should trigger change detection when mutated (e.g. Observables).

> ChangeDetectorRef: A change-detection tree collects all views that are to be checked for changes. Use the methods to add and remove views from the tree, initiate change-detection, and explicitly mark views as dirty, meaning that they have changed and need to be rerendered. -- https://angular.io/api/core/ChangeDetectorRef
* markForCheck(): When a view uses the OnPush (checkOnce) change detection strategy, explicitly marks the view as changed so that it can be checked again.
* detectChanges(): Checks this view and its children. Use in combination with detach to implement local change detection checks.
* detach(): Detaches this view from the change-detection tree. A detached view is not checked until it is reattached. Use with detectChanges() to implement local change detection checks.
* checkNoChanges(): Checks the change detector and its children, and throws if any changes are detected.
* reattach(): Re-attaches the previously detached view to the change detection tree. Views are attached to the tree by default.

> ChangeDetectionStrategy -- https://angular.io/api/core/ChangeDetectionStrategy
* OnPush: Use the CheckOnce strategy: automatic change detection is deactivated until reactivated by setting the strategy to Default (CheckAlways). Change detection can still be explictly invoked.
* Default: Use the default CheckAlways strategy, in which change detection is automatic until explicitly deactivated.

// Articles
// -- https://blog.thoughtram.io/angular/2016/02/22/angular-2-change-detection-explained.html
// -- http://teropa.info/blog/2015/03/02/change-and-its-detection-in-javascript-frameworks.html