// http://reactivex.io/rxjs/manual/overview.html
// https://legacy.gitbook.com/book/btroncone/learn-rxjs/details (RxJS and reactive programming tutorials)

// Normally you register event listeners
var button = document.querySelector('button');
button.addEventListener('click', () => console.log('Clicked!'));

// Using RxJS you create an observable instead
var button = document.querySelector('button');
Rx.Observable.fromEvent(button, 'click')
  .subscribe(() => console.log('Clicked!'));