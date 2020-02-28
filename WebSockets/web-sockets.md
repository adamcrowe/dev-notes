# HOW WEBSOCKETS DIFFER FROM HTTP
> HTTP is a request/response protocol: the server returns some data when the client requests it.

## With WebSockets:
* The server can send a message to the client without the client explicitly requesting something
* The client and the server can talk to each other simultaneously
* Very little data overhead needs to be exchanged to send messages. This means a low latency communication.

> WebSockets are great for real-time and long-lived communications.
> HTTP is great for occasional data exchange and interactions initiated by the client.
> HTTP is much simpler to implement, while WebSockets require a bit more overhead.

[Introduction to Web Sockets](https://flaviocopes.com/websockets/)