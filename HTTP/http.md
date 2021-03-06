TODO: HTTP <https://developer.mozilla.org/en-US/docs/Web/HTTP>

# HTTP & TCP: How it Works

> When you type a URL address into your browser, you are commanding it to open a TCP channel to the server that responds to that URL.
Your computer, which is making the request, is called the client. The URL you are requesting is the address that belongs to the server.

> Once the TCP connection is established, the client sends a HTTP GET request to the server to retrieve the webpage it should display. After the server has sent the response, it closes the TCP connection. If you open the website in your browser again, or if your browser automatically requests something from the server, a new connection is opened which follows the same process described above.

> After you type the URL into your browser, your browser will extract the http part and recognize that it is the name of the network protocol to use. Then, it takes the domain name from the URL (e.g. "example.com") and asks the internet Domain Name Server to return an Internet Protocol (IP) address.

> Now the client knows the destination's IP address. It then opens a connection to the server at that address, using the http protocol as specified. It will initiate a GET request to the server which contains the IP address of the host and optionally a data payload. The GET request contains the following text:

// request:
GET /index HTTP/1.1
Host: www.example.com

> Note: In HTTP/1.0, every resource request requires a separate connection to the server. HTTP/1.1 uses one connection more than once, so that additional content (like images or stylesheets) is retrieved even after the page has been retrieved. As a result, requests using HTTP/1.1 have less delay than those using HTTP/1.0.

> If the server is able to locate the path requested, the server might respond with the header:

// response:
HTTP/1.1 200 OK
Content-Type: text/html

<!DOCTYPE html>
<html>
	<head>
		<title>Home Page</title>
	</head>
	<body>
		<div>Hello World!</div>
	</body>
</html>

> This header is followed by the content requested, which in this case is the information needed to render example.com
