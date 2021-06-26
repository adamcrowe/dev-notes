## How do you check an image is loaded on the page?
* Use the `onload()` callback: <img onload="imageLoaded()">

## What is event delegation?
* Rather than adding event listeners to individual elements (which is expensive in terms of performance)...
* ...you can assign an event handler to a parent element that will catch any events fired on the children.
* This is known as "event bubbling" where you "bubble up" events from the children to the parent handler.
