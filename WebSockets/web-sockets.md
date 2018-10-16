# HOW WEBSOCKETS DIFFER FROM HTTP
> HTTP is a very different protocol, and also a different way of communicate.
> HTTP is a request/response protocol: the server returns some data when the client requests it.

## With WebSockets:
* the server can send a message to the client without the client explicitly requesting something
* the client and the server can talk to each other simultaneously
* very little data overhead needs to be exchanged to send messages. This means a low latency communication.

> WebSockets are great for real-time and long-lived communications.
> HTTP is great for occasional data exchange and interactions initiated by the client.
> HTTP is much simpler to implement, while WebSockets require a bit more overhead.

[Introduction to Web Sockets](https://flaviocopes.com/websockets/)