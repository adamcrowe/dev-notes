// ! Observables
// * As a publisher, you create an Observable instance that defines a subscriber function.
// * The subscriber function is executed when the Observable's subscribe() method is called.
// * The subscriber function defines how to obtain or generate values or messages to be published.
// * To execute the Observable and begin receiving notifications, you call its subscribe() method, passing an observer. 
// * The observer is a JavaScript object that defines the handlers for the notifications you receive from the subscriber function.
// * The subscribe() call returns a Subscription object that has an unsubscribe() method, which you call to stop receiving notifications.
// * Data published by an observable is a stream. Any type of value can be represented with an observable, and values are published as a stream.
// https://angular.io/guide/observables

// (From: ng-book: Data Architecture with Observables):
// Here are a few big ideas about streams:
// * 1: Promises emit a single value whereas streams emit many values. Streams improve upon the promise pattern in that we can continuously respond to data changes on a stream (vs. a one-time resolve from a promise)
// * 2: Imperative code "pulls" data whereas reactive streams "push" data. In Reactive Programming our code subscribes to be notified of changes and the streams "push" data to these subscribers.
// * 3: RxJS is functional. Streams are in some sense list, and so powerful functional operators all apply
// * 4: Streams are composable. Think of streams like a pipeline of operations over your data. You can subscribe to any part of your stream and even combine them to create new streams.

// TO READ:
// [The introduction to Reactive Programming you've been missing](https://gist.github.com/staltz/868e7e9bc2a7b8c1f754)

// > Reactive programming is programming with asynchronous data streams. We capture emitted events asynchronously, by defining a function that will execute when a value is emitted, another function when an error is emitted, and another function when 'completed' is emitted. Sometimes these last two can be omitted and you can just focus on defining the function for values. The "listening" to the stream is called subscribing. The functions we are defining are observers. The stream is the subject (or "observable") being observed. This is precisely the Observer Design Pattern.

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

// ! Streams
// Streams - FunFunFunction #13 <https://www.youtube.com/watch?v=UD2dZw9iHCc>
// A stream is a flow of values that will be arriving whenever they feel like
// Streaming libraries:
// * http://reactivex.io
// * https://baconjs.github.io
// * http://highlandjs.org
// * https://nodejs.org/api/stream.html

// * A Subject inherits from both Observable and Observer. Think of a Subject as a "read/write" steam.
// * BehaviourSubject stores the latest value in a stream e.g., currentUser: Subject<User> = new BehaviorSubject<User>(null);

// ! Promises
// TODO: .reduce() example: Running Promises in Sequence 
// <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce>
// http://bluebirdjs.com 

import Promise from 'bluebird'

const whenDragonLoaded = new Promise((resolve, reject)) => {
  setTimeout(() => resolve({ 
		{ name: 'Fluffykins', health: 70 } 
	}, 2000) 
});

const names =
  whenDragonLoaded
    .map(dragon => dragon.name)
    .then(name =>   console.log(name));

// output 
'Fluffykins'