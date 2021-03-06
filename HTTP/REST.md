# Statelessness
> Systems that follow the REST paradigm are stateless, meaning that the server does not need to know anything about what state the client is in and vice versa. In this way, both the server and the client can understand any message received, even without seeing previous messages.

# Communication Between Client and Server
> Clients send requests to retrieve or modify resources, and servers send responses to these requests

## Making Requests
* An HTTP verb which defines what kind of operation to perform
* A header which passes along information about the request
* A URI path to a resource
* An optional message body containing data

### An HTTP verb which defines what kind of operation to perform
* GET - retrieve a specific resource (by id) or a collection of resources
* POST - create a new resource
* PUT - update a specific resource (by id)
* DELETE - remove a specific resource (by id)

### A header which passes along information about the request
> MIME Types <https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types>
> In the header of the request, the client sends the type of content that it is able to receive from the server. This is called the Accept field, and it ensures that the server does not send data that cannot be understood or processed by the client. The options for types of content are MIME Types (or Multipurpose Internet Mail Extensions):
* type/subtype
* text/plain
* text/html
* image/jpeg
* image/png
* audio/mpeg
* audio/ogg
* video/mp4
* application/json
* application/xml
* application/pdf
* application/octet-stream

## Example: Get resource with id 23 in articles and accept html or xhtml content: 
GET /articles/23
Accept: text/html, application/xhtml

### A URI path to a resource
> The pair of an HTTP verb and a URI is called a `route` and matching them based on a request is called `routing`.

> Requests must contain a path to a resource that the operation should be performed on. In RESTful APIs, paths should be designed to help the client know what is going on. Conventionally, the first part of the path should be the plural form of the resource. This keeps nested paths simple to read and easy to understand.

### Example: get the order with id 12 for the customer with id 223
GET fashionboutique.com/customers/223/orders/12
Accept: application/json

### An optional message body containing data
* See examples below

## Sending Responses

### Content Types
> In cases where the server is sending a data payload to the client, the server must include a content-type in the header of the response. This content-type header field alerts the client to the type of data it is sending in the response body. These content types are MIME Types, just as they are in the accept field of the request header. The content-type that the server sends back in the response should be one of the options that the client specified in the accept field of the request.

// request:
GET /articles/23 HTTP/1.1
Accept: text/html, application/xhtml

// response:
HTTP/1.1 200 (OK)

Content-Type: text/html

### Response Codes
* Response Codes (MDN) <https://developer.mozilla.org/en-US/docs/Web/HTTP/Status>

> For each HTTP verb, there are expected status codes a server should return upon success:
GET - return 200 (OK)
POST - return 201 (CREATED)
PUT - return 200 (OK)
DELETE - return 204 (NO CONTENT)

## Examples of Requests and Responses

// request: view all customers:
GET http://fashionboutique.com/customers
Accept: application/json

// response header:
Status Code: 200 (OK)
Content-type: application/json

// response body:
{
	"customers": [
		{ },
		{ },
		{ }
	]
}

// request: create a new customer by posting the data:
POST http://fashionboutique.com/customers

Body:
{
	“customer”: {
		“name” = “Scylla Buss”,
		“email” = “scylla.buss@codecademy.org”
	}
}

// response header:
201 (CREATED)
Content-type: application/json

// response body:
{
	“customer”: {
		"id" = 123,
		“name” = “Scylla Buss”,
		“email” = “scylla.buss@codecademy.org”
	}
}

// request: view a single customer by id:
GET http://fashionboutique.com/customers/123
Accept: application/json

// response header:
Status Code: 200 (OK)
Content-type: application/json

// request: update customer by putting the new data:
PUT http://fashionboutique.com/customers/123

Body:
{
	“customer”: {
		“name” = “Scylla Buss”,
		“email” = “scyllabuss1@codecademy.com”
	}
}

// response header:
Status Code: 200 (OK)

// request: DELETE that customer by id:
DELETE http://fashionboutique.com/customers/123

// response header:
Status Code: 204 (NO CONTENT)