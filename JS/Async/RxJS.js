// ## Subject
// * A Subject is both a source of observable values and an Observable itself.
// * You can subscribe to a Subject as you would any Observable.
// * You can also push values into that Observable by calling Subject.next(value).
// * A Subject publishes its values only once.

// ## BehaviorSubject
// * UserService... let currentUser: Subject<User> = new BehaviorSubject<User>(null); // initial value is null
// * Think of a Subject as a "read/write" steam. (Technically, a Subject inherits from both Observable and Observer.)
// * One consequence of streams is that, because messages are published immediately, a new subscriber risks missing the latest value of the stream.
// * BehaviourSubject compensates for this. BehaviourSubject has a special property in that it stores the last value.
// * Meaning that any subscriber to the stream will receive the latest value.
// * Any part of our application can subscribe to the UsersService.currentUser stream and immediately know who the current user is.
// * Push a newUser into currentUser (Subject): let u = new User('Nate', 'anImgSrc'); UsersService.currentUser.next(u);
// -- ng-book: Data Architecture with Observables: )

// ## Subject vs BehaviorSubject in Angular
// Subject has one particularity that prevents us from using it to build observable data services: if we subscribe to it we won't get the last value, we will have to wait until some part of the app calls next(). This poses a problem especially in bootstrapping situations, where the app is still initializing and not all subscribers have registered, for example not all async pipes had the chance to register themselves because not all templates are yet initialized. The solution for this is to use a BehaviorSubject. What this type of subject does it that it will return upon subscription the last value of the stream, or an initial state if no value was emitted yet. There is another property of the BehaviorSubject that is interesting: we can at any time retrieve the current value of the stream: let currentValue = behaviorSubject.getValue();
// -- https://blog.angular-university.io/how-to-build-angular2-apps-using-rxjs-observable-data-services-pitfalls-to-avoid/

// # Observables
// * As a publisher, you create an Observable instance that defines a subscriber function.
// * The subscriber function is executed when the Observable's subscribe() method is called.
// * The subscriber function defines how to obtain or generate values or messages to be published.
// * To execute the Observable and begin receiving notifications, you call its subscribe() method, passing an observer.
// * The observer is a JavaScript object that defines the handlers for the notifications you receive from the subscriber function.
// * The subscribe() call returns a Subscription object that has an unsubscribe() method, which you call to stop receiving notifications.
// * Data published by an Observable is a stream. Any type of value can be represented with an Observable, and values are published as a stream.
// https://angular.io/guide/observables

// ## Observables compared to other techniques
// * Observables compared to promises
// * Observables compared to events API
// * Observables compared to arrays
// https://angular.io/guide/comparing-observables

// # Streams
// Streams - FunFunFunction #13 <https://www.youtube.com/watch?v=UD2dZw9iHCc>
// A stream is a flow of values that will be arriving whenever they feel like
// Streaming libraries:
// * http://reactivex.io
// * Tutorials:
// * https://www.learnrxjs.io

// Here are a few big ideas about streams:
// * 1: Promises emit a single value whereas streams emit many values. Streams improve upon the promise pattern in that we can continuously respond to data changes on a stream (vs. a one-time resolve from a promise)
// * 2: Imperative code "pulls" data whereas reactive streams "push" data. In Reactive Programming our code subscribes to be notified of changes and the streams "push" data to these subscribers.
// * 3: RxJS is functional. Streams are in some sense lists, and so powerful functional operators all apply
// * 4: Streams are composable. Think of streams like a pipeline of operations over your data. You can subscribe to any part of your stream and even combine them to create new streams.
// -- ng-book: Data Architecture with Observables

// ## Pipe function
// You can use pipes to link operators together. Pipes let you combine multiple functions into a single function. The pipe() function takes as its arguments the functions you want to combine, and returns a new function that, when executed, runs the composed functions in sequence.
import { filter, map } from 'rxjs/operators';

// Use `of` to create a stream from array of values
const squareOdd = of(1, 2, 3, 4, 5).pipe(
    filter(n => n % 2 !== 0),
    map(n => n * n)
);

// Subscribe to get values
squareOdd.subscribe(x => console.log(x));

// ## Common operators
// Creation:	      from, fromPromise, fromEvent, of
// Combination:	    combineLatest, concat, merge, startWith, withLatestFrom, zip
// Filtering:	      debounceTime, distinctUntilChanged, filter, take, takeUntil
// Transformation:	bufferTime, concatMap, map, mergeMap, scan, switchMap, reduce
// Utility:	        tap
// Multicasting:	  share

// ### Reduce
// Reduce emits a value when obs closes and whose single, final value is the total sum of all stream elements.
var obs = Rx.Observable.interval(1000).take(5); // emit value in sequence every 1 second and take 5 latest values (1,2,3,4,5)
var reduced = obs.reduce((state, value) => state + value, 0);
reduced.subscribe(total => console.log("total =" + total));
// total = 10

// ### Scan
// Scan emits the intermediate results of the accumulation process, and not only the final result (see reduce).
var obs = Rx.Observable.interval(1000).take(5);
var scanObs = obs.scan((state, value) => state + value, 0);
scanObs.subscribe(total => console.log(total));
// 0
// 1
// 3
// 6
// 10

// ### Share
// The share operator allows us to share a single subscription of a processing chain (obs) with other subscribers.
var obs = Rx.Observable.interval(1000).take(5)
  .do(i => console.log("obs value " + i))
  .share();

obs.subscribe(value => console.log("observer 1 received " + value));
obs.subscribe(value => console.log("observer 2 received " + value));
// obs value 0
// observer 1 received 0
// observer 2 received 0

// obs value 1
// observer 1 received 1
// observer 2 received 1

// ### SwitchMap()
ngOnInit() {
  this.packages$ = this.searchText$.pipe(
    debounceTime(500),
    distinctUntilChanged(),
    switchMap(packageName =>
      this.searchService.search(packageName, this.withRefresh))
  );
}
// The switchMap() operator has three important characteristics.
// It takes a function argument that returns an Observable.PackageSearchService.search returns an Observable, as other data service methods do.
// If a previous search request is still in -flight(as when the connection is poor), it cancels that request and sends a new one.
// It returns service responses in their original request order, even if the server returns them out of order.
// From: https://angular.io/guide/http#debouncing-requests

// ### tap()
// The RxJS tap operator captures whether the request succeed or failed.

// ### finalize()
// The RxJS finalize operator is called when the response observable either errors or completes (which it must), and reports the outcome to the MessageService.

// TO READ:
// [The introduction to Reactive Programming you've been missing](https://gist.github.com/staltz/868e7e9bc2a7b8c1f754)
// * Reactive programming is programming with asynchronous data streams.
// * We capture emitted events asynchronously, by defining a function that will execute when a value is emitted, another function when an error is emitted, and another function when 'completed' is emitted.
// * Sometimes these last two can be omitted and you can just focus on defining the function for values.
// * The "listening" to the stream is called subscribing. The functions we are defining are observers. The stream is the subject (or "observable") being observed. This is precisely the Observer Design Pattern.
// * The official terminology for a stream is "Observable", for the fact that it can be observed, but I find it to be a silly name, so I call it "stream".

// [RxJS Marbles: Interactive diagrams of Rx Observables](http://rxmarbles.com)
// [RxJS and reactive programming tutorials](https://legacy.gitbook.com/book/btroncone/learn-rxjs/details)
// [RxJS Manual: Introduction](http://reactivex.io/rxjs/manual/overview.html)
// [RxJS v 4: Observable object](https://github.com/Reactive-Extensions/RxJS/blob/master/doc/api/core/observable.md)
// [Cold vs. Hot Observables](https://github.com/Reactive-Extensions/RxJS/blob/master/doc/gettingstarted/creating.md#cold-vs-hot-observables)

// Normally you register event listeners
var button = document.querySelector('button');
button.addEventListener('click', () => console.log('Clicked!'));

// Using RxJS you create an observable instead
var button = document.querySelector('button');
Rx.Observable.fromEvent(button, 'click')
  .subscribe(() => console.log('Clicked!'));
