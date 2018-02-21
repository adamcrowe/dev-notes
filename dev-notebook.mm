<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1514240416224" ID="ID_451805349" MODIFIED="1515005616996" TEXT="dev">
<node CREATED="1516360568910" FOLDED="true" ID="ID_67139712" MODIFIED="1516360829480" POSITION="right" TEXT="PHP">
<node CREATED="1516360583582" FOLDED="true" ID="ID_1282504828" MODIFIED="1516360828432" TEXT="Templating">
<node CREATED="1516360587622" ID="ID_1758144888" LINK="https://github.com/zordius/lightncandy" MODIFIED="1516360679047" TEXT="lightncandy: An extremely fast PHP implementation of handlebars"/>
<node CREATED="1516360681169" ID="ID_1677291012" LINK="https://zordius.github.io/HandlebarsCookbook/" MODIFIED="1516360826806" TEXT="Lightncandy Tutorial: https://zordius.github.io/HandlebarsCookbook/"/>
</node>
</node>
<node CREATED="1518292860903" FOLDED="true" ID="ID_885591118" MODIFIED="1518380091016" POSITION="right" TEXT="HTTP">
<node CREATED="1518299387811" ID="ID_213212585" LINK="https://developer.mozilla.org/en-US/docs/Web/HTTP" MODIFIED="1518299406469" TEXT="TODO HTTP (MDN)"/>
<node CREATED="1518294321388" FOLDED="true" ID="ID_1544420661" MODIFIED="1518299384967" TEXT="HTTP &amp; TCP: How it Works">
<node CREATED="1518294338420" ID="ID_1861935667" MODIFIED="1518294390771">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      When you type a URL address into your browser, you are commanding it to open a TCP channel to the server that responds to that URL.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518294408605" ID="ID_1023445300" MODIFIED="1518294423229">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    Your computer, which is making the request, is called the client. The URL you are requesting is the address that belongs to the server.
  </body>
</html></richcontent>
</node>
<node CREATED="1518294392262" ID="ID_1527167911" MODIFIED="1518294453742" TEXT="Once the TCP connection is established, the client sends a HTTP GET request to the server to retrieve the webpage it should display. After the server has sent the response, it closes the TCP connection. If you open the website in your browser again, or if your browser automatically requests something from the server, a new connection is opened which follows the same process described above."/>
<node CREATED="1518294534811" ID="ID_305512342" MODIFIED="1518294573173" TEXT="After you type the URL into your browser, your browser will extract the http part and recognize that it is the name of the network protocol to use. Then, it takes the domain name from the URL (e.g.&#x201c;example.com&#x201d;) and asks the internet Domain Name Server to return an Internet Protocol (IP) address. "/>
<node CREATED="1518294598733" ID="ID_758939100" MODIFIED="1518294605389">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Now the client knows the destination's IP address. It then opens a connection to the server at that address, using the <code>http</code>&#160;protocol as specified. It will initiate a GET request to the server which contains the IP address of the host and optionally a data payload. The GET request contains the following text:
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518294606869" ID="ID_293988209" MODIFIED="1518297462687">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// request:</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">GET /index HTTP/1.1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Host: www.example.com</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518294763514" ID="ID_92309208" MODIFIED="1518294766961" TEXT="Note: In HTTP/1.0, every resource request requires a separate connection to the server. HTTP/1.1 uses one connection more than once, so that additional content (like images or stylesheets) is retrieved even after the page has been retrieved. As a result, requests using HTTP/1.1 have less delay than those using HTTP/1.0."/>
<node CREATED="1518294840772" ID="ID_1122736282" MODIFIED="1518294841790" TEXT="If the server is able to locate the path requested, the server might respond with the header:"/>
<node CREATED="1518294857188" ID="ID_1197202675" MODIFIED="1518298033295">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// response: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">HTTP/1.1 200 OK </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Content-Type: text/html </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&lt;!DOCTYPE html&gt; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&lt;html&gt; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&lt;head&gt; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&lt;title&gt;Home Page&lt;/title&gt; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&lt;/head&gt; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&lt;/body&gt; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&lt;div&gt;Hello World!&lt;/div&gt;&#160;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&lt;/body&gt; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&lt;/html&gt;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518294922966" ID="ID_453043880" MODIFIED="1518294931904" TEXT="This header is followed by the content requested, which in this case is the information needed to render example.com"/>
</node>
<node CREATED="1518289149344" FOLDED="true" ID="ID_1454043202" MODIFIED="1518299386628" TEXT="REST">
<node CREATED="1518289159287" ID="ID_1788605279" MODIFIED="1518291121985" TEXT="Statelessness: Systems that follow the REST paradigm are stateless, meaning that the server does not need to know anything about what state the client is in and vice versa. In this way, both the server and the client can understand any message received, even without seeing previous messages. "/>
<node CREATED="1518290037047" ID="ID_191842965" MODIFIED="1518292936899" TEXT="Communication Between Client and Server: Clients send requests to retrieve or modify resources, and servers send responses to these requests">
<node CREATED="1518290139224" FOLDED="true" ID="ID_1678802550" MODIFIED="1518293371483" TEXT="Making Requests">
<node CREATED="1518290157550" FOLDED="true" ID="ID_583206449" MODIFIED="1518290910559" TEXT="An HTTP verb which defines what kind of operation to perform">
<node CREATED="1518290212298" ID="ID_482878178" MODIFIED="1518290242718" TEXT="GET - retrieve a specific resource (by id) or a collection of resources"/>
<node CREATED="1518290220794" ID="ID_1432648119" MODIFIED="1518290245270" TEXT="POST - create a new resource"/>
<node CREATED="1518290237491" ID="ID_352311355" MODIFIED="1518290248657" TEXT="PUT - update a specific resource (by id)"/>
<node CREATED="1518290256235" ID="ID_572859235" MODIFIED="1518290265126" TEXT="DELETE - remove a specific resource (by id)"/>
</node>
<node CREATED="1518290170345" FOLDED="true" ID="ID_704228265" MODIFIED="1518291601750" TEXT="A header which passes along information about the request">
<node CREATED="1518290343366" ID="ID_874925225" LINK="https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types" MODIFIED="1518291583054" TEXT="MIME Types (MDN)"/>
<node CREATED="1518290305645" ID="ID_1030190910" MODIFIED="1518290719340" TEXT="In the header of the request, the client sends the type of content that it is able to receive from the server. This is called the Accept field, and it ensures that the server does not send data that cannot be understood or processed by the client. The options for types of content are MIME Types (or Multipurpose Internet Mail Extensions):"/>
<node CREATED="1518290397935" ID="ID_704932592" MODIFIED="1518290514310">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <pre class="syntaxbox"><font size="4" face="Inconsolata">type/subtype
text/plain
text/html
image/jpeg
image/png
audio/mpeg
audio/ogg
video/mp4
application/json
application/xml
application/pdf
application/octet-stream</font></pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1518290644464" ID="ID_499665549" MODIFIED="1518291092270">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// Example: Get resource with id 23 in articles and accept html or xhtml content:&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">GET /articles/23 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Accept: text/html, application/xhtml</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518290187856" FOLDED="true" ID="ID_1521481273" MODIFIED="1518293368984" TEXT="A URI path to a resource">
<node CREATED="1518292981378" ID="ID_1896537538" MODIFIED="1518293238019" TEXT="The pair of an HTTP verb and a URI is called a `route` and matching them based on a request is called `routing`. "/>
<node CREATED="1518290858326" ID="ID_954033593" MODIFIED="1518290952801">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Requests must contain a path to a resource that the operation should be performed on. In RESTful APIs, paths should be designed to help the client know what is going on. Conventionally, the first part of the path should be the plural form of the resource. This keeps nested paths simple to read and easy to understand.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518291000578" ID="ID_1849538492" MODIFIED="1518291095914">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// Example: get the order with id&#160;12 for the customer with id&#160;223 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">GET fashionboutique.com/customers/223/orders/12 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Accept: application/json</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518290198569" ID="ID_1890627501" MODIFIED="1518290202416" TEXT="An optional message body containing data"/>
</node>
<node CREATED="1518291112717" FOLDED="true" ID="ID_624819824" MODIFIED="1518292340720" TEXT="Sending Responses">
<node CREATED="1518291140207" FOLDED="true" ID="ID_60351315" MODIFIED="1518291358291" TEXT="Content Types">
<node CREATED="1518291175616" ID="ID_1051497025" MODIFIED="1518291176520" TEXT="In cases where the server is sending a data payload to the client, the server must include a content-type in the header of the response. This content-type header field alerts the client to the type of data it is sending in the response body. These content types are MIME Types, just as they are in the accept field of the request header. The content-type that the server sends back in the response should be one of the options that the client specified in the accept field of the request. "/>
<node CREATED="1518291310020" ID="ID_1218685896" MODIFIED="1518291332987">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// request: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">GET /articles/23 HTTP/1.1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Accept: text/html, application/xhtml </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// response: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">HTTP/1.1 200 (OK) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Content-Type: text/html</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518291497873" FOLDED="true" ID="ID_284561825" MODIFIED="1518292336936" TEXT="Response Codes">
<node CREATED="1518291355710" ID="ID_1380701950" LINK="https://developer.mozilla.org/en-US/docs/Web/HTTP/Status" MODIFIED="1518291421274" TEXT="Response Codes (MDN)"/>
<node CREATED="1518291507835" ID="ID_1716446324" MODIFIED="1518291564494" TEXT="For each HTTP verb, there are expected status codes a server should return upon success:      &#xa;GET - return 200 (OK)     &#xa;POST - return 201 (CREATED)     &#xa;PUT - return 200 (OK)     &#xa;DELETE - return 204 (NO CONTENT) "/>
</node>
</node>
<node CREATED="1518291643807" FOLDED="true" ID="ID_1281790041" MODIFIED="1518297806479" TEXT="Examples of Requests and Responses">
<node CREATED="1518291650623" ID="ID_1101709261" MODIFIED="1518293805737">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// request: view all customers: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">GET http://fashionboutique.com/customers </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Accept: application/json </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// response header: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Status Code: 200 (OK) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Content-type: application/json </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// response body: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">{ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&quot;customers&quot;: [ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;{ }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;{ }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;{ }&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518291772194" ID="ID_1315001475" MODIFIED="1518293547774">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// request: create a new customer by posting the data: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">POST http://fashionboutique.com/customers </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Body: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">{ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#8220;customer&#8221;: { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#8220;name&#8221; = &#8220;Scylla Buss&#8221;,</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#8220;email&#8221; = &#8220;scylla.buss@codecademy.org&#8221; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// response header: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">201 (CREATED) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Content-type: application/json </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// response body: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">{ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#8220;customer&#8221;: { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&quot;id&quot; = 123, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#8220;name&#8221; = &#8220;Scylla Buss&#8221;,</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#8220;email&#8221; = &#8220;scylla.buss@codecademy.org&#8221; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518291898743" ID="ID_1467678559" MODIFIED="1518291911965">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// request: view a single customer by id: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">GET http://fashionboutique.com/customers/123 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Accept: application/json </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// response header: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Status Code: 200 (OK) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Content-type: application/json</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518291983938" ID="ID_1073259580" MODIFIED="1518293654996">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// request: update customer by putting the new data: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">PUT http://fashionboutique.com/customers/123 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Body: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">{ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#8220;customer&#8221;: { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#8220;name&#8221; = &#8220;Scylla Buss&#8221;, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#8220;email&#8221; = &#8220;scyllabuss1@codecademy.com&#8221; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// response header: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Status Code: 200 (OK) </font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518292077477" ID="ID_149059296" MODIFIED="1518292089125">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// request: DELETE that customer by id: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">DELETE http://fashionboutique.com/customers/123 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// response header: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Status Code: 204 (NO CONTENT)</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1518295411358" FOLDED="true" ID="ID_503544953" MODIFIED="1518297203354" TEXT="URI, URL, URN">
<node CREATED="1518296453791" ID="ID_1119373467" LINK="https://en.wikipedia.org/wiki/Uniform_Resource_Identifier" MODIFIED="1518296481718" TEXT="Uniform Resource Identifier (Wikipedia)"/>
<node CREATED="1518295493129" ID="ID_1220546062" MODIFIED="1518295566812" TEXT="A URL (Uniform Resource Locator) is a type of URI (Uniform Resource Identifier)"/>
<node CREATED="1518295593020" ID="ID_1744257951" MODIFIED="1518296610692" TEXT="A URL is a type of URI that identifies a resource via a representation of its primary access mechanism (its network &quot;location&quot; e.g. http:// or ftp://), rather than by some other attributes it may have."/>
<node CREATED="1518295614789" ID="ID_861960221" MODIFIED="1518296374439" TEXT="A URN (Uniform Resource Name) is a URI that identifies a resource by name in a particular namespace. A URN may be used to talk about a resource without implying its location or how to access it. For example, in the International Standard Book Number (ISBN) system, ISBN 0-486-27557-4 identifies a specific edition of Shakespeare&apos;s play Romeo and Juliet. The URN for that edition would be urn:isbn:0-486-27557-4. However, it gives no information as to where to find a copy of that book."/>
<node CREATED="1518296526731" ID="ID_1911502135" MODIFIED="1518296530974" TEXT="A URN may be compared to a person&apos;s name, while a URL may be compared to his or her street address. In other words, a URN identifies an item and a URL provides a method for finding it."/>
<node CREATED="1518296029633" ID="ID_1338435452" MODIFIED="1518296055294" TEXT="All URNs and URLs are URIs, but the opposite is not true. The part that makes something a URL is the combination of the name and an access method."/>
<node CREATED="1518295967103" ID="ID_179629529" MODIFIED="1518295988910" TEXT="&quot;URI&quot; is best used when you&#x2019;re referring to a resource just by its name or some other fragment. And when you&#x2019;re giving both the name of a resource and the method of accessing it (like a full URL), it&#x2019;s best to call that a &quot;URL&quot;."/>
<node CREATED="1518295690806" FOLDED="true" ID="ID_801744914" MODIFIED="1518297201040" TEXT="URIs">
<node CREATED="1518295916125" ID="ID_93564125" MODIFIED="1518295921785" TEXT="files.hp.com"/>
<node CREATED="1518295775626" ID="ID_369367879" MODIFIED="1518295791254" TEXT="URLs">
<node CREATED="1518295725528" ID="ID_439266778" MODIFIED="1518295728927" TEXT="http://www.ietf.org/rfc/rfc2396.txt"/>
<node CREATED="1518295694663" ID="ID_1588284116" MODIFIED="1518295716194" TEXT="ftp://ftp.is.co.za/rfc/rfc1808.txt"/>
<node CREATED="1518295757649" ID="ID_1144960179" MODIFIED="1518295852517" TEXT="lapd://[2001:db8::7]/c=GB?objectClass?one"/>
<node CREATED="1518295791254" ID="ID_139232408" MODIFIED="1518295796049" TEXT="mailto:John.Doe@example.com"/>
<node CREATED="1518295804962" ID="ID_483441368" MODIFIED="1518295809396" TEXT="news:comp.infosystems.www.servers.unix"/>
<node CREATED="1518295821634" ID="ID_827302995" MODIFIED="1518295826012" TEXT="tel:+1-816-555-1212"/>
<node CREATED="1518295847212" ID="ID_805913344" MODIFIED="1518295850861" TEXT="telnet://192.0.2.16:80/"/>
</node>
<node CREATED="1518295873580" ID="ID_235231135" MODIFIED="1518295877534" TEXT="URNs">
<node CREATED="1518296335795" ID="ID_237643630" MODIFIED="1518296338148" TEXT="urn:isbn:0-486-27557-4"/>
<node CREATED="1518295877773" ID="ID_1941804574" MODIFIED="1518295888017" TEXT="urn:oasis:names:specification:docbook:dtd:xml:4.1.2"/>
<node CREATED="1518297043081" ID="ID_854937690" MODIFIED="1518297064974" TEXT="urn:mpeg:mpeg7:schema:2001"/>
<node CREATED="1518297055849" ID="ID_1513522965" MODIFIED="1518297056899" TEXT="urn:sha1:YNCKHTQCWBTRNJIV4WNAE52SJUQCZO5C"/>
<node CREATED="1518297065913" ID="ID_1764251869" MODIFIED="1518297066685" TEXT="urn:uuid:6e8bc430-9c3a-11d9-9669-0800200c9a66"/>
</node>
</node>
</node>
</node>
<node CREATED="1514240428816" FOLDED="true" ID="ID_411226142" MODIFIED="1519205371713" POSITION="right" TEXT="JavaScript">
<node CREATED="1514246161846" FOLDED="true" ID="ID_1459307230" MODIFIED="1515263261179" TEXT="Includes">
<node CREATED="1514246166034" ID="ID_1353817231" MODIFIED="1514246167449" TEXT="require(&quot;../src/test.js&quot;);"/>
</node>
<node CREATED="1515258841504" FOLDED="true" ID="ID_1952254239" MODIFIED="1518375000973" TEXT="Operators">
<node CREATED="1515766312105" ID="ID_178949811" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Bitwise_Operators" MODIFIED="1515770543578" TEXT="TODO: Bitwise (MDN)"/>
<node CREATED="1515765625003" FOLDED="true" ID="ID_1236831658" MODIFIED="1517162709516" TEXT="Assignment">
<node CREATED="1515765651236" ID="ID_460118585" MODIFIED="1517162702960" TEXT="Compound Assignment">
<node CREATED="1515765708783" FOLDED="true" ID="ID_983206785" MODIFIED="1515769478405">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Remainder assignment: x %= y&#160;meaning&#160;x = x % y
    </p>
  </body>
</html></richcontent>
<node CREATED="1515769432845" ID="ID_667199254" MODIFIED="1515769474078">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">bar = 5; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">bar %= 2&#160;&#160;&#160;&#160;&#160;// 1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">bar %= 'foo' // NaN </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">bar %= 0&#160;&#160;&#160;&#160;&#160;// NaN</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515765757672" FOLDED="true" ID="ID_1012420465" MODIFIED="1515769537408" TEXT="ES7: Exponentiation assignment: x **= y meaning x = x ** y">
<node CREATED="1515769521176" ID="ID_1422034402" MODIFIED="1515769535440">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">bar = 5 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">bar **= 2&#160;&#160;&#160;&#160;&#160;// 25 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">bar **= 'foo' // NaN</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515765909942" FOLDED="true" ID="ID_1745366736" MODIFIED="1515769866815" TEXT="Left shift assignment: x &lt;&lt;= y meaning x = x &lt;&lt; y">
<node CREATED="1515769555017" ID="ID_1355595231" MODIFIED="1515769556196" TEXT="The left shift assignment operator moves the specified amount of bits to the left and assigns the result to the variable. "/>
<node CREATED="1515769581594" ID="ID_1271580179" MODIFIED="1515769599629">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var bar = 5; //&#160;&#160;(00000000000000000000000000000101) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">bar &lt;&lt;= 2; // 20 (00000000000000000000000000010100)</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515765915918" FOLDED="true" ID="ID_1702273722" MODIFIED="1515769823370" TEXT="Right shift assignment: x &gt;&gt;= y meaning x = x &gt;&gt; y ">
<node CREATED="1515769641843" ID="ID_1814673583" MODIFIED="1515769642873" TEXT="The right shift assignment operator moves the specified amount of bits to the right and assigns the result to the variable."/>
<node CREATED="1515769647788" ID="ID_1863016252" MODIFIED="1515769669380">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var bar = 5; //&#160;&#160;&#160;(00000000000000000000000000000101) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">bar &gt;&gt;= 2;&#160;&#160;&#160;// 1 (00000000000000000000000000000001) </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var bar -5; //&#160;&#160;&#160;&#160;(-00000000000000000000000000000101) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">bar &gt;&gt;= 2;&#160;&#160;// -2 (-00000000000000000000000000000010)</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515765927310" FOLDED="true" ID="ID_772377100" MODIFIED="1515769865746" TEXT="Unsigned right shift assignment: x &gt;&gt;&gt;= y meaning x = x &gt;&gt;&gt; y ">
<node CREATED="1515769824514" ID="ID_482409825" MODIFIED="1515769825498" TEXT="The unsigned right shift assignment operator moves the specified amount of bits to the right and assigns the result to the variable."/>
<node CREATED="1515769834795" ID="ID_43743935" MODIFIED="1515769852323">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var bar = 5;&#160;&#160;//&#160;&#160;&#160;(00000000000000000000000000000101) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">bar &gt;&gt;&gt;= 2;&#160;&#160;&#160;// 1 (00000000000000000000000000000001) </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var bar = -5; // (-00000000000000000000000000000101) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">bar &gt;&gt;&gt;= 2;&#160;&#160;&#160;// 1073741822 (00111111111111111111111111111110)</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515765933215" FOLDED="true" ID="ID_255533934" MODIFIED="1517162705404" TEXT="Bitwise AND assignment: x &amp;= y meaning x = x &amp; y ">
<node CREATED="1515770393075" ID="ID_280142958" MODIFIED="1515770403946" TEXT="a AND b yields 1 only if both a and b are 1"/>
<node CREATED="1515770005360" ID="ID_1916102840" MODIFIED="1515770006385" TEXT="The bitwise AND assignment operator uses the binary representation of both operands, does a bitwise AND operation on them and assigns the result to the variable."/>
<node CREATED="1515770008081" ID="ID_770550195" MODIFIED="1515770037520">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var bar = 5; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// 5:&#160;&#160;&#160;&#160;&#160;00000000000000000000000000000101 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// 2:&#160;&#160;&#160;&#160;&#160;00000000000000000000000000000010 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">bar &amp;= 2; // 0</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515765938633" FOLDED="true" ID="ID_554443842" MODIFIED="1515770389358" TEXT="Bitwise XOR assignment: x ^= y meaning x = x ^ y ">
<node CREATED="1515770369108" ID="ID_1932704024" MODIFIED="1515770372723" TEXT="a XOR b yields 1 if a and b are different."/>
<node CREATED="1515770053826" ID="ID_1346569237" MODIFIED="1515770073233" TEXT="The bitwise XOR assignment operator uses the binary representation of both operands, does a bitwise XOR operation on them and assigns the result to the variable."/>
<node CREATED="1515770074211" ID="ID_1963525038" MODIFIED="1515770100611">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var bar = 5; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">bar ^= 2; // 7 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// 5: 00000000000000000000000000000101 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// 2: 00000000000000000000000000000010 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// ----------------------------------- </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// 7: 00000000000000000000000000000111</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515765943760" FOLDED="true" ID="ID_1103387680" MODIFIED="1515770390845" TEXT="Bitwise OR assignment: x |= y meaning x = x | y">
<node CREATED="1515770384309" ID="ID_324135808" MODIFIED="1515770387212" TEXT="a OR b yields 1 if either a or b is 1."/>
<node CREATED="1515770145861" ID="ID_42377483" MODIFIED="1515770156858" TEXT="The bitwise OR assignment operator uses the binary representation of both operands, does a bitwise OR operation on them and assigns the result to the variable. "/>
<node CREATED="1515770167102" ID="ID_294600513" MODIFIED="1515770179608">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var bar = 5; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">bar |= 2; // 7 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// 5: 00000000000000000000000000000101 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// 2: 00000000000000000000000000000010 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// ----------------------------------- </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// 7: 00000000000000000000000000000111</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1515258845783" FOLDED="true" ID="ID_1595802147" MODIFIED="1517315263712" TEXT="Spread">
<node CREATED="1515259402329" ID="ID_130500699" MODIFIED="1515881335063" TEXT="Rest syntax looks exactly like spread syntax, but is used for destructuring arrays and objects. In a way, rest syntax is the opposite of spread syntax: spread &apos;expands&apos; an array into its elements, while rest collects multiple elements and &apos;condenses&apos; them into a single element."/>
<node CREATED="1515881194361" ID="ID_124345591" MODIFIED="1515881215973">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// function calls </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function myFunction(x, y, z) { } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var args = [0, 1, 2]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myFunction(...args); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">function myFunction(v, w, x, y, z) { } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var args = [0, 1]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myFunction(-1, ...args, 2, ...[3]);</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515258875921" ID="ID_1292849810" MODIFIED="1515768968131">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// spread in array literals </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var parts = ['shoulders', 'knees']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var lyrics = ['head', ...parts, 'and', 'toes'];&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// [&quot;head&quot;, &quot;shoulders&quot;, &quot;knees&quot;, &quot;and&quot;, &quot;toes&quot;]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515258986916" ID="ID_429699419" MODIFIED="1515259271380">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// copy an array (unsuitable for multidimensional arrays)</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var arr = [1, 2, 3]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var arr2 = [...arr]; // like arr.slice() </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">arr2.push(4); // [1, 2, 3, 4] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">arr; // [1, 2, 3]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515259183770" ID="ID_59949015" MODIFIED="1515259333661">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// concatenate arrays using Array.concat()&#160;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var arr1 = [0, 1, 2]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var arr2 = [3, 4, 5]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">arr1 = arr1.concat(arr2); // append all items from arr2 onto arr1 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">//concatenate arrays using&#160;spread</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var arr1 = [0, 1, 2]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var arr2 = [3, 4, 5]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">arr1 = [...arr1, ...arr2]; // append all items from arr2 onto arr1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">arr1 = [...arr2, ...arr1]; // preappend all items from arr2 onto arr1 </font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515263051628" ID="ID_978457224" MODIFIED="1515881020734">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// shallow-cloning (excluding prototype) or merging of objects using spread: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var obj1 = { foo: 'bar', x: 42 }; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var obj2 = { foo: 'baz', y: 13 }; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var clonedObj = { ...obj1 }; // Object { foo: &quot;bar&quot;, x: 42 } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var mergedObj = { ...obj1, ...obj2 }; // Object { foo: &quot;baz&quot;, x: 42, y: 13 }</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515263246608" FOLDED="true" ID="ID_1569806264" MODIFIED="1515880219892" TEXT="Destructuring">
<node CREATED="1515264104694" ID="ID_754045498" MODIFIED="1515264120935" TEXT="Destructoring unpacks values from arrays, or properties from objects, into distinct variables"/>
<node CREATED="1515263570914" FOLDED="true" ID="ID_652249087" MODIFIED="1515880094558" TEXT="Array Destructuring">
<node CREATED="1515264026811" ID="ID_1598674200" MODIFIED="1515880081641">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// array destructuring </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var foo = ['one', 'two', 'three']; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var [one, two, three] = foo; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(one); // &quot;one&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(two); // &quot;two&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(three); // &quot;three&quot; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var x = [1, 2, 3, 4, 5]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var [y, z] = x; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(y); // 1 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(z); // 2 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">[a, b, ...rest] = [10, 20, 30, 40, 50]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(a); // 10 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(b); // 20 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(rest); // [30, 40, 50] </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// assignment separate from declaration: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var a, b, rest; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">[a, b] = [10, 20]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(a); // 10 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(b); // 20 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// default values: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var a, b; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">[a=5, b=7] = [1]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(a); // 1 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(b); // 7 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// swapping variables: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var a = 1; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var b = 3; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">[a, b] = [b, a]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(a); // 3 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(b); // 1 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// parsing an array returned from a function: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function f() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return [1, 2]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var a, b; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">[a, b] = f(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(a); // 1 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(b); // 2 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// ignoring some returned values: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function f() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return [1, 2, 3]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var [a, , b] = f(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(a); // 1 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(b); // 3 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// assigning the rest of an array to a variable: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var [a, ...b] = [1, 2, 3]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(a); // 1 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(b); // [2, 3] </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// default values </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var a, b; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">[a=5, b=7] = [1]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(a); // 1 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(b); // 7</font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// unpacking values from a regular expression match: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">/* When the regular expression exec() method finds a match, it returns an array containing first the entire matched portion of the string and then the portions of the string that matched each parenthesized group in the regular expression. Destructuring assignment allows you to unpack the parts out of this array easily, ignoring the full match if it is not needed. */ </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">function parseProtocol(url) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var parsedURL = /^(\w+)\:\/\/([^\/]+)\/(.*)$/.exec(url); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;if (!parsedURL) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;return false; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(parsedURL); // [&quot;https://developer.mozilla.org/en-US/Web/JavaScript&quot;, &quot;https&quot;, &quot;developer.mozilla.org&quot;, &quot;en-US/Web/JavaScript&quot;] </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var [, protocol, fullhost, fullpath] = parsedURL; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return protocol; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(parseProtocol('https://developer.mozilla.org/en-US/Web/JavaScript')); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// &quot;https&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515264203472" FOLDED="true" ID="ID_1139395519" MODIFIED="1515880218849" TEXT="Object Destructuring">
<node CREATED="1515265451053" ID="ID_348737023" MODIFIED="1515265467596">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// basic assignment: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var o = {p: 42, q: true}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var {p, q} = o; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(p); // 42 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(q); // true </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// assignment without declaration: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a, b; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">({ a, b } = { a: 10, b: 20 }); // round braces required, otherwise use: var {a, b} = {a: 10, b: 20} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a); // 10 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(b); // 20 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// assigning to new variable names: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var o = {p: 42, q: true}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var {p: foo, q: bar} = o; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(foo); // 42 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(bar); // true </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// default values: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var {a = 10, b = 5} = {a: 3}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a); // 3 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(b); // 5 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// assigning to new variables names and providing default value: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var {a:aa = 10, b:bb = 5} = {a: 3}; // rename properties to aa and bb </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(aa); // 3 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(bb); // 5 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// nested object and array destructuring: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var metadata = { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;title: 'Scratchpad', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;translations: [ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;{ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;locale: 'de', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;localization_tags: [], </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;last_edit: '2014-04-14T08:43:37', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;url: '/de/docs/Tools/Scratchpad', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;title: 'JavaScript-Umgebung' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;], </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;url: '/en-US/docs/Tools/Scratchpad' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var {title: englishTitle, translations: [{title: localeTitle}]} = metadata; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(englishTitle); // &quot;Scratchpad&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(localeTitle);&#160;&#160;// &quot;JavaScript-Umgebung&quot; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// for of iteration and destructuring: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var people = [ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;name: 'Mike Smith', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;family: { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;mother: 'Jane Smith', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;father: 'Harry Smith', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;sister: 'Samantha Smith' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;age: 35 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;name: 'Tom Jones', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;family: { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;mother: 'Norah Jones', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;father: 'Richard Jones', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;brother: 'Howard Jones' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;age: 25 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">for (var {name: n, family: {father: f}} of people) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log('Name: ' + n + ', Father: ' + f); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// &quot;Name: Mike Smith, Father: Harry Smith&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &quot;Name: Tom Jones, Father: Richard Jones&quot; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// unpacking fields from objects passed as function parameter: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function userId({id}) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return id; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function whois({displayName, fullName: {firstName: name}}) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(displayName + ' is ' + name); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var user = { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;id: 42, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;displayName: 'jdoe', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;fullName: { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;firstName: 'John', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;lastName: 'Doe' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log('userId: ' + userId(user)); // &quot;userId: 42&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">whois(user); // &quot;jdoe is John&quot; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// stage 3 proposal for using rest </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">({a, b, ...rest} = {a: 10, b: 20, c: 30, d: 40}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a); // 10 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(b); // 20 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(rest); // {c: 30, d: 40}</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515160099608" ID="ID_1907880159" MODIFIED="1515160276698">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">var animal = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;species: 'dog', </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;weight: 23, </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;sound: 'woof' </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var { species, sound } = animal; // destructure animal properties into vars </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log('The ' + species + ' says ' + sound + '!');</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515160099608" ID="ID_1260358149" MODIFIED="1515265554975">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// destructure obj args into vars whilst setting&#160;default species: </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function makeSound({ species = 'animal', sound }) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log('The ' + species + ' says ' + sound + '!'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">makeSound({ &#160;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;weight: 23, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;sound: 'woof' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); </font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515765631139" FOLDED="true" ID="ID_1640129699" MODIFIED="1517162715842" TEXT="Binary">
<node CREATED="1515765531000" ID="ID_1817255560" MODIFIED="1515765559546" TEXT="Binary operator requires two operand s, one before the operator and one after the operator: x*y"/>
</node>
<node CREATED="1515765639044" FOLDED="true" ID="ID_932913387" MODIFIED="1515769429003" TEXT="Unary">
<node CREATED="1515765567545" ID="ID_1769152234" MODIFIED="1515765586882" TEXT="Unary operator requires a single operand, either before or after the operator: x++ or ++x"/>
<node CREATED="1515769279824" ID="ID_422711460" MODIFIED="1515769295552" TEXT="Unary Plus converts a value to a number: "/>
<node CREATED="1515769304184" ID="ID_1240774743" MODIFIED="1515769324342">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">+3&#160;&#160;&#160;&#160;&#160;// 3 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">+'3'&#160;&#160;&#160;// 3 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">+true&#160;&#160;// 1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">+false // 0 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">+null&#160;&#160;// 0 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">+function(val){&#160;&#160;return val } // NaN</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515767556776" FOLDED="true" ID="ID_1301671502" MODIFIED="1517320397151" TEXT="Relational ">
<node CREATED="1515767566880" FOLDED="true" ID="ID_227407740" MODIFIED="1517320382315" TEXT="`in` returns true if property is in the object">
<node CREATED="1515767667043" ID="ID_1675994162" MODIFIED="1515767724414">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// arrays </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var trees = ['redwood', 'bay', 'cedar', 'oak', 'maple']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">0 in trees;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// returns true </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">3 in trees;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// returns true </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">6 in trees;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// returns false </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">'bay' in trees;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// returns false (you must specify the index number, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// not the value at that index) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">'length' in trees;&#160;&#160;&#160;&#160;&#160;// returns true (length is an Array property) </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// built-in objects </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">'PI' in Math;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// returns true </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var myString = new String('coral'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">'length' in myString;&#160;&#160;// returns true (length is an String property) </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// custom objects </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var mycar = { make: 'Honda', model: 'Accord', year: 1998 }; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">'make' in mycar;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// returns true </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">'model' in mycar;&#160;&#160;&#160;&#160;&#160;&#160;// returns true</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517320332374" FOLDED="true" ID="ID_1594348499" MODIFIED="1517320383227" TEXT="`in` returns true if property is in object prototype chain">
<node CREATED="1517320354253" ID="ID_692524179" MODIFIED="1517320380444">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">'toString' in {}; // returns true</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515767767918" FOLDED="true" ID="ID_341117451" MODIFIED="1515767829997" TEXT="`instanceof` returns true if the object is of object type">
<node CREATED="1515767800071" ID="ID_1043693467" MODIFIED="1515767825908">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var theDay = new Date(1995, 12, 17); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">if (theDay instanceof Date) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// statements to execute </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515767858990" FOLDED="true" ID="ID_1761301294" MODIFIED="1517162699261" TEXT="Precedence and Grouping">
<node CREATED="1515768031411" ID="ID_496889221" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence#Table" MODIFIED="1515768053751" TEXT="Operator Precedence Table (MDN)"/>
<node CREATED="1515767883510" ID="ID_417387312" MODIFIED="1515768029816" TEXT="The precedence of operators determines the order they are applied when evaluating an expression. You can override operator precedence by using parentheses."/>
<node CREATED="1515768722885" ID="ID_1842668253" MODIFIED="1515768741666">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var a = 1; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var b = 2; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var c = 3; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// default precedence </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">a + b * c&#160;&#160;&#160;&#160;&#160;// 7 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// evaluated by default like this </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">a + (b * c)&#160;&#160;&#160;// 7 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// now overriding precedence </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// addition before multiplication&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">(a + b) * c&#160;&#160;&#160;// 9 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// which is equivalent to </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">a * c + b * c // 9</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515879318310" FOLDED="true" ID="ID_222635186" MODIFIED="1517162824090" TEXT="Ternary">
<node CREATED="1515879416966" ID="ID_1809541105" MODIFIED="1515879573636">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// multiple operations per case using comma separators: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var stop = false, age = 23; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">age &gt; 18 ? ( </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;alert('OK, you can go.'), </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;location.assign('continue.html') </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">) : ( </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;stop = true, </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;alert('Sorry, you are much too young!') </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">);</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515879559740" ID="ID_1185264419" MODIFIED="1515879627217">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// multiple operations during the assignation of a value </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var age = 16; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var url = age &gt; 18 ? ( </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;alert('OK, you can go.'), </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;// alert returns &quot;undefined&quot;, but it will be ignored because </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;// isn't the last comma-separated value of the parenthesis </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;'continue.html' // the value to be assigned if age &gt; 18 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">) : ( </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;alert('You are much too young!'), </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;alert('Sorry :-('), </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;// etc. etc. </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;'stop.html' // the value to be assigned if !(age &gt; 18) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">location.assign(url); // &quot;stop.html&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515879712401" ID="ID_1003972848" MODIFIED="1515879824239" TEXT="A good way to spot that the ternary will be a suitable replacement for an if/else statement is when the return keyword is used multiple times and is the only expression inside of the if block."/>
<node CREATED="1515879737689" ID="ID_1288679165" MODIFIED="1515879754177">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">var func1 = function( .. ) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;if (condition1) { return value1 } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;else if (condition2) { return value2 } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;else if (condition3) { return value3 } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;else { return value4 } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var func2 = function( .. ) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return condition1 ? value1 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;: condition2 ? value2 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;: condition3 ? value3 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;:&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;value4 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515880545307" FOLDED="true" ID="ID_1985690759" MODIFIED="1517315256857" TEXT="Pipeline">
<node CREATED="1515880552483" ID="ID_1792076024" MODIFIED="1515880607038">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// chaining several functions: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">const double = (n) =&gt; n * 2; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">const increment = (n) =&gt; n + 1; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// without pipeline operator </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">double(increment(double(10))); // 42 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// with pipeline operator </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">10 |&gt; double |&gt; increment |&gt; double; // 42</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515766941183" FOLDED="true" ID="ID_14446200" MODIFIED="1517320211448" TEXT="Delete">
<node CREATED="1515766945495" ID="ID_504440944" MODIFIED="1515882238907">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">x = 42; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var y = 43; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myobj = new Number(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myobj.h = 4;&#160;&#160;&#160;&#160;// create property h </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">delete x;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// returns true (can delete if declared implicitly) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">delete y;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// returns false (cannot delete if declared with var) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">delete Math.PI; // returns false (cannot delete predefined properties) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">delete myobj.h; // returns true (can delete user-defined properties) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">delete myobj;&#160;&#160;&#160;// returns true (can delete if declared implicitly) </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var trees = ['redwood', 'bay', 'cedar', 'oak', 'maple']; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">delete trees[3]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">if (3 in trees) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// this does not get executed </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var trees = ['redwood', 'bay', 'cedar', 'oak', 'maple']; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">trees[3] = undefined; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">if (3 in trees) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// this gets executed </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// use the splice method to completely remove element from the array </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var trees = ['redwood', 'bay', 'cedar', 'oak', 'maple']; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">trees.splice(3,1); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(trees); // [&quot;redwood&quot;, &quot;bay&quot;, &quot;cedar&quot;, &quot;maple&quot;]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515881931249" ID="ID_1324200690" MODIFIED="1515881942693">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// non-configurable properties </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var Employee = {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Object.defineProperty(Employee, 'name', {configurable: false}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(delete Employee.name);&#160;&#160;// returns false</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515882092663" ID="ID_106511470" MODIFIED="1515882104111">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// delete and the prototype chain </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function Foo() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;this.bar = 10; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">Foo.prototype.bar = 42; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var foo = new Foo(); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// Returns true, since the own property </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// has been deleted on the foo object </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">delete foo.bar;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// foo.bar is still available, since it </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// is available in the prototype chain. </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(foo.bar); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// We delete the property on the prototype </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">delete Foo.prototype.bar; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// logs &quot;undefined&quot; since the property </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// is no longer inherited </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(foo.bar);</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515767324722" ID="ID_887460743" MODIFIED="1515767865542" TEXT="typeof (See &apos;Types &amp; Comparisons&apos;)"/>
<node CREATED="1515766044410" ID="ID_755695287" MODIFIED="1515767340611" TEXT="Comparison (See &apos;Types &amp; Comparisons&apos;)"/>
</node>
<node CREATED="1514996409905" FOLDED="true" ID="ID_687431479" MODIFIED="1517387448735" TEXT="Types &amp; Comparisons">
<node CREATED="1514240437675" FOLDED="true" ID="ID_409149473" MODIFIED="1517387387437" TEXT="Primitive Types vs Reference Types">
<node CREATED="1514240457860" FOLDED="true" ID="ID_934398074" MODIFIED="1515001450709">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Primitive Types:
    </p>
    <p>
      - null, undefined, boolean, number, string, symbol
    </p>
    <p>
      - compared by value
    </p>
    <p>
      - passed by value
    </p>
    <p>
      - immutable
    </p>
  </body>
</html></richcontent>
<node CREATED="1514240465235" ID="ID_81294777" MODIFIED="1514240468488" TEXT="string"/>
<node CREATED="1514240470587" ID="ID_356057205" MODIFIED="1514240472822" TEXT="number"/>
<node CREATED="1514240474115" ID="ID_1092319389" MODIFIED="1514240490468" TEXT="boolean"/>
<node CREATED="1514240491613" FOLDED="true" ID="ID_197126779" MODIFIED="1515001381922" TEXT="null">
<node CREATED="1514996350754" ID="ID_1924265549" MODIFIED="1514996375536" TEXT="null is the absence of a value. It is an assignment value that can be assigned to a variable as a representation of &#x2018;no-value&#x2019;."/>
</node>
<node CREATED="1514240494636" FOLDED="true" ID="ID_802261318" MODIFIED="1515001383070" TEXT="undefined">
<node CREATED="1514996331338" ID="ID_1679478415" MODIFIED="1514996383082" TEXT="undefined is the absence of a definition. It is used as the default value for uninitialized variables, function arguments that were not provided and missing properties of objects. Functions return undefined when nothing has been explicitly returned."/>
</node>
</node>
<node CREATED="1514240503197" FOLDED="true" ID="ID_1757607612" MODIFIED="1515001449448">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Reference Types:
    </p>
    <p>
      - objects, arrays, functions
    </p>
    <p>
      - compared by reference (to memory location)
    </p>
    <p>
      - passed by reference (to memory location)
    </p>
    <p>
      - mutable
    </p>
  </body>
</html></richcontent>
<node CREATED="1514240513621" ID="ID_729826572" MODIFIED="1515001439561" TEXT="object ">
<node CREATED="1514241786763" ID="ID_1952347587" MODIFIED="1514245370365">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// copying an object (dereferencing): </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// shallow copy </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var new Object = $.extend({}, oldObject); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// deep copy </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var newObject = $.extend(true, {}, oldObject);</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514240508805" FOLDED="true" ID="ID_397763101" MODIFIED="1515001428524" TEXT="array">
<node CREATED="1514241893920" ID="ID_1388036297" MODIFIED="1514245363003">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// copying an array (dereferencing): </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var array1 = [0, 1, 2]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// deferenced copy but not deep; won't copy nested arrays </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var array2 = array1.splice(0); </font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514240516445" ID="ID_1074416504" MODIFIED="1515001433651" TEXT="function"/>
</node>
<node CREATED="1515000966401" ID="ID_1862761212" MODIFIED="1515001567542">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Value vs. Reference:
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var a = 2;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// 'a' holds a copy of the value 2. </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var b = a;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// 'b' is always a copy of the value in 'a' </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">b++; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(a);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// 2 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(b);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// 3 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var c = [1, 2, 3]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var d = c;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// 'd' is a reference to the shared value </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">d.push(4);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// Mutates the referenced value (array is an object) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(c);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// [1,2,3,4] </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(d);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// [1,2,3,4] </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var e = [1, 2, 3, 4]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(c === d);&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(c === e);&#160;&#160;// false - c and e exist in different locations in memory</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515001219765" ID="ID_1094025672" MODIFIED="1515001370751">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Copying an object, array or function:
    </p>
    <p>
      
    </p>
    <p>
      To copy a compound (object, array, function) value by value, you need to make a copy of it.
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var c = [1, 2, 3, 4]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">const copy = c.slice();&#160;&#160;// 'copy' references to a new value </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(c);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// [1,2,3,4] </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(copy);&#160;&#160;&#160;&#160;&#160;&#160;&#160;// [1,2,3,4] </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(c === copy);&#160;// false - c and copy exist in different locations in memory</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514246678002" FOLDED="true" ID="ID_1285901220" MODIFIED="1517387375460" TEXT="Comparisons">
<node CREATED="1515000309888" FOLDED="true" ID="ID_1092982277" MODIFIED="1515767224087" TEXT="== vs. ===">
<node CREATED="1515000358018" ID="ID_717537230" MODIFIED="1515000481147">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">== checks for equality using coercion </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">=== checks for equality without using coercion&#8202;(strict equality). </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">2 == &quot;2&quot;;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">2 === &quot;2&quot;;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// false </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">undefined == null;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">undefined === null; // false </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&quot;0&quot; == false;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// &quot;0&quot; == false: when comparing a boolean with a non-boolean, </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// both are coerced into numbers and then compared (0 == 0) </font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515000766507" ID="ID_1736714000" MODIFIED="1515000775021">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">false == &quot;&quot;;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">false == [];&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">false == {};&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// false </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&quot;&quot; == 0;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&quot;&quot; == [];&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&quot;&quot; == {};&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// false </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">0 == [];&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">0 == {};&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// false </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">0 == null;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// false </font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514318092255" FOLDED="true" ID="ID_1917452250" MODIFIED="1515767226057" TEXT="Booleans">
<node CREATED="1514318104631" ID="ID_1031835345" MODIFIED="1515000761985">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">!!(null) === false;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">!!(0) === true;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// false </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">!!(1) === true;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">!!(001) === true;&#160;&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">!!('true') === true;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">!!('false') === false; // false </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">!!('') === true;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// false </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">!!(' ') === true;&#160;&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">!!({});&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">!!([]);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">!!(function() {});&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Boolean(0) === false;&#160;&#160;// true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Boolean(1) === false;&#160;&#160;// false </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Boolean(' ') === true; // true</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1514246386033" ID="ID_927874055" LINK="http://dorey.github.io/JavaScript-Equality-Table/" MODIFIED="1514246417166" TEXT="Equality Table"/>
</node>
<node CREATED="1515766092572" ID="ID_1153763075" MODIFIED="1515766107402" TEXT="Greater than or equal: x &gt;= y"/>
<node CREATED="1515766118013" ID="ID_134752797" MODIFIED="1515766126341" TEXT="Less than or equal: x &lt;= y"/>
</node>
<node CREATED="1514996420409" FOLDED="true" ID="ID_831405027" MODIFIED="1517387373944" TEXT="Type Coercion">
<node CREATED="1514246288566" FOLDED="true" ID="ID_414480712" MODIFIED="1515767206956" TEXT="Truthy &amp; Falsy Values">
<node CREATED="1515000691233" ID="ID_219606049" MODIFIED="1515000708304">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">Falsy values are values that will be coerced to false when forced into a boolean. </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">- false </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">- 0 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">- &quot;&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">- undefined </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">- null </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">- NaN </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">Anything not explicitly on the falsy list is truthy when coerced into a&#8202;boolean. </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">- 'hello' </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">- '0' </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">- ' ' </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">- [] </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">- {} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">- function(){}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514996425905" FOLDED="true" ID="ID_896049853" MODIFIED="1515767212891" TEXT="Implicit">
<node CREATED="1514996468928" ID="ID_479646602" MODIFIED="1514996558691">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">var name = &quot;Joey&quot;; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// coerce name string into truthy boolean </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">if (name) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(name + &quot; doesn't share food!&quot;); // Joey doesn&#8217;t share food! </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515000182589" ID="ID_1040667975" MODIFIED="1515000253350">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">1 + &quot;2&quot; = &quot;12&quot;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// string coerces numbers </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&quot;&quot; + 1 + 0 = &quot;10&quot;&#160;&#160;&#160;&#160;// empty string coerces numbers </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&quot;&quot; - 1 + 0 = -1&#160;&#160;&#160;&#160;&#160;&#160;// subtraction coerces string </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&quot;-9\n&quot; + 5 = &quot;-9\n5&quot; // string coerces number </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&quot;-9\n&quot; - 5 = -14&#160;&#160;&#160;&#160;&#160;// subtraction coerces string </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&quot;2&quot; * &quot;3&quot; = 6&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// multiplication coerces string </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">4 + 5 + &quot;px&quot; = &quot;9px&quot; // string coerces addition </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&quot;$&quot; + 4 + 5 = &quot;$45&quot;&#160;&#160;// string coerces numbers </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&quot;4&quot; - 2 = 2&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// subtraction coerces string </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&quot;4px&quot; - 2 = NaN&#160;&#160;&#160;&#160;&#160;&#160;// no compatible coercion </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">null + 1 = 1&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// additions coerces null </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">undefined + 1 = NaN&#160;&#160;// no compatible coercion</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514996431985" FOLDED="true" ID="ID_45144167" MODIFIED="1515767215369" TEXT="Explicit">
<node CREATED="1514996517895" ID="ID_598544196" MODIFIED="1514996550220">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">var a = &quot;21&quot;; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// implicit coercion </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var b = a * 2; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">b; // 42 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// explicit coercion </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var c = Number(a) * 2; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">c; // 42</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515767236168" FOLDED="true" ID="ID_1894198962" MODIFIED="1517323538908" TEXT="typeof">
<node CREATED="1515767344059" ID="ID_1060944303" MODIFIED="1515767364513">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var myFun = new Function('5 + 2'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var shape = 'round'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var size = 1; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var foo = ['Apple', 'Mango', 'Orange']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var today = new Date(); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">typeof myFun;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// returns &quot;function&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">typeof shape;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// returns &quot;string&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">typeof size;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// returns &quot;number&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">typeof foo;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// returns &quot;object&quot; // arrays are objects </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">typeof today;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// returns &quot;object&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">typeof doesntExist; // returns &quot;undefined&quot; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">typeof true; // returns &quot;boolean&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">typeof null; // returns &quot;object&quot; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">typeof Date;&#160;&#160;&#160;&#160;&#160; // returns &quot;function&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">typeof Function; // returns &quot;function&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">typeof Math;&#160;&#160;&#160;&#160;&#160; // returns &quot;object&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">typeof Option;&#160;&#160;&#160; // returns &quot;function&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">typeof String;&#160;&#160;&#160; // returns &quot;function&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1517386931123" ID="ID_1503197367" MODIFIED="1517387550567" TEXT="Arrays">
<node CREATED="1518435049441" FOLDED="true" ID="ID_1962708390" MODIFIED="1518435573991" TEXT="Properties">
<node CREATED="1517387453738" FOLDED="true" ID="ID_38154120" MODIFIED="1518435462639" TEXT=".length()">
<node CREATED="1518435106586" ID="ID_153912054" MODIFIED="1518435117753" TEXT="The length property sets or returns the number of elements in that array"/>
<node CREATED="1517386942245" ID="ID_3173540" MODIFIED="1518435307926">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var clothing = ['shoes', 'shirts', 'socks', 'sweaters']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(clothing.length); // 4 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// set the length property to truncate array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">clothing.length = 0; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(clothing.length); // 0 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(clothing); // []</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518435449854" FOLDED="true" ID="ID_283674832" MODIFIED="1518435572006" TEXT=".prototype()">
<node CREATED="1518435491839" ID="ID_1848346442" MODIFIED="1518435559088" TEXT="The Array.prototype property represents the prototype for the Array constructor and allows you to add new properties and methods to all Array objects. Array instances inherit from Array.prototype. As with all constructors, you can change the constructor&apos;s prototype object to make changes to all Array instances. For example, you can add new methods and properties to extend all Array objects. "/>
<node CREATED="1518435463887" ID="ID_98246974" MODIFIED="1518435507492">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// add a new method returning the first element of an array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">if (!Array.prototype.first) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;Array.prototype.first = function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return this[0]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1517387558309" ID="ID_1270547903" MODIFIED="1517387560675" TEXT="Methods">
<node CREATED="1518434315822" FOLDED="true" ID="ID_1170912435" MODIFIED="1518434791196" TEXT=".from(arrayLike[, mapFn, thisObject]) ">
<node CREATED="1518434398049" ID="ID_1767543782" MODIFIED="1518434448414">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// creates a new Array instance from an array-like or iterable object </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(Array.from('foo')); // [&quot;f&quot;, &quot;o&quot;, &quot;o&quot;] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(Array.from([1, 2, 3], x =&gt; x + x)); // [2, 4, 6]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518434509636" ID="ID_892009729" MODIFIED="1518434513112" TEXT="Array.from() has an optional parameter mapFn, which allows you to execute a map function on each element of the array (or subclass object) that is being created. More clearly, Array.from(obj, mapFn, thisArg) has the same result as Array.from(obj).map(mapFn, thisArg), except that it does not create an intermediate array. This is especially important for certain array subclasses, like typed arrays, since the intermediate array would necessarily have values truncated to fit into the appropriate type."/>
<node CREATED="1518434553550" ID="ID_1562632768" MODIFIED="1518434659338">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// array from a Set </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var s = new Set(['foo', window]); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(Array.from(s)); // [&quot;foo&quot;, window] </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// array from a Map </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var m = new Map([[1, 2], [2, 4], [4, 8]]); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(Array.from(m)); // [[1, 2], [2, 4], [4, 8]] </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// array from an Array-like object (arguments) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function f() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return Array.from(arguments); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(f(1, 2, 3)); // [1, 2, 3]</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518434778911" FOLDED="true" ID="ID_1346207415" MODIFIED="1518434811094" TEXT=".isArray()">
<node CREATED="1518434796207" ID="ID_138433635" MODIFIED="1518434809461">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// determines whether the passed value is an Array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Array.isArray([1, 2, 3]); // true </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Array.isArray({foo: 123}); // false </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Array.isArray('foobar'); // false </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Array.isArray(undefined); // false</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518434883396" FOLDED="true" ID="ID_708438870" MODIFIED="1518435238145" TEXT=".of()">
<node CREATED="1518434893357" ID="ID_1877934084" MODIFIED="1518434897243" TEXT="The difference between Array.of() and the Array constructor is in the handling of integer arguments: Array.of(7) creates an array with a single element, 7, whereas Array(7) creates an empty array with a length property of 7 (Note: this implies an array of 7 empty slots, not slots with actual undefined values)."/>
<node CREATED="1518434945439" ID="ID_1156197639" MODIFIED="1518434983505">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">Array.of(7);&#160;&#160;&#160;&#160;&#160;&#160;&#160;// [7] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Array.of(1, 2, 3); // [1, 2, 3] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Array(7);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// [ , , , , , , ] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Array(1, 2, 3);&#160;&#160;&#160;&#160;// [1, 2, 3]</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517387551085" FOLDED="true" ID="ID_380298328" MODIFIED="1518436000585" TEXT=".concat()">
<node CREATED="1517387567219" ID="ID_1399647199" MODIFIED="1518435843525">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// merges two or more arrays (or values) and returns a new array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var myArray = new Array('1', '2', '3'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">myArray = myArray.concat('a', 'b', 'c'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(myArray) // [&quot;1&quot;, &quot;2&quot;, &quot;3&quot;, &quot;a&quot;, &quot;b&quot;, &quot;c&quot;]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518435762552" ID="ID_206281053" MODIFIED="1518435775556">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var num1 = [1, 2, 3], </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;num2 = [4, 5, 6], </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;num3 = [7, 8, 9]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var nums = num1.concat(num2, num3); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(nums); // [1, 2, 3, 4, 5, 6, 7, 8, 9]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518435856370" ID="ID_158416968" MODIFIED="1518435872292">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var alpha = ['a', 'b', 'c']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var alphaNumeric = alpha.concat(1, [2, 3]); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(alphaNumeric); // ['a', 'b', 'c', 1, 2, 3]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518435975654" ID="ID_1054273221" MODIFIED="1518435988614">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// concatenate nested arrays and retain reference </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var num1 = [[1]]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var num2 = [2, [3]]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var nums = num1.concat(num2); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(nums); // [[1], 2, [3]] </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">num1[0].push(4); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(nums); // [[1, 4], 2, [3]]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518435673948" ID="ID_1579785173" MODIFIED="1518435695187" TEXT="Does not recurse into nested array arguments (use .reduce instead)"/>
</node>
<node CREATED="1518436589941" ID="ID_42011398" MODIFIED="1518436812627" TEXT="TODO: .copyWithin(target[, start, end])"/>
<node CREATED="1518426121627" FOLDED="true" ID="ID_1648655494" MODIFIED="1518436710887" TEXT=".every(callback[, thisObject])">
<node CREATED="1518431318651" ID="ID_807304580" MODIFIED="1518431323239" TEXT=".every acts like the &quot;for all&quot; quantifier in mathematics. In particular, for an empty array, it returns true. (It is vacuously true that all elements of the empty set satisfy any given condition.)"/>
<node CREATED="1518426178942" ID="ID_465545376" MODIFIED="1518426222189">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// returns true if callback returns true for every item in the array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function isNumber(value) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return typeof value === 'number'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a1 = [1, 2, 3]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a1.every(isNumber)); // logs true </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a2 = [1, '2', 3]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a2.every(isNumber)); // logs false</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518431358660" ID="ID_321891748" MODIFIED="1518431385052">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">[12, 5, 8, 130, 44].every(x =&gt; x &gt;= 10); // false </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">[12, 54, 18, 130, 44].every(x =&gt; x &gt;= 10); // true</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518379377624" FOLDED="true" ID="ID_118611816" MODIFIED="1518436714838" TEXT=".filter(callback[, thisObject])">
<node CREATED="1518379418441" ID="ID_1210097398" MODIFIED="1518379432655">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// returns a new array containing the items for which callback returned true </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a1 = ['a', 10, 'b', 20, 'c', 30]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a2 = a1.filter(function(item) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return typeof item === 'number'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a2); // [10, 20, 30]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518379476187" ID="ID_1194328801" MODIFIED="1518379490405">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var words = ['spray', 'limit', 'elite', 'exuberant', 'destruction', 'present']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">const result = words.filter(word =&gt; word.length &gt; 6); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(result); // [&quot;exuberant&quot;, &quot;destruction&quot;, &quot;present&quot;]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518379627408" ID="ID_1373523453" MODIFIED="1518379642191">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// filter out all small values </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function isBigEnough(value) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return value &gt;= 10; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var filtered = [12, 5, 8, 130, 44].filter(isBigEnough); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(filtered); // [12, 130, 44]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518379878535" ID="ID_965954164" MODIFIED="1518379890512">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// filter for valid (numeric) entries from JSON o </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var arr = [ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: 15 }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: -1 }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: 0 }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: 3 }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: 12.2 }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: null }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: NaN }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: 'undefined' } </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var invalidEntries = 0; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function isNumber(obj) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return obj !== undefined &amp;&amp; typeof(obj) === 'number' &amp;&amp; !isNaN(obj); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function filterByID(item) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (isNumber(item.id)) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return true; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;invalidEntries++; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return false; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var arrByID = arr.filter(filterByID); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log('Filtered Array\n', arrByID); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// Filtered Array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// [{ id: 15 }, { id: -1 }, { id: 0 }, { id: 3 }, { id: 12.2 }] </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log('Number of Invalid Entries = ', invalidEntries); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// Number of Invalid Entries = 4 </font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518380030140" ID="ID_1708289088" MODIFIED="1518380042973">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// searching in array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var fruits = ['apple', 'banana', 'grapes', 'mango', 'orange']; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">/** </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;* filterItems filters items based on search criteria (query) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;*/ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function filterItems(query) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return fruits.filter(function(el) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;return el.toLowerCase().indexOf(query.toLowerCase()) &gt; -1; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(filterItems('ap')); // ['apple', 'grapes'] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(filterItems('an')); // ['banana', 'mango', 'orange']</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518374150848" FOLDED="true" ID="ID_1314408942" MODIFIED="1518436720158" TEXT=".forEach(callback[, thisObject])">
<node CREATED="1518374449386" ID="ID_745322967" MODIFIED="1518374452178" TEXT="forEach() executes the callback function once for each array element; unlike map() or reduce() it always returns the value undefined and is not chainable. The typical use case is to execute side effects at the end of a chain."/>
<node CREATED="1518374348911" ID="ID_634436599" MODIFIED="1518436668275">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// executes callback on every array item and returns undefined </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a = ['a', 'b', 'c']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">a.forEach(function(element) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(element); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// a </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// b </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// c </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var colors = ['red', 'green', 'blue']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">colors.forEach(color =&gt; console.log(color)); </font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518374576717" ID="ID_1011425176" MODIFIED="1518374587629">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// print contents of an array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function logArrayElements(element, index, array) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log('a[' + index + '] = ' + element); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// index 2 is skipped since there is no item at that position </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">[2, 5, , 9].forEach(logArrayElements); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// logs: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// a[0] = 2 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// a[1] = 5 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// a[3] = 9</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518374795396" ID="ID_239191077" MODIFIED="1518374816155">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// pass `this` arg into callback each time it's invoked for use as its `this` value</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function Counter() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.sum = 0; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.count = 0; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Counter.prototype.add = function(array) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;array.forEach(function(entry) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;this.sum += entry; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;this.count++; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}, this); // use this same object </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">const obj = new Counter(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">obj.add([2, 5, 9]); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">obj.count; // 3 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">obj.sum; // 16</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518374931328" ID="ID_434419287" MODIFIED="1518375394409">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// object copy function </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function copy(obj) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;const copy = Object.create(Object.getPrototypeOf(obj)); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;const propNames = Object.getOwnPropertyNames(obj); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;propNames.forEach(function(name) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;const desc = Object.getOwnPropertyDescriptor(obj, name); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;Object.defineProperty(copy, name, desc); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return copy; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">const obj1 = { a: 1, b: 2 }; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">const obj2 = copy(obj1); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(obj2) // looks like obj1</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518375381397" ID="ID_476475816" MODIFIED="1518375407934">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// if the array is modified during iteration, other elements might be skipped </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// (forEach() does not make a copy of the array before iterating) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var words = ['one', 'two', 'three', 'four']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">words.forEach(function(word) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(word); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (word === 'two') { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;// remove 'one' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;words.shift(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;// 'four' is now where 'three' was so 'three' is skipped </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// one </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// two </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// four</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518371734454" FOLDED="true" ID="ID_77831033" MODIFIED="1518436724815" TEXT=".indexOf(searchElement[, fromIndex])">
<node CREATED="1518371768519" ID="ID_1798730457" MODIFIED="1518372023192">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// returns the index of the first match (using ===) for searchElement </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a = ['a', 'b', 'a', 'b', 'a']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// search for first instance of 'b' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a.indexOf('b')); // logs 1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// search for first instance of 'b' starting from index 2 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a.indexOf('b', 2)); // logs 3 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a.indexOf('z')); // logs -1, because 'z' was not found</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518372280863" ID="ID_1961714072" MODIFIED="1518374128709">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// find all the occurrences of an element, starting at array beginning </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var indices = []; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var array = ['a', 'b', 'a', 'c', 'a', 'd']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var element = 'a'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var idx = array.indexOf(element); // 0 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">while (idx != -1) { // exit condition: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// if the index is greater than or equal to the array's length, -1 is returned </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;debugger; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;indices.push(idx); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;idx = array.indexOf(element, idx + 1); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(indices); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// [0, 2, 4]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518373647720" ID="ID_1744916929" MODIFIED="1518373666040">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// if element does not exist in the array, add it, else do nothing </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function updateVegetablesCollection (veggies, veggie) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;if (veggies.indexOf(veggie) === -1) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;veggies.push(veggie); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;console.log('New veggies collection is : ' + veggies); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} else if (veggies.indexOf(veggie) &gt; -1) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;console.log(veggie + ' already exists in the veggies collection.'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var veggies = ['potato', 'tomato', 'chillies', 'green-pepper']; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">updateVegetablesCollection(veggies, 'spinach'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// New veggies collection is : potato,tomato,chillies,green-pepper,spinach </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">updateVegetablesCollection(veggies, 'spinach'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// spinach already exists in the veggies collection.</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517387679681" FOLDED="true" ID="ID_1377739646" MODIFIED="1517387788817" TEXT=".join(deliminator)">
<node CREATED="1517387686592" ID="ID_1119647466" MODIFIED="1517387725899">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// joins all elements of an array into a string </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var myArray = new Array('Wind', 'Rain', 'Fire'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var list = myArray.join(' - '); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(list) // // &quot;Wind - Rain - Fire&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518373732636" FOLDED="true" ID="ID_432470301" MODIFIED="1518436731927" TEXT=".lastIndexOf(searchElement[, fromIndex])">
<node CREATED="1518373736027" ID="ID_1657283104" MODIFIED="1518373824979">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// works like indexOf, but starts at the end and searches backwards </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a = ['a', 'b', 'c', 'd', 'a', 'b']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a.lastIndexOf('b')); // logs 5 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// start searching from index/position 4 and look backwards </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a.lastIndexOf('b', 4)); // logs 1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a.lastIndexOf('z')); // logs -1</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518374049829" ID="ID_1512496923" MODIFIED="1518374096672">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// find all the occurrences of an element, starting at array end </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var indices = []; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var array = ['a', 'b', 'a', 'c', 'a', 'd']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var element = 'a'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var idx = array.lastIndexOf(element); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">while (idx != -1) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;indices.push(idx); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// skip idx == 0 because the first matching element will always be found </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;idx = (idx &gt; 0 ? array.lastIndexOf(element, idx - 1) : -1); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(indices); // [4, 2, 0]</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518375779178" FOLDED="true" ID="ID_865674697" MODIFIED="1518436738589" TEXT=".map(callback[, thisObject])">
<node CREATED="1518375809115" ID="ID_612331905" MODIFIED="1518375844313">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// returns new array of return values from executing callback on every array item </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a1 = ['a', 'b', 'c']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a2 = a1.map(function(item) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return item.toUpperCase(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a2); // ['A', 'B', 'C']</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518375887093" ID="ID_598863545" MODIFIED="1518375897996">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var array1 = [1, 4, 9, 16]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">const map1 = array1.map(x =&gt; x * 2); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(map1); // [2, 8, 18, 32]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518376014761" ID="ID_1809372918" MODIFIED="1518376027320">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// map array of numbers to an array of square roots </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var numbers = [1, 4, 9]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var roots = numbers.map(Math.sqrt); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(roots) // [1, 2, 3]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518379007948" ID="ID_397179452" MODIFIED="1518379021403">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// reformat objects in an array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var kvArray = [{key: 1, value: 10}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{key: 2, value: 20}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{key: 3, value: 30}]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var reformattedArray = kvArray.map(obj =&gt;{ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;var rObj = {}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;rObj[obj.key] = obj.value; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;return rObj; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}) </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(reformattedArray) // [{1: 10}, {2: 20}, {3: 30}]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518379156793" ID="ID_590261167" MODIFIED="1518379177686">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// using map generically </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var map = Array.prototype.map; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a = map.call('Hello World', function(x) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return x.charCodeAt(0); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// console.log(a) // [72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100]</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517387777739" FOLDED="true" ID="ID_251557072" MODIFIED="1517387841737" TEXT=".push()">
<node CREATED="1517387797492" ID="ID_105141253" MODIFIED="1517387840018">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// adds one or more elements to the end of an array </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// and returns the resulting length of the array </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var myArray = new Array('1', '2'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myArray.push('3'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(myArray); // [&quot;1&quot;, &quot;2&quot;, &quot;3&quot;]</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517387984482" FOLDED="true" ID="ID_1845287321" MODIFIED="1517388022588" TEXT=".pop()">
<node CREATED="1517387988522" ID="ID_189225550" MODIFIED="1517388016901">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// removes the last element from an array </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// and returns that element </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var myArray = new Array('1', '2', '3'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var last = myArray.pop(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(myArray); // [&quot;1&quot;, &quot;2&quot;] </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(last); // &quot;3&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518432116791" FOLDED="true" ID="ID_535404122" MODIFIED="1518436756983" TEXT=".reduce(callback[, initialValue])">
<node CREATED="1518432496499" ID="ID_800885465" MODIFIED="1518432698330" TEXT="The reduce() method applies a function against an accumulator and each element in the array (from left to right) to reduce it to a single value."/>
<node CREATED="1518432699547" ID="ID_1206450953" MODIFIED="1518432705444" TEXT="The first time the callback is called, accumulator and currentValue can be one of two values. If initialValue is provided in the call to reduce(), then accumulator will be equal to initialValue, and currentValue will be equal to the first value in the array. If no initialValue is provided, then accumulator will be equal to the first value in the array, and currentValue will be equal to the second."/>
<node CREATED="1518432589294" ID="ID_1767826432" MODIFIED="1518432640959">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var a = [10, 20, 30]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var total = a.reduce(function(accumulator, currentValue) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return first + second; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}, 0); // initialValue = 0 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(total) // 60 (0 + 10 + 20 + 30)</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518432180097" ID="ID_1179403395" MODIFIED="1518432527074">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">const array1 = [1, 2, 3, 4]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">const reducer = (accumulator, currentValue) =&gt; accumulator + currentValue; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(array1.reduce(reducer)); // 10 (1 + 2 + 3 + 4) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(array1.reduce(reducer, 5)); // 15 (5 + 1 + 2 + 3 + 4)</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518433095221" ID="ID_261295162" MODIFIED="1518433221901">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">[0, 1, 2, 3, 4].reduce((prev, curr) =&gt; prev + curr, 10); // 20</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518432683480" ID="ID_1432783068" MODIFIED="1518432819208" TEXT="If the array is empty and no initialValue is provided, TypeError will be thrown. If the array has only one element (regardless of position) and no initialValue is provided, or if initialValue is provided but the array is empty, the solo value will be returned without calling callback."/>
<node CREATED="1518432821596" ID="ID_240977878" MODIFIED="1518432848621" TEXT="It is usually safer to provide an initial value because there are three possible outputs without initialValue, as shown in the following example."/>
<node CREATED="1518432854885" ID="ID_1830041547" MODIFIED="1518432866641">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var maxCallback = ( acc, cur ) =&gt; Math.max( acc.x, cur.x ); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var maxCallback2 = ( max, cur ) =&gt; Math.max( max, cur ); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// reduce() without initialValue </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">[ { x: 22 }, { x: 42 } ].reduce( maxCallback ); // 42 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">[ { x: 22 }&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;].reduce( maxCallback ); // { x: 22 } </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">[&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;].reduce( maxCallback ); // TypeError </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// map/reduce; better solution, also works for empty or larger arrays </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">[ { x: 22 }, { x: 42 } ].map( el =&gt; el.x ) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.reduce( maxCallback2, -Infinity );</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518433337140" ID="ID_26982216" MODIFIED="1518433348883">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// flatten an array of arrays </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var flattened = [[0, 1], [2, 3], [4, 5]].reduce( </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;function(a, b) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return a.concat(b); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;[] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">/* </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var flattened = [[0, 1], [2, 3], [4, 5]].reduce( </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;(acc, cur) =&gt; acc.concat(cur), </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;[] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">*/ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(flattened) // [0, 1, 2, 3, 4, 5]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518433446935" ID="ID_1465878068" MODIFIED="1518433457961">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// count instances of values in an object </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var names = ['Alice', 'Bob', 'Tiff', 'Bruce', 'Alice']; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var countedNames = names.reduce(function (allNames, name) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (name in allNames) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;allNames[name]++; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;else { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;allNames[name] = 1; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return allNames; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}, {}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(countedNames); // { 'Alice': 2, 'Bob': 1, 'Tiff': 1, 'Bruce': 1 }</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518433649186" ID="ID_1567238569" MODIFIED="1518433681613">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// bonding arrays using the spread operator and initialValue </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var friends = [{ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;name: 'Anna', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;books: ['Bible', 'Harry Potter'], </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;age: 21 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}, { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;name: 'Bob', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;books: ['War and peace', 'Romeo and Juliet'], </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;age: 26 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}, { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;name: 'Alice', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;books: ['The Lord of the Rings', 'The Shining'], </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;age: 18 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var allbooks = friends.reduce(function(prev, curr) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return [...prev, ...curr.books]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}, ['Alphabet']); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(allbooks); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// ['Alphabet', 'Bible', 'Harry Potter', 'War and peace', 'Romeo and Juliet', 'The Lord of the Rings', 'The Shining']</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518433771006" ID="ID_1077938527" MODIFIED="1518433787947">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// remove duplicate items in array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">let arr = [1, 2, 1, 2, 3, 5, 4, 5, 3, 4, 4, 4, 4]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">let result = arr.sort().reduce((init, current) =&gt; { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;if (init.length === 0 || init[init.length - 1] !== current) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;init.push(current); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return init; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}, []); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(result); // [1, 2, 3, 4, 5]</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518433886129" FOLDED="true" ID="ID_1530478043" MODIFIED="1518436759336" TEXT=".reduceRight(callback[, initialValue])">
<node CREATED="1518433890153" ID="ID_71140237" MODIFIED="1518433940746" TEXT="The reduceRight() method applies a function against an accumulator and each value of the array (from right-to-left) to reduce it to a single value."/>
<node CREATED="1518433985156" ID="ID_437662668" MODIFIED="1518434278138">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// flatten array of arrays (right to left) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">const array1 = [[0, 1], [2, 3], [4, 5]].reduceRight( </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;(previousValue, currentValue) =&gt; previousValue.concat(currentValue) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// flatten array of array (left to right) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">const array2 = [[0, 1], [2, 3], [4, 5]].reduce( </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;(previousValue, currentValue) =&gt; previousValue.concat(currentValue) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(array1); // [4, 5, 2, 3, 0, 1] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(array2); // [0, 1, 2, 3, 4, 5]</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517388762202" FOLDED="true" ID="ID_375042190" MODIFIED="1518436749143" TEXT=".reverse()">
<node CREATED="1517388767530" ID="ID_823344994" MODIFIED="1517388782886">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// transposes the elements of an array, in place: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// the first element becomes the last and the last becomes the first </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// and returns a reference to the array </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var myArray = new Array('1', '2', '3'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myArray.reverse(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(myArray); // [&quot;3&quot;, &quot;2&quot;, &quot;1&quot;]</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517388023835" FOLDED="true" ID="ID_1451913062" MODIFIED="1518375419024" TEXT=".shift()">
<node CREATED="1517388080349" ID="ID_1778679617" MODIFIED="1517388099173">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// removes the first element from an array and returns that element </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var myArray = new Array('1', '2', '3'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var first = myArray.shift(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(myArray); // [&quot;2&quot;, &quot;3&quot;] </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(first); // &quot;1&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517388281178" FOLDED="true" ID="ID_769695724" MODIFIED="1518436741567" TEXT=".slice(startIndex, endButNotIncludingIndex)">
<node CREATED="1517388284843" ID="ID_595939144" MODIFIED="1517388346507">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// extracts a section of an array and returns a new array </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var myArray = new Array('a', 'b', 'c', 'd', 'e'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myArray = myArray.slice(1, 4); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(myArray); // [ &quot;b&quot;, &quot;c&quot;, &quot;d&quot;]</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518431473575" FOLDED="true" ID="ID_495286391" MODIFIED="1518436754543" TEXT=".some(callback[, thisObject])">
<node CREATED="1518431642756" ID="ID_271507918" MODIFIED="1518431711423" TEXT="Returns true if the callback function returns a truthy value for at least one array item; else, false "/>
<node CREATED="1518431515368" ID="ID_1709963627" MODIFIED="1518431674110">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function isNumber(value) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return typeof value === 'number'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var a1 = [1, 2, 3]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a1.some(isNumber)); // true </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a2 = [1, '2', 3]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a2.some(isNumber)); // true </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a3 = ['1', '2', '3']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(a3.some(isNumber)); // false</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518431584746" ID="ID_1860093010" MODIFIED="1518431599381">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var array = [1, 2, 3, 4, 5]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var even = function(element) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return element % 2 === 0; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(array.some(even)); // true</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518431913979" ID="ID_1852412530" MODIFIED="1518432002706">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// checking whether a value exists in an array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// mimics Array.prototype.includes() </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var fruits = ['apple', 'banana', 'mango', 'guava']; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function checkAvailability(arr, val) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return arr.some(function(arrVal) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return val === arrVal; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">/* </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function checkAvailability(arr, val) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return arr.some(arrVal =&gt; val === arrVal); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">*/</font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">checkAvailability(fruits, 'kela');&#160;&#160;&#160;// false </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">checkAvailability(fruits, 'banana'); // true</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518432080110" ID="ID_1928290517" MODIFIED="1518432091423">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// converting any value to Boolean </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var TRUTHY_VALUES = [true, 'true', 1]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function getBoolean(value) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;'use strict'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (typeof value === 'string') { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;value = value.toLowerCase().trim(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return TRUTHY_VALUES.some(function(t) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return t === value; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">getBoolean(false);&#160;&#160;&#160;// false </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">getBoolean('false'); // false </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">getBoolean(1);&#160;&#160;&#160;&#160;&#160;&#160;&#160;// true </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">getBoolean('true');&#160;&#160;// true</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517388787794" FOLDED="true" ID="ID_1678541826" MODIFIED="1518436751959" TEXT=".sort([compareFunction])">
<node CREATED="1518370204789" ID="ID_880525837" MODIFIED="1518370246514">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">Sorts the elements of an array in place (no copy is made), and returns a reference to the array. If a compareFunction is not supplied, elements are sorted by converting them to strings and comparing strings in Unicode code point order.</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518369828513" ID="ID_1815305603" MODIFIED="1518370203241">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var months = ['March', 'Jan', 'Feb', 'Dec']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">months.sort(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(months); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// [&quot;Dec&quot;, &quot;Feb&quot;, &quot;Jan&quot;, &quot;March&quot;]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518369859154" ID="ID_1668978001" MODIFIED="1518370203262">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var array1 = [1, 30, 4, 21]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">array1.sort(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(array1); // [1, 21, 30, 4]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1517388832452" ID="ID_302349398" MODIFIED="1518370198663">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var myArray = new Array('Wind', 'Rain', 'Fire'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">myArray.sort(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(myArray); // [&quot;Fire&quot;, &quot;Rain&quot;, &quot;Wind&quot;]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1517388903597" FOLDED="true" ID="ID_324445671" MODIFIED="1518370775927">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// sort() with callback function </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var myArray = new Array('Wind', 'Rain', 'Fire'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// sort by the last letter of a string&#160; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var sortFn = function(a, b) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;if (a[a.length - 1] &lt; b[b.length - 1]) return -1; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;if (a[a.length - 1] &gt; b[b.length - 1]) return 1; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;if (a[a.length - 1] == b[b.length - 1]) return 0; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myArray.sort(sortFn); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(myArray); // [&quot;Wind&quot;,&quot;Fire&quot;,&quot;Rain&quot;]</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1518370009647" ID="ID_830624014" MODIFIED="1518370082250">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      If compareFunction is supplied, the array elements are sorted according to the return value of the compare function. If a and b are two elements being compared, then:
    </p>
    <p>
      
    </p>
    <p>
      - If compareFunction(a, b) is less than 0, sort a to an index lower than b, i.e. a comes first.
    </p>
    <p>
      
    </p>
    <p>
      - If compareFunction(a, b) returns 0, leave a and b unchanged with respect to each other, but sorted with respect to all different elements.
    </p>
    <p>
      
    </p>
    <p>
      - If compareFunction(a, b) is greater than 0, sort b to an index lower than a, i.e. b comes first.
    </p>
    <p>
      
    </p>
    <p>
      - compareFunction(a, b) must always return the same value when given a specific pair of elements a and b as its two arguments. If inconsistent results are returned then the sort order is undefined.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518370088198" ID="ID_1735778378" MODIFIED="1518370126382">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function compare(a, b) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (a is less than b by some ordering criterion) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return -1; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (a is greater than b by the ordering criterion) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return 1; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// a must be equal to b </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return 0; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518370255583" ID="ID_622997099" MODIFIED="1518370694962">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// use debugger to step through sorting </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var numbers = [4, 2, 5, 1, 3]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">numbers.sort(function(a, b) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;debugger;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return a - b; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(numbers); // [1, 2, 3, 4, 5]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518370777496" ID="ID_1545782812" MODIFIED="1518370833759">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// sort objects by value property </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var items = [ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ name: 'Edward', value: 21 }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ name: 'Sharpe', value: 37 }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ name: 'And', value: 45 }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ name: 'The', value: -12 }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ name: 'Magnetic', value: 13 }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ name: 'Zeros', value: 37 } </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// sort by value </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">items.sort(function (a, b) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return a.value - b.value; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// sort by name </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">items.sort(function(a, b) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var nameA = a.name.toUpperCase(); // ignore upper and lowercase </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var nameB = b.name.toUpperCase(); // ignore upper and lowercase </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (nameA &lt; nameB) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return -1; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (nameA &gt; nameB) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return 1; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// names must be equal </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return 0; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">});</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518371120898" ID="ID_1207834423" MODIFIED="1518371137027">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// String.localeCompare compares non-english characters so they appear in the right order </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var items = ['r&#233;serv&#233;', 'premier', 'clich&#233;', 'communiqu&#233;', 'caf&#233;', 'adieu']; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">items.sort(function (a, b) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return a.localeCompare(b); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// console.log(items) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// ['adieu', 'caf&#233;', 'clich&#233;', 'communiqu&#233;', 'premier', 'r&#233;serv&#233;']</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518371604690" ID="ID_126155276" MODIFIED="1518371672831">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// using map to process sorted temp arrays </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// original array to be sorted </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var list = ['Delta', 'alpha', 'CHARLIE', 'bravo']; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// temp array holds objects with index/position and sort-value </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var mapped = list.map(function(el, i) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return { index: i, value: el.toLowerCase() }; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}) </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// sorting the mapped array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">mapped.sort(function(a, b) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (a.value &gt; b.value) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return 1; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (a.value &lt; b.value) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return -1; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return 0; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// use index/position to get element from original array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var result = mapped.map(function(el) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return list[el.index]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517388667039" FOLDED="true" ID="ID_961756293" MODIFIED="1518436743635" TEXT=".splice(index, removeCount, addElement1, addElementN, ...)">
<node CREATED="1517388681423" ID="ID_246538233" MODIFIED="1517388696085">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// removes elements from an array and (optionally) replaces them </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// and returns the items which were removed from the array </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var myArray = new Array('1', '2', '3', '4', '5'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myArray.splice(1, 3, 'a', 'b', 'c', 'd'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(myArray); // [&quot;1&quot;, &quot;a&quot;, &quot;b&quot;, &quot;c&quot;, &quot;d&quot;, &quot;5&quot;]</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517388102230" FOLDED="true" ID="ID_325809637" MODIFIED="1518371749320" TEXT=".unshift()">
<node CREATED="1517388155894" ID="ID_544960342" MODIFIED="1517388172768">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// adds one or more elements to the front of an array </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// and returns the new length of the array. </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var myArray = new Array('1', '2', '3'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myArray.unshift('4', '5'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(myArray); // [&quot;4&quot;, &quot;5&quot;, &quot;1&quot;, &quot;2&quot;, &quot;3&quot;]</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1515061449910" FOLDED="true" ID="ID_800361885" MODIFIED="1517387470475" TEXT="Scope">
<node CREATED="1515067286756" ID="ID_1943571194" MODIFIED="1515072008339" TEXT="Variable Scopes: &#xa;- Local: can see `this`, return, and any variables declared within the function &#xa;- Closure: can see any variables declared within the enclosing function &#xa;- Global: can see all global variables attached to the global object"/>
<node CREATED="1515061467256" ID="ID_63667961" MODIFIED="1515061470204" TEXT="Only functions create a new scope."/>
<node CREATED="1515061485984" ID="ID_18324812" MODIFIED="1515061487155" TEXT="Global Scope is the outermost scope. Variables declared outside a function are in the global scope and can be accessed in any other scope. In a browser, the window object is the global scope."/>
<node CREATED="1515061504753" ID="ID_890299990" MODIFIED="1515061853129" TEXT="Local Scope (or function scope) is a scope nested inside another function scope. Variables declared in a local scope are accessible within this scope as well as in any inner scopes."/>
<node CREATED="1515061529569" ID="ID_610089069" MODIFIED="1515061617519">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function outer() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;let a = 1; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;function inner() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;let b = 2; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;function innermost() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;let c = 3; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;console.log(a, b, c); // 1 2 3 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;innermost(); // 1 2 3 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(a, b); // 1 2 - c is out of scope </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;inner(); // 1 2 3 1 2 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(a); // 1 - b and c are out of scope </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">outer(); // 1 2 3 1 2 1</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515061752600" FOLDED="true" ID="ID_1444466964" MODIFIED="1515062562230" TEXT="Block Scoping (ES6)">
<node CREATED="1515061763512" ID="ID_1760202175" MODIFIED="1515061764643" TEXT="Block scoping simply says: I want to be able to treat a { .. } block as a scope, without having to make a new function to encapsulate that scope."/>
<node CREATED="1515061779585" ID="ID_1144372733" MODIFIED="1515061818375" TEXT="The scope of a variable defined with `var` has function scope, or when declared outside any function, global scope.&#xa;&#xa;The scope of a variable defined with `let` has block scope (and makes a scope out of the block in which it is declared). &#xa;&#xa;See worked example in Closures section."/>
<node CREATED="1515061889203" ID="ID_462876918" MODIFIED="1515062506075">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">if (a) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// some code </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// make an explicit scope block </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ let b, c; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;// more code </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;b = 10; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;// more code </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;c = 1000; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;// more code </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;if (b &gt; 3) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;// more code </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;console.log(b + c); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;// more code </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// more code </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515062576427" FOLDED="true" ID="ID_1802195164" MODIFIED="1515063533957" TEXT="Hoisting">
<node CREATED="1515063251929" ID="ID_1324176735" MODIFIED="1515063339413" TEXT="The behavior of moving`var` and function declarations to the top of their respective scopes during the compilation phase is called hoisting. Hoisting enables the use of `var` before it has been defined. &#xa;&#xa;- Function declarations are completely hoisted. This means that a declared function can be called before it is defined. &#xa;&#xa;- Variables are partially hoisted. A `var` declaration is hoisted but not its assignments.&#xa;&#xa;- `let` and `const` are not hoisted.  "/>
<node CREATED="1515063465080" FOLDED="true" ID="ID_1071525677" MODIFIED="1515063529717" TEXT="Variables">
<node CREATED="1515062581547" FOLDED="true" ID="ID_165405180" MODIFIED="1515063067355">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Variable declarations get hoisted to the top of their scope, but their assignment does not.
    </p>
  </body>
</html></richcontent>
<node CREATED="1515062614268" ID="ID_1520154880" MODIFIED="1515062706672">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// creating a variable declaration after&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// referencing the variable will work due to </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// variable hoisting. Note: the assignment </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// value of `true` is not hoisted. </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function example() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(declaredButNotAssigned); // =&gt; undefined </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var declaredButNotAssigned = true; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// The interpreter is hoisting the variable </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// declaration to the top of the scope, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// which means our example could be rewritten as: </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function example() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var declaredButNotAssigned; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(declaredButNotAssigned); // =&gt; undefined </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;declaredButNotAssigned = true; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515063469704" FOLDED="true" ID="ID_1184147550" MODIFIED="1515063528385" TEXT="Functions">
<node CREATED="1515063398014" ID="ID_1182914432" MODIFIED="1515063509708">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Function Expression vs. Function Declaration
    </p>
    <p>
      
    </p>
    <p>
      - A function expression is created when the execution reaches it and is usable from then on.&#8202;It is not hoisted.
    </p>
    <p>
      
    </p>
    <p>
      - A function declaration can be called both before and after it was defined.&#8202;It is hoisted.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515063167873" FOLDED="true" ID="ID_718986676" MODIFIED="1515063514465" TEXT="Function declarations hoist their name and the function body.">
<node CREATED="1515062934358" ID="ID_187981109" MODIFIED="1515063206137">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function example() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;superPower(); // =&gt; Flying </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;function superPower() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(&quot;Flying&quot;); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515062803058" FOLDED="true" ID="ID_566808974" MODIFIED="1515063156824" TEXT="Named function expressions hoist the variable name, not the function name or the function body.">
<node CREATED="1515062945287" ID="ID_1504531767" MODIFIED="1515063022126">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// before hoisting </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function example() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(named); // =&gt; undefined </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;named(); // =&gt; TypeError named is not a function </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;superPower(); // =&gt; ReferenceError superPower is not defined </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var named = function superPower() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(&quot;Flying&quot;); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// after hoisting </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function example() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var named; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(named); // =&gt; undefined </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;named(); // =&gt; TypeError named is not a function </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;superPower(); // =&gt; ReferenceError superPower is not defined </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var named = function superPower() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(&quot;Flying&quot;); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515063114125" ID="ID_111416025" MODIFIED="1515063144155">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// the same is true when the function name </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// is the same as the variable name. </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function example() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(named); // =&gt; undefined </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;named(); // =&gt; TypeError named is not a function </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var named = function named() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(&quot;named&quot;); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515062721631" FOLDED="true" ID="ID_874015026" MODIFIED="1515063068545" TEXT="Anonymous function expressions hoist their variable name, but not the function assignment.">
<node CREATED="1515062740768" ID="ID_442298809" MODIFIED="1515062895537">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// before hoisting </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function example() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(anonymous); // =&gt; undefined </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;anonymous(); // =&gt; TypeError anonymous is not a function </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var anonymous = function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(&quot;anonymous function expression&quot;); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// after hoisting </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function example() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var anonymous;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(anonymous); // =&gt; undefined </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;anonymous(); // =&gt; TypeError anonymous is not a function </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;anonymous = function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(&quot;anonymous function expression&quot;); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1515063541043" FOLDED="true" ID="ID_1668513907" MODIFIED="1517387174124" TEXT="Variables">
<node CREATED="1515171525973" ID="ID_820359785" MODIFIED="1515171543360" TEXT="Global variables are properties of the global object. "/>
<node CREATED="1515063555933" ID="ID_1222289185" MODIFIED="1515171608802" TEXT="`var`, `let` and `const` (read only)">
<node CREATED="1515063577356" FOLDED="true" ID="ID_1153837002" MODIFIED="1515067124647" TEXT="Before ES6, it was only possible to declare a variable using `var`. Variables and functions declared inside another function cannot be accessed by any of the enclosing scopes; they are function-scoped. `var` (but not `let`) variables declared inside a block-scope, such as if statements and for loops, can be accessed from outside of the opening and closing curly braces of the block. Note: An undeclared variable&#x200a;assignment without `var`, `let` or `const`,&#x200a;creates a `var` variable in global scope.">
<node CREATED="1515066635329" ID="ID_1308523659" MODIFIED="1515066834677">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function greeting() { &#160;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (true) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;var s = &quot;Hi&quot;; // visible at internal call to console.log(s) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;undeclaredVar = &quot;I am automatically created in global scope&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(s); // 'Hi' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(s);&#160;// Error &#8212; ReferenceError: s is not defined </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">greeting(); // 'Hi' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(undeclaredVar); // 'I am automatically created in global scope'</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515066860310" FOLDED="true" ID="ID_801711238" MODIFIED="1515067125728" TEXT="ES6 `let` and `const` are new. They are not hoisted and are block-scoped alternatives for variable declaration. This means that a pair of curly braces define a scope in which variables declared with either `let` or `const` are confined within.">
<node CREATED="1515066886319" ID="ID_761412030" MODIFIED="1515067078015">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">let g1 = &quot;global 1&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">let g2 = &quot;global 2&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">/* Creating a new block scope */ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">{ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;g1 = &quot;new global 1&quot;; // create var in global scope </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;let g2 = &quot;local global 2&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(g1); // 'new global 1' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(g2); // 'local global 2' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(g3); // ReferenceError: g3 is not defined </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;let g3 = &quot;I am not hoisted&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(g1); // 'new global 1' - var was created in global scope </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(g2); // 'global 2' - g2 was re-assigned but only within block scope</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515171610889" ID="ID_1576986263" MODIFIED="1515171625098" TEXT="A `const` cannot change value through assignment or be re-declared while the script is running. It has to be initialized to a value.  "/>
<node CREATED="1515067122407" FOLDED="true" ID="ID_1298753881" MODIFIED="1515067220560" TEXT="A common misconception is that `const` is immutable. It cannot be reassigned, but its properties can be changed.">
<node CREATED="1515067141239" ID="ID_911686439" MODIFIED="1515067158830">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">const tryMe = &quot;initial assignment&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">tryMe = &quot;this has been reassigned&quot;; // TypeError: Assignment to constant variable. </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// You cannot reassign but you can change it... </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">const array = [&quot;Ted&quot;, &quot;is&quot;, &quot;awesome!&quot;]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">array[0] = &quot;Barney&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">array[3] = &quot;Suit up!&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(array); // [&#8220;Barney&#8221;, &#8220;is&#8221;, &#8220;awesome!&#8221;, &#8220;Suit up!&#8221;] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">const airplane = {}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">airplane.wings = 2; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">airplane.passengers = 200; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(airplane); // {passengers: 200, wings: 2}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1515176515594" FOLDED="true" ID="ID_1901996144" MODIFIED="1517387369973" TEXT="Loops">
<node CREATED="1515177056552" FOLDED="true" ID="ID_155613686" MODIFIED="1517387368634" TEXT="continue">
<node CREATED="1515177061102" ID="ID_1537253232" MODIFIED="1517387366220">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">var i = 0; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var n = 0; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">while (i &lt; 5) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;i++; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;if (i == 3) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;continue; // go back to while statement and continue </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;n += i; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// n&#160;takes on the values 1, 3, 7, and 12</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515176524667" FOLDED="true" ID="ID_1558553800" MODIFIED="1517387309377" TEXT="for...in vs for...of">
<node CREATED="1515176527983" ID="ID_1024962067" MODIFIED="1515177405144">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// for...in interates over&#160;property names </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var car = { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;make: 'Ford', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;model: 'Mustang' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function dump_props(obj, obj_name) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var result = ''; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;for (var i in obj) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;result += obj_name + '.' + i + ' = ' + obj[i] + '&lt;br&gt;'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;result += '&lt;hr&gt;'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return result; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">dump_props(car, 'car'); // car.make = Ford&lt;br&gt;car.model = Mustang&lt;br&gt;&lt;hr&gt;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515177289984" ID="ID_1577997196" MODIFIED="1517387294374">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// for...of interates over property values </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var arr = [3, 5, 7]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">arr.foo = 'hello'; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">for (var i in arr) { // property names</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;console.log(i); // logs &quot;0&quot;, &quot;1&quot;, &quot;2&quot;, &quot;foo&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">for (var i of arr) { // property values</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;console.log(i); // logs 3, 5, 7 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515087668705" FOLDED="true" ID="ID_1107451607" MODIFIED="1518375378101" TEXT="Functions">
<node CREATED="1515245878852" ID="ID_553206486" MODIFIED="1515684169289" TEXT="In JS, functions are Function objects and first-class objects: they can have properties and methods just like any other object. What distinguishes them from other objects is that functions can be called."/>
<node CREATED="1515247305802" FOLDED="true" ID="ID_32018720" MODIFIED="1515765356273" TEXT="Function Object">
<node CREATED="1515247440525" FOLDED="true" ID="ID_570300600" MODIFIED="1515684127364" TEXT="Constructor">
<node CREATED="1515247458430" ID="ID_115823839" MODIFIED="1515247541825">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// new Function ([arg1[, arg2[, ...argN]],] functionBody) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var sum = new Function('a', 'b', 'return a + b'); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(sum(2, 6)); // 8</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515247314125" ID="ID_164992837" MODIFIED="1515594428351" TEXT="Properties">
<node CREATED="1515247341034" FOLDED="true" ID="ID_1453316831" MODIFIED="1515765212718" TEXT="Function.arguments">
<node CREATED="1515254687424" ID="ID_1615177474" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/arguments" MODIFIED="1515254749168" TEXT="Deprecated and forbidden in strict model (MDN)"/>
</node>
<node CREATED="1515247347834" FOLDED="true" ID="ID_257959524" MODIFIED="1515765226093" TEXT="Function.caller">
<node CREATED="1515679700885" ID="ID_1578833447" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/caller" MODIFIED="1515765223155" TEXT="Non-standard: The function.caller property returns the function that invoked the specified function. This property is forbidden in strict model due to tail call optimization. (MDN)"/>
</node>
<node CREATED="1515247355154" FOLDED="true" ID="ID_845979091" MODIFIED="1515679777858" TEXT="Function.displayName">
<node CREATED="1515679744655" ID="ID_1078823500" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/displayName" MODIFIED="1515679776770" TEXT="Non-standard: The function.displayName property returns the display name of the function."/>
</node>
<node CREATED="1515247369691" FOLDED="true" ID="ID_409108434" MODIFIED="1515680203477" TEXT="Function.length">
<node CREATED="1515679979778" ID="ID_1671236410" MODIFIED="1515680013918" TEXT="`length` is a property of a function object, and indicates how many arguments the function expects, i.e. the number of formal parameters. This number excludes the `rest` parameter and only includes parameters before the first one with a default value. By contrast, `arguments.length` is local to a function and provides the number of arguments actually passed to the function."/>
<node CREATED="1515679832177" ID="ID_1311890636" MODIFIED="1515679976905">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">function func1() {} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function func2(a, b) {} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(func1.length); // expected output: 0 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(func2.length); // expected output: 2</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515680046664" ID="ID_1945597273" MODIFIED="1515680192634">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      console.log(Function.length); // 1
    </p>
    <p>
      console.log(Function.prototype.length // 0
    </p>
    <p>
      console.log((function() {}).length); // 0
    </p>
    <p>
      console.log((function(a) {}).length); // 1
    </p>
    <p>
      console.log((function(a, b) {}).length); // 2
    </p>
    <p>
      console.log((function(...args) {}).length); // 0, rest parameter is not counted
    </p>
    <p>
      console.log((function(a, b = 1, c) {}).length); // 1
    </p>
    <p>
      // only parms before the first with default value are counted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515247376179" FOLDED="true" ID="ID_312723702" MODIFIED="1515764669030" TEXT="Function.name">
<node CREATED="1515680224821" ID="ID_1806224550" MODIFIED="1515684190919" TEXT="Indicates the function&apos;s name as specified when it was created, or &quot;anonymous&quot; if unnamed."/>
<node CREATED="1515764469825" ID="ID_1381094154" MODIFIED="1515764476881" TEXT="Property is read-only"/>
<node CREATED="1515764635148" ID="ID_551768589" MODIFIED="1515764649459">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// symbols as function names </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var sym1 = Symbol(&quot;foo&quot;); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var sym2 = Symbol(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var o = { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;[sym1]: function(){}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;[sym2]: function(){} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">o[sym1].name; // &quot;[foo]&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">o[sym2].name; // &quot;&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515247382874" FOLDED="true" ID="ID_1155850368" MODIFIED="1515764726326" TEXT="Function.prototype">
<node CREATED="1515764716943" ID="ID_1134744078" MODIFIED="1515764723638" TEXT="Function objects inherit from Function.prototype. Function.prototype cannot be modified."/>
</node>
</node>
<node CREATED="1515247389947" ID="ID_1867912339" MODIFIED="1515594432078" TEXT="Methods">
<node CREATED="1515247399860" FOLDED="true" ID="ID_687300584" MODIFIED="1515765228339" TEXT="Function.prototype.apply()">
<node CREATED="1515764916801" ID="ID_1385191422" MODIFIED="1515765081139" TEXT=".apply() calls a function with a given `this` value, and arguments provided as an array or an array-like object. (See &apos;Context&apos; section for more information on `this`.)"/>
</node>
<node CREATED="1515247405629" FOLDED="true" ID="ID_1814806777" MODIFIED="1515765229202" TEXT="Function.prototype.bind()">
<node CREATED="1515765049517" ID="ID_157692576" MODIFIED="1515765086329" TEXT=".bind() method creates a new function that, when called, has its `this` set to the provided value, with a given sequence of arguments preceding any provided when the new function is called. (See &apos;Context&apos; section for more information on `this`.)"/>
</node>
<node CREATED="1515247413310" FOLDED="true" ID="ID_367108762" MODIFIED="1515765230075" TEXT="Function.prototype.call()">
<node CREATED="1515764916801" ID="ID_289922357" MODIFIED="1515765073762" TEXT=".call() calls a function with a given `this` value, and arguments provided individually. (See &apos;Context&apos; section for more information on `this`.)"/>
</node>
<node CREATED="1515247419181" FOLDED="true" ID="ID_15122313" MODIFIED="1515765224178" TEXT="Function.prototype.toSource()">
<node CREATED="1515765165922" ID="ID_816209580" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/toSource" MODIFIED="1515765206850" TEXT="Non-standard: .toSource() method returns a string representing the source code of the object. (MDN)"/>
</node>
<node CREATED="1515247431149" FOLDED="true" ID="ID_486732091" MODIFIED="1515765353433" TEXT="Function.prototype.toString()">
<node CREATED="1515765258222" ID="ID_1518739216" MODIFIED="1515765262352" TEXT=".toString() method returns a string representing the source code of the function."/>
<node CREATED="1515765318648" ID="ID_113305294" MODIFIED="1515765343232">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function sum(a, b) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return a + b; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(sum.toString()); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// expected output: &quot;function sum(a, b) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">//&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return a + b; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">//&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}&quot; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(Math.abs.toString()); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// expected output: &quot;function abs() { [native code] }&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1515241263533" FOLDED="true" ID="ID_272643754" MODIFIED="1515678621103" TEXT="Parameters">
<node CREATED="1515241275398" ID="ID_1454346779" MODIFIED="1515241276405" TEXT="Primitive parameters (such as a number) are passed to functions by value"/>
<node CREATED="1515241286183" ID="ID_1663249388" MODIFIED="1515241365765" TEXT="Non-primitive parameters (such as array or object) are passed by reference"/>
<node CREATED="1515255718524" FOLDED="true" ID="ID_1376507722" MODIFIED="1515668230600" TEXT="Default Parameters (ES6)">
<node CREATED="1515256282159" ID="ID_1015245827" MODIFIED="1515256336459">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// previous strategy to set default params: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function multiply(a, b) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;b = typeof b !== 'undefined' ?&#160;&#160;b : 1;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return a * b; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// ES6 default params: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function multiply(a, b = 1) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return a * b; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515256480396" ID="ID_614632290" MODIFIED="1515256502474">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// passing undefined vs. other falsy values </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function test(num = 1) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(typeof num); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">test();&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// 'number' (num is set to 1) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">test(undefined); // 'number' (num is set to 1 too) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">test('');&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// 'string' (num is set to '') </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">test(null);&#160;&#160;&#160;&#160;&#160;&#160;// 'object' (num is set to null)</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515257303792" ID="ID_359079092" MODIFIED="1515257376293">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// default parameters are available to later default parameters </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function singularAutoPlural(singular, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;plural = singular + 's', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;rallyingCry = plural + ' ATTACK!!!') { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return [singular, plural, rallyingCry]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">singularAutoPlural('Gecko'); // [&quot;Gecko&quot;, &quot;Geckos&quot;, &quot;Geckos ATTACK!!!&quot;] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">singularAutoPlural('Fox', 'Foxes'); // [&quot;Fox&quot;, &quot;Foxes&quot;, &quot;Foxes ATTACK!!!&quot;] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">singularAutoPlural('Deer', 'Deer', 'Deer') // [&quot;Deer&quot;, &quot;Deer&quot;, &quot;Deer&quot;] </font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515255730084" FOLDED="true" ID="ID_415866834" MODIFIED="1515668234037" TEXT="Rest Parameters (ES6)">
<node CREATED="1515257852095" ID="ID_1380152912" MODIFIED="1515257861029" TEXT="The rest parameter syntax allows us to represent an indefinite number of arguments as an array."/>
<node CREATED="1515257906193" ID="ID_1020154005" MODIFIED="1515258079660">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// collect arguments from the second arg to last into an array </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// then use map() to multiply each item by the first argument</font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function multiply(multiplier, ...theArgs) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return theArgs.map(x =&gt; multiplier * x); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var arr = multiply(2, 1, 2, 3);</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(arr); // [2, 4, 6]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515258240580" ID="ID_1742026447" MODIFIED="1515258290179" TEXT="There are three main differences between rest parameters and the arguments object: &#xa; &#xa;- rest parameters are only the ones that haven&apos;t been given a separate name, while the `arguments` object contains all arguments passed to the function; &#xa;&#xa;- the `arguments` object is not a real array, while rest parameters are Array instances, meaning methods like `sort`, `map`, `forEach` or `pop` can be applied on it directly; &#xa;&#xa;- the `arguments` object has additional functionality specific to itself (like the `callee` property)."/>
<node CREATED="1515258312021" ID="ID_1416937691" MODIFIED="1515258577799" TEXT="Rest parameters have been introduced to reduce the boilerplate code that was induced by converting the arguments object into an array: var argsAsRealArray = Array.prototype.slice.call(arguments, 1); "/>
<node CREATED="1515265622166" ID="ID_1011353333" MODIFIED="1515265642920">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// destructured parameters: </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function f(...[a, b, c]) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return a + b + c; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">f(1)&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// NaN (b and c are undefined) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">f(1, 2, 3)&#160;&#160;&#160;&#160;// 6 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">f(1, 2, 3, 4) // 6 (the fourth parameter is not destructured)</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515254276721" FOLDED="true" ID="ID_685152830" MODIFIED="1515764799140" TEXT="Arguments Object">
<node CREATED="1515254370196" ID="ID_803957243" MODIFIED="1515254898519" TEXT="The arguments of a function are maintained in an array-like object (arguments[0], arguments.length). The arguments can also be set: arguments[1] = &apos;new value&apos;;"/>
<node CREATED="1515254441606" ID="ID_1478545722" MODIFIED="1515254475817" TEXT="Using the arguments object, you can call a function with more arguments than it is formally declared to accept. This is often useful if you don&apos;t know in advance how many arguments will be passed to the function. For example, consider a function that concatenates several strings. The only formal argument for the function is a string that specifies the characters that separate the items to concatenate:"/>
<node CREATED="1515254378668" ID="ID_1614845886" MODIFIED="1515255205448">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// (see shorter verison further below) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function myConcat(separator) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;var result = ''; // initialize list </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;var i; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;// iterate through arguments </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;for (i = 1; i &lt; arguments.length; i++) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;result += arguments[i] + separator; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;return result; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">myConcat(', ', 'red', 'orange', 'blue'); // &quot;red, orange, blue, &quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">myConcat('; ', 'elephant', 'giraffe', 'lion', 'cheetah'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &quot;elephant; giraffe; lion; cheetah; &quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">myConcat('. ', 'sage', 'basil', 'oregano', 'pepper', 'parsley'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &quot;sage. basil. oregano. pepper. parsley.&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515254962691" ID="ID_1547363224" MODIFIED="1515254974013" TEXT="console.log(typeof arguments); // &apos;object&apos;"/>
<node CREATED="1515254982002" ID="ID_1298381660" MODIFIED="1515255000282" TEXT="console.log(typeof arguments[0]); // typeof first arg"/>
<node CREATED="1515255020269" ID="ID_1740163223" MODIFIED="1515255034871" TEXT="var args = Array.from(arguments); // convert arguments into a real array"/>
<node CREATED="1515255040084" ID="ID_470491247" MODIFIED="1515255050250" TEXT="var args = [...arguments]; // convert arguments into a real array"/>
<node CREATED="1515255088380" ID="ID_1828443919" MODIFIED="1515255223949">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// shorter myConcat using convert arguments to array: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function myConcat(separator) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var args = Array.prototype.slice.call(arguments, 1); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return args.join(separator); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">myConcat(', ', 'red', 'orange', 'blue'); // &quot;red, orange, blue&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">myConcat('; ', 'elephant', 'giraffe', 'lion', 'cheetah'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &quot;elephant; giraffe; lion; cheetah&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">myConcat('. ', 'sage', 'basil', 'oregano', 'pepper', 'parsley'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &quot;sage. basil. oregano. pepper. parsley&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515255088380" ID="ID_1370152804" MODIFIED="1515258429450">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// even shorter myConcat using rest parameters:</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function myConcat(separator, ...theArgs) { &#160;&#160;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return theArgs.join(separator); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">myConcat(', ', 'red', 'orange', 'blue'); // &quot;red, orange, blue&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">myConcat('; ', 'elephant', 'giraffe', 'lion', 'cheetah'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &quot;elephant; giraffe; lion; cheetah&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">myConcat('. ', 'sage', 'basil', 'oregano', 'pepper', 'parsley'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &quot;sage. basil. oregano. pepper. parsley&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515255354345" ID="ID_450091039" MODIFIED="1515258354462">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// convert arguments to real array: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function list(type) { // type is 'u' or 'o'</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var result = '&lt;' + type + 'l&gt;&lt;li&gt;'; // ul or ol list? </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var args = Array.prototype.slice.call(arguments, 1); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;result += args.join('&lt;/li&gt;&lt;li&gt;'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;result += '&lt;/li&gt;&lt;/' + type + 'l&gt;'; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return result; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var listHTML = list('u', 'One', 'Two', 'Three'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &quot;&lt;ul&gt;&lt;li&gt;One&lt;/li&gt;&lt;li&gt;Two&lt;/li&gt;&lt;li&gt;Three&lt;/li&gt;&lt;/ul&gt;&quot; </font>
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_450091039" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_969460450" STARTARROW="None" STARTINCLINATION="0;0;"/>
</node>
</node>
<node CREATED="1515247701191" FOLDED="true" ID="ID_1680127402" MODIFIED="1515679382566" TEXT="Function Scope">
<node CREATED="1515247713224" ID="ID_516025204" MODIFIED="1515249213190">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      - a function can access all variables and functions defined inside the scope in which it is defined
    </p>
    <p>
      - a function defined in the global scope can access all variables defined in the global scope
    </p>
    <p>
      - a function defined inside another function can also access all variables defined in its parent function
    </p>
    <p>
      - a function defined inside a parent function can access all variables to which the parent has access
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515248064346" ID="ID_149089042" MODIFIED="1515249305742">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// three ways for a function to call itself: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var foo = function bar() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;// bar() - the function's name </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;// arguments.callee()&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;// foo() - an inscope function expression</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">};</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515251729882" ID="ID_1423670045" MODIFIED="1515251746812" TEXT="Scope Chaining (see Closures)"/>
<node CREATED="1515679268921" ID="ID_146496020" MODIFIED="1515679283191" TEXT="In strict mode, starting with ES6, functions inside blocks are now scoped to that block:"/>
<node CREATED="1515679183919" ID="ID_223037151" MODIFIED="1515679319973">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">'use strict'; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">function f() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return 1; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">{&#160; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// block scope function &#160;</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;function f() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;return 2; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">f() === 1; // true </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// f() === 2 in non-strict mode</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515247906078" FOLDED="true" ID="ID_1139832152" MODIFIED="1515249624863" TEXT="Function Stack ">
<node CREATED="1515249225011" ID="ID_14029278" MODIFIED="1515249606988">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// the function call stack: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function foo(i) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;debugger; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (i &lt; 0) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return; // when i === -1, exit foo(i - 1) calls </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log('begin: ' + i); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;foo(i - 1); // when exited foo(i - 1) calls... </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log('end: ' + i); // ...still on the call stack i === 0 | 1 | 2 | 3 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">foo(3); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// output: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// begin: 3 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// begin: 2 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// begin: 1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// begin: 0 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// end: 0 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// end: 1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// end: 2 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// end: 3</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515249902005" ID="ID_1954837250" MODIFIED="1515249920752" TEXT="Nested Functions (see Closures)"/>
<node CREATED="1515241453676" FOLDED="true" ID="ID_1045860066" MODIFIED="1515679394007" TEXT="Function Declarations">
<node CREATED="1515241462812" ID="ID_340905380" MODIFIED="1515242349923">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// named function declaration</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function square(number) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return number * number; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">square(2);</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515241501317" FOLDED="true" ID="ID_1242854536" MODIFIED="1515679547526" TEXT="Function Expressions (assigned to var)">
<node CREATED="1515241526598" ID="ID_323581145" MODIFIED="1515242338313">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// function expression using anonymous function</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var square = function(number) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return number * number; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">square(2);</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515241688875" ID="ID_1742862465" MODIFIED="1515242388746">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// fn expression using named fn `fac` for recursion </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var factorial = function fac(n) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return n &lt; 2 ? 1 : n * fac(n - 1); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(factorial(3));</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515241964932" ID="ID_459149152" MODIFIED="1515241997434" TEXT="Function expressions are convenient when passing a function as an argument to another function. The following example shows a `map()` function that should receive a function as first argument and an array as second argument. In the following code our `map()` function receives function defined by function expression and execute it for every element of array received as second argument:"/>
<node CREATED="1515242229886" ID="ID_183496354" MODIFIED="1515242429064">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function map(fn, arr) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var result = []; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var i; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;for (i = 0; i != arr.length; i++) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;result[i] = fn(arr[i]); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;return result; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// function expression using anonymous fn</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var fn = function(x) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;return x * x * x; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var numbers = [0, 1, 2, 5, 10]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var cube = map(fn, numbers); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(cube); // [0, 1, 8, 125, 1000]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515246982576" ID="ID_803073132" MODIFIED="1515247053767">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// function defined based on a condition </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var myFunc; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">if (num === 0) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;myFunc = function(obj) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;obj.make = 'Toyota'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515247124140" FOLDED="true" ID="ID_1455186727" MODIFIED="1515679134585" TEXT="Hoisting">
<node CREATED="1515247131891" ID="ID_1509495151" MODIFIED="1515247206993">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// hoisting only works with function declaration and not with function expression </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(square); // square is hoisted with an initial value undefined </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(square(5)); // TypeError: square is not a function </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var square = function(n) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return n * n; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515078301763" FOLDED="true" ID="ID_721597112" MODIFIED="1515679591060" TEXT="Immediate Invoked Function Expression (IIFE)">
<node CREATED="1515078320596" ID="ID_1281093809" MODIFIED="1515078348086" TEXT="An IIFE is a function expression that is called immediately after you define it. It is usually used when you want to create a new variable scope. The (surrounding parenthesis) prevents from treating it as a function declaration. The final parenthesis() are executing the function expression. On IIFE you are calling the function exactly when you are defining it.  &#xa;&#xa;- Enables you to attach private data to a function. &#xa;- Creates fresh environments. &#xa;- Avoids polluting the global namespace. &#xa;- Can be used to create a block scope for each loop iteration (see `let` in Closures section):"/>
<node CREATED="1515082673261" ID="ID_1836498498" MODIFIED="1515082887314">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var result = []; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">for (var i = 0; i &lt; 5; i++) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;result.push(function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return i; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(result[1]()); // 5 - because `i` isn't block scoped to each iteration </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(result[3]()); // 5 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">result = []; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">for (var i = 0; i &lt; 5; i++) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;(function() { // use IIFE to create block scope for each iteration </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;var j = i; // copy current value of i </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;result.push(function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;return j; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;})(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(result[1]()); // 1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(result[3]()); // 3 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">result = []; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">for (var i = 0; i &lt; 5; i++) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;(function(i) { // alt use of IIFE to create block scope for each iteration </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;result.push(function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;return i; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;})(i); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(result[1]()); // 1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(result[3]()); // 3 </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">result = []; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">for (let i = 0; i &lt; 5; i++) // use `let` to create block scope for each iteration</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;result.push(function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return i; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(result[1]()); // 1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(result[3]()); // 3</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515087671761" FOLDED="true" ID="ID_912877028" MODIFIED="1518375105874" TEXT="Arrow Functions">
<node CREATED="1515087671761" ID="ID_1905629619" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions" MODIFIED="1515265871523" TEXT="Arrow Functions"/>
<node CREATED="1515087695650" ID="ID_1443382581" MODIFIED="1515266421780" TEXT="An arrow function expression has a shorter syntax than a function expression and does not have its own `this`, `arguments`, `super`, or `new.target`."/>
<node CREATED="1515087738267" ID="ID_1677633798" MODIFIED="1517232905673">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var materials = [&quot;Hydrogen&quot;, &quot;Helium&quot;, &quot;Lithium&quot;, &quot;Beryllium&quot;]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">materials.map(function(material) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return material.length; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); // [8, 6, 7, 9] </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// shorter syntax</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">materials.map(material =&gt; { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return material.length; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); // [8, 6, 7, 9] </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// even shorter syntax (return is implicit)</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">materials.map(material =&gt; material.length); // [8, 6, 7, 9]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515266344073" ID="ID_1967352961" MODIFIED="1515266405340" TEXT="Arrow functions capture the `this` value of the enclosing context, so the following works as expected:"/>
<node CREATED="1515266424411" ID="ID_1916661490" MODIFIED="1515266443622">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function Person() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.age = 0; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;setInterval(() =&gt; { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;this.age++; // `this` properly refers to the person object </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}, 1000); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var p = new Person();</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515088271405" FOLDED="true" ID="ID_41657199" MODIFIED="1515764854064" TEXT="Constructor Functions">
<node CREATED="1515265887597" ID="ID_1277657194" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/constructor" MODIFIED="1515265908131" TEXT="Constructor Functions (MDN)"/>
<node CREATED="1515088315758" ID="ID_1707972254" MODIFIED="1515088366670" TEXT="Functions invoked using the `new` keyword are called constructor functions. `new`:&#xa;&#xa;- Creates a new object.&#xa;- Sets the object&apos;s prototype to be the prototype of the constructor function.&#xa;- Executes the constructor function with this as the newly created object.&#xa;- Returns the created object. If the constructor returns an object, this object is returned."/>
<node CREATED="1515088381360" ID="ID_453261148" MODIFIED="1515088803926">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// An implementation of `new`: </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function myNew(constructor, ...arguments) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// collect all but the first argument into an array of arguments </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var obj = {}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;Object.setPrototypeOf(obj, constructor.prototype); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return constructor.apply(obj, arguments) || obj; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var jon = myNew(Person, Jon, Snow, Stark, Targaryen);</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515088968464" ID="ID_258134637" MODIFIED="1515089067556">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// What happens if we don't invoke a constructor with `new`?&#160; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function Bird() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.wings = 2; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}&#160; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">let fakeBird = Bird(); // invoking as a normal function </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(fakeBird); // undefined </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">let realBird = new Bird(); // invoking as a constructor function </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(realBird); // { wings: 2 }</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515667449792" FOLDED="true" ID="ID_253619665" MODIFIED="1517338736591" TEXT="Generator Functions">
<node CREATED="1515667606543" ID="ID_35503890" MODIFIED="1515667619854" TEXT="Generators are functions which can be exited and later re-entered. Their context (variable bindings) will be saved across re-entrances.  &#xa;&#xa;Calling a generator function does not execute its body immediately; an iterator object for the function is returned instead. When the iterator&apos;s next() method is called, the generator function&apos;s body is executed until the first yield expression, which specifies the value to be returned from the iterator or, with yield*, delegates to another generator function. The next() method returns an object with a value property containing the yielded value and a done property which indicates whether the generator has yielded its last value as a boolean. Calling the next() method with an argument will resume the generator function execution, replacing the yield expression where execution was paused with the argument from next(). &#xa;&#xa;A return statement in a generator, when executed, will make the generator done. If a value is returned, it will be passed back as the value. A generator which has returned will not yield any more values."/>
<node CREATED="1515667484365" ID="ID_1946271983" MODIFIED="1515667786418">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// basic example </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function* idMaker() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var index = 0; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;while (index &lt; 3) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;yield index++; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var gen = idMaker(); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(gen.next().value); // 0 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(gen.next().value); // 1 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(gen.next().value); // 2 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(gen.next().value); // undefined</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515667484365" ID="ID_975495653" MODIFIED="1515667800962">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// yield example </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function* anotherGenerator(i) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;yield i + 1; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;yield i + 2; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;yield i + 3; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">function* generator(i) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;yield i; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;yield* anotherGenerator(i); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;yield i + 10; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var gen = generator(10); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(gen.next().value); // 10 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(gen.next().value); // 11 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(gen.next().value); // 12 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(gen.next().value); // 13 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(gen.next().value); // 20</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515667484365" ID="ID_722440711" MODIFIED="1515667847355">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// arguments example </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function* logGenerator() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(0); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(1, yield); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(2, yield); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(3, yield); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var gen = logGenerator(); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// the first call of next executes from the start of the function </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// until the first yield statement </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">gen.next();&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// 0 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">gen.next('pretzel');&#160;&#160;&#160;&#160;// 1 pretzel </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">gen.next('california'); // 2 california </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">gen.next('mayonnaise'); // 3 mayonnaise</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515667899843" ID="ID_1854862855" MODIFIED="1515667922785">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// return example </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function* yieldAndReturn() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;yield &quot;Y&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;R&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;yield &quot;unreachable&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var gen = yieldAndReturn() </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(gen.next()); // { value: &quot;Y&quot;, done: false } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(gen.next()); // { value: &quot;R&quot;, done: true } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(gen.next()); // { value: undefined, done: true }</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515667991756" ID="ID_1359229927" MODIFIED="1515668189404">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// generators are not constructable (use new GeneratorFunction)</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function* f() {} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var obj = new f; // throws &quot;TypeError: f is not a constructor&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515668094413" ID="ID_1368775208" MODIFIED="1515668151298">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// create generator function from a GeneratorFunction constructor </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var GeneratorFunction = Object.getPrototypeOf(function*(){}).constructor </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var g = new GeneratorFunction('a', 'yield a * 2'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var iterator = g(10); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(iterator.next().value); // 20</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515679550028" FOLDED="true" ID="ID_1741567580" MODIFIED="1515679584938" TEXT="Determining whether a function exists ">
<node CREATED="1515679561504" ID="ID_278082341" MODIFIED="1515679576422">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">if (typeof window.noFunc === 'function') { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;// use noFunc() </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;} else { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;// do something else </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515668495613" ID="ID_855264879" MODIFIED="1515668519848" TEXT="Method Functions (see Objects &gt; Object Methods)"/>
<node CREATED="1515881545127" FOLDED="true" ID="ID_1139457588" MODIFIED="1517320038228" TEXT="TODO: Async">
<node CREATED="1515881557246" ID="ID_1086716184" MODIFIED="1517320015759">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">function resolveAfter2Seconds(x) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return new Promise(resolve =&gt; { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;setTimeout(() =&gt; { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;resolve(x); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;}, 2000); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// async function expression assigned to a variable </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var add = async function(x) {&#160; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// await pauses async until&#160;a&#160;Promise&#160;is fulfilled (resolved or rejected) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// await takes value of fulfilled Promise and resumes execution of async fn </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var a = await resolveAfter2Seconds(20); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var b = await resolveAfter2Seconds(30); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return x + a + b; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">add(10).then(v =&gt; { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(v);&#160;&#160;// prints 60 after 4 seconds. </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// rejected Promise </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">async function f3() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;try { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var z = await Promise.reject(30); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} catch(e) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;console.log(e); // 30 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">f3();</font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// async function expression used as an IIFE </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">(async function(x) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var p_a = resolveAfter2Seconds(20); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var p_b = resolveAfter2Seconds(30); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return x + await p_a + await p_b; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">})(10).then(v =&gt; { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(v);&#160;&#160;// prints 60 after 2 seconds. </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}); </font>
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515671954012" FOLDED="true" ID="ID_1686916422" MODIFIED="1516395634477" TEXT="Functors">
<node CREATED="1515672052575" ID="ID_566684121" MODIFIED="1515672072944" TEXT="Functors are objects that implement the .map() method "/>
<node CREATED="1516130811982" FOLDED="true" ID="ID_1611760221" MODIFIED="1516135713831" TEXT="A monad is a more powerful functor that also implements .flatMap()">
<node CREATED="1516130937700" ID="ID_114400512" LINK="https://www.youtube.com/watch?v=9QveBbn7t_c" MODIFIED="1516130946807" TEXT="Monad - FunFunFunction #21"/>
<node CREATED="1516130985686" ID="ID_442840149" MODIFIED="1516135704806">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">const fetch = require('node-fetch') </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">const Bacon = require('baconjs') </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function getInPortuguese(word) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// Google Translate API is a paid (but dirt cheap) service. This is my key </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// and will be disabled by the time the video is out. To generate your own, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// go here: https://cloud.google.com/translate/v2/getting_started </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;const apiKey = </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;'AIzaSyB4DyRHIsNhogQXmH16YKbZfR-lTXrQpq0' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">const url = </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;'https://www.googleapis.com' + </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;'/language/translate/v2' + </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;'?key=' + apiKey + </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;'&amp;source=en' + </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;'&amp;target=pt' + </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;'&amp;q=' + encodeURIComponent(word) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;const promise = fetch(url) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;.then(response =&gt; response.json()) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;.then(parsedResponse =&gt; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;parsedResponse </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;.data </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.translations[0] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.translatedText </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;const stream = Bacon.fromPromise(promise) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return stream </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">const stream = new Bacon.Bus() </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// flatMap flattens the promise to return its value</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">stream&#160;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;.flatMap(word =&gt; getInPortuguese(word))&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;.map(word =&gt; word.toUpperCase()) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;.onValue(word =&gt; console.log(word)) </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">stream.push('cat') </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">stream.push('meal') </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">stream.push('trumpet') </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// Output of running this file will be: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// TROMBETA </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// REFEI&#199;&#195;O </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// GATO</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515668524509" FOLDED="true" ID="ID_1843684043" MODIFIED="1518375376534" TEXT="Objects">
<node CREATED="1515880670377" ID="ID_929106008" MODIFIED="1515880675217" TEXT="One can think of an object as an associative array (a.k.a. map, dictionary, hash, lookup table). The keys in this array are the names of the object&apos;s properties. It&apos;s typical when speaking of an object&apos;s properties to make a distinction between properties and methods. However, the property/method distinction is little more than a convention. A method is simply a property that can be called, for example if it has a reference to a Function instance as its value."/>
<node CREATED="1514318043390" FOLDED="true" ID="ID_1757604941" MODIFIED="1518375108675" TEXT="Object Methods">
<node CREATED="1515668290913" FOLDED="true" ID="ID_1066928149" MODIFIED="1515678585457" TEXT="Getters and Setters">
<node CREATED="1515668365605" ID="ID_340762641" MODIFIED="1515668366759" TEXT="You can define getters (accessor methods) and setters (mutator methods) on any standard built-in object or user-defined object that supports the addition of new properties. The syntax for defining getters and setters uses the object literal syntax."/>
<node CREATED="1515668383099" FOLDED="true" ID="ID_765430494" MODIFIED="1515678393818" TEXT="`get` binds an object property to a function that will be called when that property is looked up.">
<node CREATED="1515668677184" ID="ID_708060054" MODIFIED="1515668917407">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// get dynamic value </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var obj = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;log: ['a', 'b', 'c'], </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;get latest() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;if (this.log.length == 0) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;return undefined; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;return this.log[this.log.length - 1]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(obj.latest); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// expected output: &quot;c&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515668823276" ID="ID_36092099" MODIFIED="1515678082176">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// remove getter</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">delete obj.latest;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515668965759" ID="ID_455492599" MODIFIED="1515669026353">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// append getter to an existing object using Object.defineProperty() </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var o = {a: 0}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">Object.defineProperty(o, 'b', { get: function() { return this.a + 1; } }); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(o.b) // 1</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515677393883" ID="ID_1365796299" MODIFIED="1515677429352">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// using computated property name </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var expr = 'foo'; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var obj = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;get [expr]() { return 'bar'; } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(obj.foo); // &quot;bar&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515668408757" FOLDED="true" ID="ID_1748001320" MODIFIED="1515678405542">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      `set` binds an object property to a function to be called when there is an attempt to set that property.
    </p>
  </body>
</html></richcontent>
<node CREATED="1515677894470" ID="ID_288769795" MODIFIED="1515677921569">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// basic example </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var language = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;set current(name) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;this.log.push(name); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}, </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;log: [] </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">language.current = 'EN'; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">language.current = 'FA'; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(language.log); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// expected output: Array [&quot;EN&quot;, &quot;FA&quot;]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515678056228" ID="ID_724728885" MODIFIED="1515678094218">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// remove setter </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">delete language.current;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515678150214" ID="ID_510681468" MODIFIED="1515678169472">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// append a setter to an existing object </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var o = {a: 0}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">Object.defineProperty(o, 'b', { set: function(x) { this.a = x / 2; } }); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">o.b = 10;</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(o.a) // 5</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515678205752" ID="ID_1980574326" MODIFIED="1515678217885">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// using computated property name </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var expr = 'foo'; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var obj = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;baz: 'bar', </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;set [expr](v) { this.baz = v; } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(obj.baz); // &quot;bar&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">obj.foo = 'baz';&#160;&#160;&#160;&#160;&#160;&#160;// run the setter </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(obj.baz); // &quot;baz&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515668569462" FOLDED="true" ID="ID_538326620" MODIFIED="1518375072628" TEXT="Method Definition Syntax">
<node CREATED="1515668612320" ID="ID_1334958048" MODIFIED="1515678513743">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// ES6 shorter syntax </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var obj = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;foo() {}, </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;bar() { return 'baz'; } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(obj.bar()); // baz</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515678518129" ID="ID_1004003067" MODIFIED="1515678531012">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// computed property names </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var bar = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;foo0: function() { return 0; }, </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;foo1() { return 1; }, </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;['foo' + 2]() { return 2; } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(bar.foo0()); // 0 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(bar.foo1()); // 1 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(bar.foo2()); // 2</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514318057229" FOLDED="true" ID="ID_579296407" MODIFIED="1514405976980">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Object.keys()
    </p>
  </body>
</html></richcontent>
<node CREATED="1514318050244" ID="ID_954948194" MODIFIED="1514318051298" TEXT="var numberOfTests = Object.keys(tests).length;"/>
</node>
<node CREATED="1514378026619" FOLDED="true" ID="ID_411885957" MODIFIED="1518375056356" TEXT="Object.create()">
<node CREATED="1514378176953" ID="ID_701898202" MODIFIED="1514383162009">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// create model object (prototype) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var dog = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;fetch: function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;console.log('fetch'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// every object has the Object.prototype as its prototype </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var defaultObjectPrototype =&#160;Object.getPrototypeOf(dog); // object{} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// Object.prototype&#160;is the last object in the prototype chain </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Object.getPrototypeOf(defaultObjectPrototype); // null</font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// create object based on `dog` </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var myDog = Object.create(dog); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// set property </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myDog.name = 'Muttley'; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// myDog has access to fetch method of prototype `dog` </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myDog.fetch(); // 'fetch' </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// check the prototype object of `myDog` </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Object.getPrototypeOf(myDog) === dog; // true</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1514383583586" ID="ID_84446710" MODIFIED="1514384120886">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// move function from constructor to prototype: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// before: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function Dog(name) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;this.name = name; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;this.fetch = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;console.log('fetching'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}&#160; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// after: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// 1: create constructor </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function Dog(name) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;this.name = name; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}&#160; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// 2: add function to Dog prototype </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dog.prototype.fetch = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log('fetching'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// 3: create object from Dog constructor&#160; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var myDog = new Dog('Muttley'); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// 4: call fetch function </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myDog.fetch(); // fetching </font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1518375029122" ID="ID_1147647794" MODIFIED="1518375053865">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // object copy function
    </p>
    <p>
      function copy(obj) {
    </p>
    <p>
      &#160;&#160;const copy = Object.create(Object.getPrototypeOf(obj));
    </p>
    <p>
      &#160;&#160;const propNames = Object.getOwnPropertyNames(obj);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;propNames.forEach(function(name) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;const desc = Object.getOwnPropertyDescriptor(obj, name);
    </p>
    <p>
      &#160;&#160;&#160;&#160;Object.defineProperty(copy, name, desc);
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;return copy;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      const obj1 = { a: 1, b: 2 };
    </p>
    <p>
      const obj2 = copy(obj1);
    </p>
    <p>
      console.log(obj2) // looks like obj1
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515081350787" FOLDED="true" ID="ID_27948273" MODIFIED="1518375069326" TEXT="Object.assign()">
<node CREATED="1515081371828" ID="ID_1823308532" MODIFIED="1515081454889" TEXT="Combines objects: return Object.assign({}, obj1, obj2, obj3);"/>
</node>
<node CREATED="1514318701601" FOLDED="true" ID="ID_722198796" MODIFIED="1518375063548" TEXT="hasOwnProperty()">
<node CREATED="1514318711989" ID="ID_974020065" MODIFIED="1514318794829">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">var dog = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// prototype property </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;bark: function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;console.log('bark'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var myDog = Object.create(dog); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// non-prototype property </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">myDog.name = 'Rover'; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">for (property in myDog) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(property); // returns: bark, name </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// only get non prototype properties of an object </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">for (property in myDog) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;if (myDog.hasOwnProperty(property)) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;console.log(property) // returns: name </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514378061094" FOLDED="true" ID="ID_330311897" MODIFIED="1514718009533" TEXT="Object.getPrototypeOf()">
<node CREATED="1514384196244" ID="ID_351146937" MODIFIED="1514384209962" TEXT="see: Object.create();"/>
</node>
<node CREATED="1514382673478" FOLDED="true" ID="ID_379996642" MODIFIED="1514406418675" TEXT="Object.prototype">
<node CREATED="1514382689591" ID="ID_1711712655" MODIFIED="1514383025244">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      - Object's prototype is Object.prototype because Object is a constructor function
    </p>
    <p>
      - var myObj = {}; is using the constructor function: var myObj = new Object();
    </p>
    <p>
      - Object.getPrototypeOf(myObj) === Object.prototype; // true
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1514384560202" FOLDED="true" ID="ID_716727649" MODIFIED="1517387891733" TEXT="Object Properties">
<node CREATED="1514384471488" FOLDED="true" ID="ID_612843559" MODIFIED="1517387890571" TEXT="Object.__proto__">
<node CREATED="1514384575130" ID="ID_537609542" MODIFIED="1514384874550">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      - shortcut for Object.getPrototypeOf()
    </p>
    <p>
      - is not yet supported in all browsers
    </p>
    <p>
      - depreciated: do not use in real code
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515089096484" FOLDED="true" ID="ID_629867444" MODIFIED="1515764858144" TEXT="Prototypes and Inheritance">
<node CREATED="1515089112925" ID="ID_643371831" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Details_of_the_Object_Model" MODIFIED="1515165237807" TEXT="Details of the object model (MDN)"/>
<node CREATED="1515089227688" FOLDED="true" ID="ID_1183539912" MODIFIED="1515167477634" TEXT="Prototypes:&#xa;- A prototype is a blueprint or model of an object stored as an object.&#xa;- Every object has a prototype (object), from which it inherits all of the prototype&apos;s properties.  &#xa;- Retrieve the prototype of an object using `Object.getPrototypeOf(myObject)`. &#xa;- Whenever an object is created from a constructor function, it inherits a `.constructor` prototype.&#xa;- The `.constructor` prototype links  back the constructor function that used to create it the object.">
<node CREATED="1515089902473" ID="ID_645934741" MODIFIED="1515090376082">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function Dog(breed, name) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;(this.breed = breed), (this.name = name); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">Dog.prototype.describe = function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(&quot;${this.name} is a ${this.breed}&quot;); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">const rusty = new Dog(&quot;Beagle&quot;, &quot;Rusty&quot;); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// .prototype property points to inherited properties and the constructor: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(Dog.prototype); // { describe: &#402; , constructor: &#402; } </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// rusty is an object created from the Dog constructor function: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(rusty); //&#160;{ breed: &quot;Beagle&quot;, name: &quot;Rusty&quot; } </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// Object inherited properties from constructor function's prototype: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(rusty.describe()); // &quot;Rusty is a Beagle&quot; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// .__proto__ property points to the .prototype property and the constructor: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(rusty.__proto__); // { describe: &#402; , constructor: &#402; } </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// .constructor property points to the constructor of the object: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(rusty.constructor); // &#402; Dog(breed, name) { ... }</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515090392267" ID="ID_1990481010" MODIFIED="1515091064598">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Prototype Chain: The prototype chain is a series of links between objects that reference one another. When looking for a property in an object, the JavaScript engine will first try to access that property on the object itself. If it is not found, the JavaScript engine will look for that property on the object from which it inherited its properties:&#8202; the object&#8217;s prototype. The engine will traverse up the chain looking for that property and return the first one it finds. The last object in the chain is the built-in `Object.prototype`, which has null as its prototype. Once the engine reaches this object, it returns `undefined`.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515091079226" FOLDED="true" ID="ID_900582438" MODIFIED="1515167480894" TEXT="Own vs Inherited Properties: Objects have own properties and inherited properties. Own properties are properties that were defined on the object. Inherited properties were inherited through the prototype chain. ">
<node CREATED="1515091116178" ID="ID_1002012789" MODIFIED="1515091213598">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function Car() {} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Car.prototype.wheels = 4; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">Car.prototype.airbags = 1; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var myCar = new Car(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">myCar.color = &quot;black&quot;; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// Check for Property including Prototype Chain: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(&quot;airbags&quot; in myCar); // true </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(myCar.wheels); // 4 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(myCar.year); // undefined </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// Check for Own Property (i.e., not inherited from prototype) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(myCar.hasOwnProperty(&quot;airbags&quot;)); // false &#8212; inherited </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(myCar.hasOwnProperty(&quot;color&quot;)); // true</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515091229430" FOLDED="true" ID="ID_738048463" MODIFIED="1515167486063" TEXT="`Object.create(obj)`&#x200a;Creates a new object with the specified prototype object and properties:">
<node CREATED="1515091271735" ID="ID_428909334" MODIFIED="1515091461206">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var dog = { legs: 4 }; // prototype object </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var myDog = Object.create(dog); // create using prototype </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(myDog.hasOwnProperty(&quot;legs&quot;)); // false </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(myDog.legs); // 4 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// .__proto__ points to the .prototype property</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(myDog.__proto__ === dog); // true </font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515091482199" FOLDED="true" ID="ID_915980828" MODIFIED="1515167490060" TEXT="Inheritance by reference: An inherited property is a copy by reference of the prototype object&apos;s property from which it inherited that property. If an object&apos;s property is mutated on the prototype, objects that inherited that property will share the same mutation. But if the property is replaced, the change will not be shared.">
<node CREATED="1515091513791" ID="ID_579854207" MODIFIED="1515092797688">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// Prototype Delegation: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var objProt = { text: &quot;original&quot; }; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var objAttachedToProt = Object.create(objProt); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(objAttachedToProt.text); // original </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">objProt.text = &quot;prototype property changed&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(objAttachedToProt.text); // prototype property changed </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">objProt = { text: &quot;replacing property&quot; }; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(objAttachedToProt.text); // prototype property changed</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515091660716" FOLDED="true" ID="ID_399779066" MODIFIED="1515165230298" TEXT="Classical Inheritance vs. Prototypal Inheritance: &quot;...the problem with object-oriented languages is they&apos;ve got all this implicit environment that they carry around with them. You wanted a banana but what you got was a gorilla holding the banana and the entire jungle.&quot; ~ Joe Armstrong, Coders at Work">
<node CREATED="1515091743822" ID="ID_56053025" MODIFIED="1515091940094" TEXT="Class Inheritance: Instances inherit from classes (like a blueprint&#x200a; or &#x200a;a description of the object to be created), and create sub-class relationships: hierarchical class taxonomies. Instances are typically instantiated via constructor functions with the `new` keyword. Class inheritance may or may not use the `class` keyword from ES6."/>
<node CREATED="1515091787344" ID="ID_555668242" MODIFIED="1515091823343" TEXT="Prototypal Inheritance: Instances inherit directly from other objects. Instances are typically instantiated via factory functions or `Object.create()`. Instances may be composed from many different objects, allowing for easy selective inheritance. "/>
<node CREATED="1515091897651" ID="ID_311783178" MODIFIED="1515092235664" TEXT="The downside of classical inheritance is that it causes:  &#xa;- inflexible hierarchy &#xa;- tight coupling problems &#xa;- fragile base class problems &#xa;- duplication problems (the gorilla/banana problem)&#xa;&#xa;In prototypal inheritance, objects inherit directly from other objects. Objects are typically created via Object.create(myPrototype), object literals or factory functions.&#xa;&#xa;There are three different kinds of prototypal inheritance:&#xa;&#xa;- Prototype Delegation: A delegate prototype is an object which is used as a model for another object. When you inherit from a delegate prototype, the new object gets a reference to the prototype and its properties. This process is usually accomplished by using Object.create().&#xa;&#xa;- Concatenative Inheritance: The process of inheriting properties from one object to another by copying the object&#x2019;s prototype properties, without retaining a reference between them. This process is usually accomplished by using Object.assign().&#xa;&#xa;- Functional Inheritance: This process makes use of a factory function (a function that is neither a class nor a constructor that returns an object without using the `new` keyword) to create an object, and then adds new properties directly to the created object. This process has the benefit of allowing data encapsulation via closure."/>
<node CREATED="1515091513791" ID="ID_1127612672" MODIFIED="1515092660031">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// Prototype Delegation:</font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var objProt = { text: &quot;original&quot; }; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var objAttachedToProt = Object.create(objProt); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(objAttachedToProt.text); // original </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">objProt.text = &quot;prototype property changed&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(objAttachedToProt.text); // prototype property changed </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">objProt = { text: &quot;replacing property&quot; }; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(objAttachedToProt.text); // prototype property changed</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515081850028" ID="ID_246173121" MODIFIED="1515092558427">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// Concatenative Inheritance using factory function: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var barker = (state) =&gt; ({ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;bark: () =&gt; console.log('Woof, I am ' + state.name) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var driver = (state) =&gt; ({ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;drive: () =&gt; state.position = state.position + state.speed </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var killer = (state) =&gt; ({ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;kill: () =&gt; console.log('Murder! Death! Kill!') </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}) </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// murderRobotDog factory </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var murderRobotDog = (name) =&gt; { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;let state = { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;name, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;speed: 100, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;position: 0 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return Object.assign( // combine objects and return single object </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;{}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;barker(state), </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;driver(state), </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;killer(state) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">murderRobotDog('sniffles').bark(); // 'Woof, I am sniffles' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">murderRobotDog('sniffles').kill(); // 'Murder! Death! Kill!' </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">murderRobotDog('sniffles').drive(); // '100'</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515092275242" ID="ID_1975823881" MODIFIED="1515092653620">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// Functional Inheritance using factory function: </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">const person = function(name) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;const message = &quot;Hello! My name is ${name}&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;greeting: () =&gt; console.log(message) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">const will = person(&quot;Will&quot;); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">will.greeting(); // Hello! My name is Will</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515092739622" FOLDED="true" ID="ID_1211115614" MODIFIED="1515164573487" TEXT="&quot;Favor [prototypal] composition over [class] inheritance&quot;: Many developers agree that class inheritance should be avoided in most cases. In the class inheritance pattern you design your types regarding what they are, which makes it a very strict pattern. Composition, on the other hand, you design your types regarding what they do, which makes it more flexible and reusable.">
<node CREATED="1515092830160" ID="ID_1983106616" MODIFIED="1515164536448">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// old way (class inheritance) </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">function Greeter(name) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;this.name = name || &quot;John Doe&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">Greeter.prototype.hello = function hello() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;Hello, my name is &quot; + this.name + &quot;.&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var george = new Greeter(&quot;George&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">george.hello(); // Hello, my name is George </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// new way (prototype delegation)</font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var proto = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;hello: function hello() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;return &quot;Hello, my name is &quot; + this.name + &quot;.&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// create object based on proto</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var george = Object.create(proto); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// set property &#160; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">george.name = &quot;George&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// call prototype function</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">george.hello(); // Hello, my name is George. </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// mixin style </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var proto = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;hello: function hello() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;return &quot;Hello, my name is &quot; + this.name + &quot;.&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// http://underscorejs.org/#extend </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var george = _.extend({}, proto, { name: &quot;George&quot; }); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// or use ES6 Object.assign() &#160; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var george = Object.assign( </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;{}, </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;proto, </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;{ name: &quot;George&quot; } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">);&#160;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1517320716891" FOLDED="true" ID="ID_1749130066" MODIFIED="1517323244946" TEXT="Classes">
<node CREATED="1517320794478" ID="ID_17109619" MODIFIED="1517320801452">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      function Person(name, age, sex) {
    </p>
    <p>
      &#160;&#160;this.name = name;
    </p>
    <p>
      &#160;&#160;this.age = age;
    </p>
    <p>
      &#160;&#160;this.sex = sex;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      var rand = new Person('Rand McNally', 33, 'M');
    </p>
    <p>
      var ken = new Person('Ken Jones', 39, 'M');
    </p>
    <p>
      
    </p>
    <p>
      function Car(make, model, year, owner) {
    </p>
    <p>
      &#160;&#160;this.make = make;
    </p>
    <p>
      &#160;&#160;this.model = model;
    </p>
    <p>
      &#160;&#160;this.year = year;
    </p>
    <p>
      &#160;&#160;this.owner = owner;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      var car1 = new Car('Eagle', 'Talon TSi', 1993, rand);
    </p>
    <p>
      var car2 = new Car('Nissan', '300ZX', 1992, ken);
    </p>
    <p>
      
    </p>
    <p>
      console.log(car2.owner.name); // Ken Jones
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1517323181968" FOLDED="true" ID="ID_266136544" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/super" MODIFIED="1517323232637" TEXT="super(MDN)">
<node CREATED="1517323186200" ID="ID_323994093" MODIFIED="1517323228436" TEXT="The super keyword is used to access and call functions on an object&apos;s parent. "/>
</node>
</node>
</node>
<node CREATED="1515082929929" FOLDED="true" ID="ID_1111525223" MODIFIED="1517325296634" TEXT="`this`">
<node CREATED="1515082938890" ID="ID_230553846" MODIFIED="1515768486741" TEXT="Context refers to the value of `this` in a particular part of your code. Use `this` to refer to the current object. In general, `this` refers to the calling object in a method. "/>
<node CREATED="1517323382199" ID="ID_1059518022" MODIFIED="1517323397491" TEXT="In strict mode, if `this` was not defined by the execution context, it remains undefined. "/>
<node CREATED="1515085012607" FOLDED="true" ID="ID_1294144535" MODIFIED="1517323329782" TEXT="Determining `this`">
<node CREATED="1515085053864" ID="ID_1418515526" MODIFIED="1515085160284" TEXT="The keyword `this` acts as a placeholder, and will refer to whichever object called that method when the method is actually used. The following list is the ordered rules for determining `this`:"/>
<node CREATED="1515085091784" ID="ID_374497674" MODIFIED="1517323323511" TEXT="`new` Binding">
<node CREATED="1515085100729" ID="ID_949663769" MODIFIED="1515085101922" TEXT="When using the `new` keyword to call a function, `this` is the newly constructed object."/>
<node CREATED="1515085110393" ID="ID_1507073721" MODIFIED="1515085136755">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function Person(name, age) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.name = name; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.age = age; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(this); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">const Rachel = new Person(&quot;Rachel&quot;, 30); // { age: 30, name: 'Rachel' }</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515085163579" FOLDED="true" ID="ID_1844935266" MODIFIED="1515768510996" TEXT="Explicit Binding">
<node CREATED="1515085183667" ID="ID_496558003" MODIFIED="1515085212859" TEXT="When `call()` or `apply()` are used to call a function, `this` is the object that is passed in as the argument. Note: `.bind()` works a little bit differently. It creates a new function that will call the original one with the object that was bound to it."/>
<node CREATED="1515085225013" ID="ID_220989448" MODIFIED="1515085356535">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function fn() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(this); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var agent = { id: &quot;007&quot; }; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// agent passed as `this`: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">fn.call(agent); // { id: '007' } </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">fn.apply(agent); // { id: '007' } </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// bind agent as `this` to boundFn:</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var boundFn = fn.bind(agent); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">boundFn(); // { id: '007' }</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515085181363" FOLDED="true" ID="ID_717629472" MODIFIED="1515240996295" TEXT="Implicit Binding">
<node CREATED="1515085411755" ID="ID_298497436" MODIFIED="1515085565603" TEXT="When a function is called within a containing object, `this` is the object that the function is a property of. This means that a function is being called as a method."/>
<node CREATED="1515085430451" ID="ID_896761311" MODIFIED="1515085483216">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var building = { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;floors: 5, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;printThis: function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(this); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">building.printThis(); // { floors: 5, printThis: function() {&#8230;} }</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515086818861" FOLDED="true" ID="ID_1323114015" MODIFIED="1515241000182" TEXT="Default Binding">
<node CREATED="1515086830662" ID="ID_1281302183" MODIFIED="1515086852037" TEXT="If none of the above rules apply, `this` is the global object (in a browser, it&apos;s the window object). This happens when a function is called as a standalone function. A function that is not declared as a method automatically becomes a property of the global object."/>
<node CREATED="1515086864327" ID="ID_1482827664" MODIFIED="1515086884449">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function printWindow() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(this); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">printWindow(); // window object</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515087277895" ID="ID_635283109" MODIFIED="1515087290123" TEXT="This also happens when a standalone function is called from within an outer function scope:"/>
<node CREATED="1515087295944" ID="ID_1884750761" MODIFIED="1515087420600">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function Dinosaur(name) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.name = name; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var self = this; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;inner(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;function inner() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;alert(this); // window object &#8212; the function has overwritten the `this` context </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(self); // {name: 'Dino'} &#8212; the stored value from the outer context </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var myDinosaur = new Dinosaur(&quot;Dino&quot;);</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515087477022" FOLDED="true" ID="ID_320368311" MODIFIED="1515241018656" TEXT="Lexical `this`">
<node CREATED="1515087493246" ID="ID_160926293" MODIFIED="1515087524487" TEXT="When a function is called with an arrow function =&gt;, `this` receives the `this` value of the surrounding scope at the time it is created. `this` keeps the value from its original context."/>
<node CREATED="1515087534063" ID="ID_47376196" MODIFIED="1515087567757">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function Cat(name) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.name = name; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;console.log(this); // { name: 'Garfield' } </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;(() =&gt; console.log(this))(); // { name: 'Garfield' } // IIFE </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var myCat = new Cat(&quot;Garfield&quot;);</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515083612899" FOLDED="true" ID="ID_434343557" MODIFIED="1517323435721" TEXT="Setting `this`">
<node CREATED="1515241106044" ID="ID_1278343940" MODIFIED="1515241117287" TEXT="call(), apply() and bind()"/>
<node CREATED="1515083925029" ID="ID_1836315484" MODIFIED="1515085387471" TEXT="Explicit Binding: A different `this` object can be assigned when calling an existing function. `this` refers to the current object, the calling object"/>
<node CREATED="1515083849833" ID="ID_1444621591" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/call" MODIFIED="1515084306551" TEXT="Function.prototype.call(thisArg, arg1, arg2, ...); "/>
<node CREATED="1515083751176" ID="ID_421479874" MODIFIED="1515083767295" TEXT=".call() invokes the function immediately and requires you to pass in arguments as a list (one by one)."/>
<node CREATED="1515083883508" ID="ID_145866499" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/apply" MODIFIED="1515084295986" TEXT="Function.prototype.apply(thisArg, [argsArray]); "/>
<node CREATED="1515083761496" ID="ID_207527050" MODIFIED="1515083767298" TEXT=".apply() invokes the function immediately and allows you to pass in arguments as an array."/>
<node CREATED="1515084024793" ID="ID_1825867843" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/bind" MODIFIED="1515084281699" TEXT="Function.prototype.bind(thisArg[, arg1[, arg2[, ...]]]);"/>
<node CREATED="1515084074057" ID="ID_98562848" MODIFIED="1515084644685" TEXT=".bind() function creates a new bound function that, when called, has its `this` keyword set to the provided value, with a given sequence of arguments preceding any provided when the new function is called. Bound functions are useful for asynchronous callbacks and events."/>
<node CREATED="1515084362363" ID="ID_909009547" MODIFIED="1515084581984">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">const Snow = { surname: &quot;Snow&quot; }; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">const char = { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;surname: &quot;Stark&quot;, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;knows: function(arg, name) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(`You know ${arg}, ${name} ${this.surname}`); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// don't pass optional `this`:</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">char.knows(&quot;something&quot;, &quot;Bran&quot;); // You know something, Bran Stark </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// Snow is passed as the optional `this`:&#160;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">char.knows.call(Snow, &quot;nothing&quot;, &quot;Jon&quot;); // You know nothing, Jon Snow </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// Snow is passed as the optional `this`:&#160;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">char.knows.apply(Snow, [&quot;nothing&quot;, &quot;Jon&quot;]); // You know nothing, Jon Snow </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// ES6 allows us to spread an array as arguments with the call function:&#160;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">char.knows.call(Snow, ...[&quot;nothing&quot;, &quot;Jon&quot;]); // You know nothing, Jon Snow</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515084661596" ID="ID_313331597" MODIFIED="1515084944896">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">const Snow = { surname: &quot;Snow&quot; }; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">const char = { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;surname: &quot;Stark&quot;, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;knows: function(arg, name) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(`You know ${arg}, ${name} ${this.surname}`); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// bind the function with Snow as `this` and &quot;nothing&quot; as first `knows` arg </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">const whoKnowsNothing = char.knows.bind(Snow, &quot;nothing&quot;); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// call with 'Jon' passed as &quot;name&quot; second `knows` arg </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">whoKnowsNothing(&quot;Jon&quot;); // You know nothing, Jon Snow&#160; </font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515768574015" FOLDED="true" ID="ID_1203996004" MODIFIED="1515768684438" TEXT="Using `this`">
<node CREATED="1515768628481" ID="ID_1262225589" MODIFIED="1515768681064">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// validate() validates an object's value property, given its high and low values: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function validate(obj, lowval, hival) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if ((obj.value &lt; lowval) || (obj.value &gt; hival)) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log('Invalid Value!'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// usage: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &lt;p&gt;Enter a number between 18 and 99:&lt;/p&gt; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &lt;input type=&quot;text&quot; name=&quot;age&quot; size=3 onChange=&quot;validate(this, 18, 99);&quot;&gt;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517324061300" ID="ID_1268523349" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this" MODIFIED="1517324084438" TEXT="In arrow functions, `this` retains the value of the enclosing lexical context&apos;s `this`"/>
</node>
<node CREATED="1515067245034" FOLDED="true" ID="ID_423041681" MODIFIED="1515254272413" TEXT="Closures">
<node CREATED="1515072324411" ID="ID_1762133436" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures" MODIFIED="1515075596623" TEXT="MDN: Closures"/>
<node CREATED="1515249927213" FOLDED="true" ID="ID_1792145612" MODIFIED="1515252211159" TEXT="Functions can always remember the variables that they could see at creation. Every nested function is a closure: the nested function &quot;inherits&quot; the arguments and variables of its containing function. In other words, the inner function contains or &quot;encloses&quot; the scope (&quot;lexical environment&quot;) of the outer function. The inner function forms a closure: the inner function can use the arguments and variables of the outer function, while the outer function cannot use the arguments and variables of the inner function.">
<node CREATED="1515072420311" ID="ID_1944479920" MODIFIED="1515073273561">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function init() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var name = 'Mozilla'; // name is a local variable created by init </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;function displayName() { // displayName() is the inner function, a closure </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;alert(name); // use enclosed variable declared in the parent function&#160;&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;displayName();&#160;&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">init();</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515072734129" ID="ID_94001014" MODIFIED="1515073273576">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function makeFunc() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var name = 'Mozilla'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;function displayName() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;alert(name); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return displayName; // returns the function and lexical environment </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var myFunc = makeFunc(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">myFunc(); // run displayName() using its lexical environment makeFunc()</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515251384638" ID="ID_1695905459" MODIFIED="1515251499837">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function outside(x) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;function inside(y) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return x + y; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return inside; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">fn_inside = outside(3); // give me a function that adds 3 to whatever you give it </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// fn_inside is a closure: it encloses outside's scope/&quot;lexical environment&quot; var x&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">result = fn_inside(5); // returns 8</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">result1 = outside(3)(5); // returns 8</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515073135757" ID="ID_1432532451" MODIFIED="1515073433997">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function makeAdder(x) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return function(y) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return x + y; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var add5 = makeAdder(5); // add5 is a reference to fn(y) and x = 5</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var add10 = makeAdder(10); // add5 is a reference to fn(y) and x = 10</font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(add5(2));&#160;&#160;// 7 - fn(2) 2 + 5</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(add10(2)); // 12 - fn(2) 2 + 10</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515073501627" ID="ID_716653550" MODIFIED="1515073539763" TEXT="In essence, makeAdder is a function factory &#x2013; it creates functions which can add a specific value to their argument. In the above example we use our function factory to create two new functions &#x2013; one that adds 5 to its argument, and one that adds 10.  add5 and add10 are both closures. They share the same function body definition, but store different lexical environments. In add5&apos;s lexical environment, x is 5, while in the lexical environment for add10, x is 10.  "/>
</node>
<node CREATED="1515251991697" FOLDED="true" ID="ID_1580526581" MODIFIED="1515252146141" TEXT="Scope Chaining (Closure Chains)">
<node CREATED="1515252008858" ID="ID_1758700635" MODIFIED="1515252095367">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function A(x) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;function B(y) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;function C(z) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;console.log(x + y + z); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;C(3); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;B(2); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log( A(1) ); // 6 (1 + 2 + 3) </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// C accesses B's y and A's x. This can be done because: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// - B forms a closure including A, i.e. B can access A's arguments and variables. </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// - C forms a closure including B. </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// - Because B's closure includes A, C's closure includes A, C can </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// -- access both B and A's arguments and variables. </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// - In other words, C chains the scopes of B and A in that order. </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// - The reverse, however, is not true. A cannot access C, because A cannot </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// -- access any argument or variable of B, which C is a variable of. </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// -- Thus, C remains private to only B.</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515074138158" FOLDED="true" ID="ID_1967803725" MODIFIED="1515254267393" TEXT="Data Privacy and Simulated Private Methods">
<node CREATED="1515252313892" ID="ID_945389846" MODIFIED="1515252327905" TEXT="JavaScript allows for the nesting of functions and grants the inner function full access to all the variables and functions defined inside the outer function (and all other variables and functions that the outer function has access to). However, the outer function does not have access to the variables and functions defined inside the inner function. This provides a sort of encapsulation for the variables of the inner function. Also, since the inner function has access to the scope of the outer function, the variables and functions defined in the outer function will live longer than the duration of the inner function execution, if the inner function manages to survive beyond the life of the outer function. A closure is created when the inner function is somehow made available to any scope outside the outer function."/>
<node CREATED="1515074124790" ID="ID_639310484" MODIFIED="1515074134297" TEXT="Languages such as Java provide the ability to declare methods private, meaning that they can only be called by other methods in the same class.  JavaScript does not provide a native way of doing this, but it is possible to emulate private methods using closures. Private methods aren&apos;t just useful for restricting access to code: they also provide a powerful way of managing your global namespace, keeping non-essential methods from cluttering up the public interface to your code.  The following code illustrates how to use closures to define public functions that can access private functions and variables. Using closures in this way is known as the module pattern:"/>
<node CREATED="1515073720717" ID="ID_465663284" MODIFIED="1515252358221" TEXT="Closures are useful because they let you associate some data (the &quot;lexical environment&quot;) with a function that operates on that data. This has obvious parallels to object-oriented programming, where objects allow us to associate some data (the object&apos;s properties) with one or more methods. Consequently, you can use a closure anywhere that you might normally use an object with only a single method."/>
<node CREATED="1515252540091" ID="ID_558305969" MODIFIED="1515252931126">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var createPet = function(name) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var sex; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;setName: function(newName) {</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;name = newName;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;getName: function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;return name; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;getSex: function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;return sex; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;setSex: function(newSex) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;if(typeof newSex === 'string' &amp;&amp; (newSex.toLowerCase() === 'male' || newSex.toLowerCase() === 'female')) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sex = newSex; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var pet = createPet('Vivie'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">pet.getName();&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// Vivie </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">pet.setName('Oliver'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">pet.setSex('male'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">pet.getSex();&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// male </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">pet.getName();&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// Oliver</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515252629053" ID="ID_431238687" MODIFIED="1515252747571" TEXT="The `name` variable of the outer function is accessible to the inner functions, and there is no other way to access the inner variables except through the inner functions. The inner variables of the inner functions act as safe stores for the outer arguments and variables. They hold &quot;persistent&quot; and &quot;encapsulated&quot; data for the inner functions to work with. The functions do not even have to be assigned to a variable, or have a name:"/>
<node CREATED="1515252750545" ID="ID_534651720" MODIFIED="1515252773007">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var getCode = (function() { // IIFE </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var apiCode = '0]Eal(eh&amp;2';&#160;&#160;&#160;&#160;// A code we do not want outsiders to be able to modify... </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return apiCode; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}()); // IIFE </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">getCode();&#160;&#160;// '0]Eal(eh&amp;2'</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515074263458" ID="ID_1236442320" MODIFIED="1515074560187">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var counter = (function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var privateCounter = 0; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;function changeBy(val) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;privateCounter += val; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;increment: function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;changeBy(1); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;decrement: function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;changeBy(-1); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;value: function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;return privateCounter; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;};&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">})(); // IIFE</font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(counter.value()); // logs 0 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">counter.increment(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">counter.increment(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(counter.value()); // logs 2 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">counter.decrement(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(counter.value()); // logs 1</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515074439848" ID="ID_284332944" MODIFIED="1515252528887" TEXT="Here we create a single lexical environment that is shared by three functions: `counter.increment`, `counter.decrement`, and `counter.value`. The shared lexical environment is created in the body of an anonymous function, which is executed as soon as it has been defined. The lexical environment contains two private items: a variable called `privateCounter` and a function called `changeBy`. Neither of these private items can be accessed directly from outside the anonymous function. Instead, they must be accessed by the three public functions that are returned from the anonymous wrapper. Those three public functions are closures that share the same environment. Thanks to JavaScript&apos;s lexical scoping, they each have access to the `privateCounter` variable and `changeBy` function."/>
<node CREATED="1515074763877" ID="ID_968858356" MODIFIED="1515074770096" TEXT="You&apos;ll notice we&apos;re defining an anonymous function that creates a counter, and then we call it immediately and assign the result to the counter variable. We could store this function in a separate variable makeCounter and use it to create several counters:"/>
<node CREATED="1515074809590" ID="ID_627780820" MODIFIED="1515074828721">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var makeCounter = function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var privateCounter = 0; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;function changeBy(val) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;privateCounter += val; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;increment: function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;changeBy(1); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;decrement: function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;changeBy(-1); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;value: function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;return privateCounter; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var counter1 = makeCounter(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var counter2 = makeCounter(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">alert(counter1.value()); // Alerts 0 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">counter1.increment(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">counter1.increment(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">alert(counter1.value()); // Alerts 2 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">counter1.decrement(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">alert(counter1.value()); // Alerts 1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">alert(counter2.value()); // Alerts 0</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515074853095" ID="ID_1956443235" MODIFIED="1515074857974" TEXT="Notice how each of the two counters, counter1 and counter2, maintains its independence from the other. Each closure references a different version of the privateCounter variable through its own closure. Each time one of the counters is called, its lexical environment changes by changing the value of this variable; however changes to the variable value in one closure do not affect the value in the other closure."/>
<node CREATED="1515074867560" ID="ID_870268111" MODIFIED="1515074879743" TEXT="Using closures in this way provides a number of benefits that are normally associated with object-oriented programming &#x2013; in particular, data hiding and encapsulation."/>
<node CREATED="1515067426456" ID="ID_1787441373" MODIFIED="1515074301472" TEXT="In JavaScript, closures are the primary mechanism used to enable data encapsulation and privacy. This enables you to decide that some data should not be directly exposed. When you use closures for data privacy, the enclosed variables are only in scope within the containing (outer) function. You can&apos;t get at the data from an outside scope except through the object&apos;s privileged methods. In JavaScript, any exposed method defined within the closure scope is privileged."/>
<node CREATED="1515067534612" ID="ID_117500596" MODIFIED="1515070409569">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function sayHi(name) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var message = &quot;Hi ${name}!&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;function greeting() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(message); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return greeting; // return function def. with enclosed var `message`</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}&#160; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var sayHiToJon = sayHi(&quot;Jon&quot;); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// sayHiToJon is a closure, it retains access to vars in the enclosing scope sayHi()</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// sayHiToJon is a closure: it returns a fn whose var `message` is in closure scope</font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(sayHiToJon); // &#402;() { console.log(message) } - return greeting() def.</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(sayHiToJon()); // 'Hi Jon!' - sayHiToJon retains access to enclosed var</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515070152433" ID="ID_745620505" MODIFIED="1515071962322" TEXT="- A closure can refer to variables in the outer scope. The returned function can access the message variable from the enclosing scope. &#xa;&#xa;- A closure can refer to outer scope variables even after the outer function has returned. sayHiToJon is a reference to the greeting function, created when sayHi was run. The greeting function maintains a reference to its outer scope&#x200a;(its environment) in which message exists."/>
<node CREATED="1515070463988" ID="ID_755734826" MODIFIED="1515070690667">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function SpringfieldSchool() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;let staff = [&quot;Seymour Skinner&quot;, &quot;Edna Krabappel&quot;]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;getStaff: function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;console.log(staff); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;addStaff: function(name) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;staff.push(name); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">let elementary = SpringfieldSchool(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(elementary); // { getStaff: &#402;, addStaff: &#402; } </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(staff); // ReferenceError: staff is not defined </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// elementary closure allows us to access the staff variable: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">elementary.getStaff(); // [&quot;Seymour Skinner&quot;, &quot;Edna Krabappel&quot;] </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">elementary.addStaff(&quot;Otto Mann&quot;); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">elementary.getStaff(); // [&quot;Seymour Skinner&quot;, &quot;Edna Krabappel&quot;, &quot;Otto Mann&quot;]</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515072113641" ID="ID_1756621543" MODIFIED="1515072226336">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function sendRequest() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var requestID = '123'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;$.ajax({ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;url: '/myUrl', </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;success: function(response) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;alert('Request ' + requestID&#160;&#160;+ ' returned'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515070729757" FOLDED="true" ID="ID_1479547654" MODIFIED="1515250130954" TEXT="Closure Problems and Solutions">
<node CREATED="1515075340231" FOLDED="true" ID="ID_49425313" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures" MODIFIED="1515077444416" TEXT="MDN: Creating closures in loops: A common mistake  ">
<node CREATED="1515076416254" ID="ID_1052383429" MODIFIED="1515076430924">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">&lt;p id=&quot;help&quot;&gt;Helpful notes will appear here&lt;/p&gt; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&lt;p&gt;E-mail: &lt;input type=&quot;text&quot; id=&quot;email&quot; name=&quot;email&quot;&gt;&lt;/p&gt; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&lt;p&gt;Name: &lt;input type=&quot;text&quot; id=&quot;name&quot; name=&quot;name&quot;&gt;&lt;/p&gt; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&lt;p&gt;Age: &lt;input type=&quot;text&quot; id=&quot;age&quot; name=&quot;age&quot;&gt;&lt;/p&gt;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515076447879" ID="ID_958500879" MODIFIED="1515076796314">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function showHelp(help) { // see below: `help` will always be last in loop</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;document.getElementById('help').innerHTML = help; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function setupHelp() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var helpText = [ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;{'id': 'email', 'help': 'Your e-mail address'}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;{'id': 'name', 'help': 'Your full name'}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;{'id': 'age', 'help': 'Your age (you must be over 16)'} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;for (var i = 0; i &lt; helpText.length; i++) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;var item = helpText[i]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;document.getElementById(item.id).onfocus = function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;showHelp(item.help); // when called `item.help` will always be last in loop</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">setupHelp();</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515076494353" ID="ID_851903842" MODIFIED="1515076595437">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The `helpText` array defines three helpful hints, each associated with the ID of an input field in the document. The loop cycles through these definitions, hooking up an onfocus event to each one that shows the associated help method.If you try this code out, you'll see that it doesn't work as expected. No matter what field you focus on, the message about your age will be displayed.
    </p>
    <p>
      
    </p>
    <p>
      The reason for this is that the functions assigned to `onfocus` are closures; they consist of the function definition and the captured environment from the `setupHelp`function's scope. Three closures have been created by the loop, but each one shares the same single lexical environment, which has a variable with changing values (`item.help`). The value of `item.help` is determined when the `onfocus` callbacks are executed. Because the loop has already run its course by that time, the item variable object (shared by all three closures) has been left pointing to the last entry in the `helpText` list.
    </p>
    <p>
      
    </p>
    <p>
      One solution in this case is to use more closures: in particular, to use a function factory as described earlier:
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515076750062" ID="ID_742219373" MODIFIED="1515077038544">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function showHelp(help) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;document.getElementById('help').innerHTML = help; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function makeHelpCallback(help) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return function() { // `help` is uniquely enclosed from each iteration of `item.id`</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;showHelp(help); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function setupHelp() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var helpText = [ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;{'id': 'email', 'help': 'Your e-mail address'}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;{'id': 'name', 'help': 'Your full name'}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;{'id': 'age', 'help': 'Your age (you must be over 16)'} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;for (var i = 0; i &lt; helpText.length; i++) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;var item = helpText[i]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;document.getElementById(item.id).onfocus = makeHelpCallback(item.help); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;// `makeHelpCallback` takes unique lexical environment for each iteration of loop </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">setupHelp();</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515077062992" ID="ID_803222480" MODIFIED="1515077430333" TEXT="This works as expected. Rather than the callbacks all sharing a single lexical environment, the `makeHelpCallback` function creates a new lexical environment for each callback, in which help refers to the corresponding string from the `helpText` array. &#xa;&#xa;One other way to write the above using anonymous closures is:"/>
<node CREATED="1515077106601" ID="ID_1296810099" MODIFIED="1515077228028">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function showHelp(help) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;document.getElementById('help').innerHTML = help; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function setupHelp() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var helpText = [ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;{'id': 'email', 'help': 'Your e-mail address'}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;{'id': 'name', 'help': 'Your full name'}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;{'id': 'age', 'help': 'Your age (you must be over 16)'} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;for (var i = 0; i &lt; helpText.length; i++) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;(function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;var item = helpText[i]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;document.getElementById(item.id).onfocus = function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;showHelp(item.help); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;})(); // IIFE creates event listener with unique `item.help` for each iteration </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">setupHelp();</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515077270314" ID="ID_1216913549" MODIFIED="1515077416198" TEXT="If you don&apos;t want to use more closures, you can use the `let` keyword introduced in ES2015: "/>
<node CREATED="1515077298483" ID="ID_549832370" MODIFIED="1515077343152">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function showHelp(help) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;document.getElementById('help').innerHTML = help; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function setupHelp() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var helpText = [ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;{'id': 'email', 'help': 'Your e-mail address'}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;{'id': 'name', 'help': 'Your full name'}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;{'id': 'age', 'help': 'Your age (you must be over 16)'} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;for (var i = 0; i &lt; helpText.length; i++) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;let item = helpText[i]; // `let` creates a new block scope for each iteration </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;document.getElementById(item.id).onfocus = function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;showHelp(item.help); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">setupHelp();</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515077352197" ID="ID_1000053508" MODIFIED="1515077376321" TEXT="This example uses `let` instead of `var`, so every closure binds the block-scoped variable, meaning that no additional closures are required."/>
</node>
<node CREATED="1515071226037" FOLDED="true" ID="ID_1679282571" MODIFIED="1515075761984" TEXT="What is wrong with the following code and how would you fix it?">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1515070742599" ID="ID_1735559817" MODIFIED="1515071186320">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">const arr = [10, 12, 15, 21]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">for (var i = 0; i &lt; arr.length; i++) { &#160;</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;setTimeout(function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;// setTimeout() encloses `i` (and `arr`)</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;// these function calls will appear on the call stack&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;// only after the loop has completed and when i is 4 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(`The value ${arr[i]} is at index: ${i}`); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}, (i + 1) * 1000); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515070861274" ID="ID_1005815654" MODIFIED="1515070927635" TEXT="Considering the above code, the console will display four identical messages &quot;The value undefined is at index: 4&quot;. This happens because each function executed within the loop will be executed after the whole loop has completed (see the event loop and call stack), referencing the last value stored in `i`, which was 4. This problem can be solved by using IIFE, which creates a unique scope for each iteration and storing each value within its scope:"/>
<node CREATED="1515070899835" ID="ID_466091249" MODIFIED="1515070956395">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">const arr = [10, 12, 15, 21]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">for (var i = 0; i &lt; arr.length; i++) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;(function(j) { // IIFE</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;setTimeout(function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;console.log(`The value ${arr[j]} is at index: ${j}`); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}, j * 1000); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;})(i); // i is passed into j </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515070991894" ID="ID_344446557" MODIFIED="1515071025550" TEXT="Another solution would be declaring the `i` variable with `let` (declares a variable of block scope), which creates the same result because `i` is only available to the block scope and so the inner function doesn&apos;t look outside to find `i` (as in the case of `var`):"/>
<node CREATED="1515071027535" ID="ID_1645852943" MODIFIED="1515071076487">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">const arr = [10, 12, 15, 21]; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">for (let i = 0; i &lt; arr.length; i++) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// let i is being re-bound to i in each iteration of the loop </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;setTimeout(function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;console.log(`The value ${arr[i]} is at index: ${i}`); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}, i * 1000); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// how the above is working: </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">{ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;let k; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;for (k = 0; k &lt; arr.length; k++) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;let i = k; // create a new `i` for each iteration </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;setTimeout(function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;`The value ${arr[i]} is at index: ${i}`; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}, i * 1000); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515077722849" FOLDED="true" ID="ID_1256689362" MODIFIED="1515250130952" TEXT="Closures and Prototypes">
<node CREATED="1515077730865" ID="ID_1604740489" MODIFIED="1515077746271" TEXT="When creating a new object/class, methods should normally be associated to the object&apos;s prototype rather than defined into the object constructor. The reason is that whenever the constructor is called, the methods would get reassigned (that is, for every object creation). Consider the following case:"/>
<node CREATED="1515077759722" ID="ID_1280033301" MODIFIED="1515077778185">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function MyObject(name, message) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.name = name.toString(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.message = message.toString(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.getName = function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return this.name; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.getMessage = function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return this.message; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515077797633" ID="ID_1663717189" MODIFIED="1515077798886" TEXT="Because the previous code does not take advantage of the benefits of closures, we could instead rewrite it as follows: "/>
<node CREATED="1515077819204" ID="ID_439908558" MODIFIED="1515077860024">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function MyObject(name, message) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.name = name.toString(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.message = message.toString(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">MyObject.prototype = { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;getName: function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return this.name; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;getMessage: function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return this.message; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">};</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515077872710" ID="ID_140685055" MODIFIED="1515077873834" TEXT="However, redefining the prototype is not recommended. The following example instead appends to the existing prototype:"/>
<node CREATED="1515078059198" ID="ID_1943280535" MODIFIED="1515078165221">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function MyObject(name, message) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.name = name.toString(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;this.message = message.toString(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">MyObject.prototype.getName = function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return this.name; // `getName` encloses `this.name` from `MyObject`</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">MyObject.prototype.getMessage = function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return this.message; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">};</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515078179544" ID="ID_751831443" MODIFIED="1515078181104" TEXT="In the two previous examples, the inherited prototype can be shared by all objects and the method definitions need not occur at every object creation."/>
</node>
</node>
<node CREATED="1515160547787" FOLDED="true" ID="ID_938731781" MODIFIED="1517162616213" TEXT="Currying">
<node CREATED="1515161392200" ID="ID_1676479417" MODIFIED="1515161446111" TEXT="Curried functions take only one argument and return a function expecting the next argument until the final function returns the accumulated output"/>
<node CREATED="1515160617101" ID="ID_1825628780" MODIFIED="1515160842334">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">let dragon = </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;name =&gt; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;size =&gt; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;element =&gt; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;name + ' is a ' + </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;size + ' dragon that breathes ' + </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;element + '!' </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(dragon('fluffykins')('tiny')('lighting'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// fluffykins is a tiny dragon that breathes lighting!</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515160617101" ID="ID_1088139732" MODIFIED="1515161383531">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">let dragon = </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;name =&gt; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;size =&gt; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;element =&gt; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;name + ' is a ' + </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;size + ' dragon that breathes ' + </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;element + '!' </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">let fluffykinsDragon = dragon('fluffykins'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">let tinyDragon = fluffykinsDragon('tiny'); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">console.log(tinyDragon('lighting'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// fluffykins is a tiny dragon that breathes lighting!</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515243586974" FOLDED="true" ID="ID_1820161971" MODIFIED="1515764866426" TEXT="Recursion">
<node CREATED="1515243594121" ID="ID_1539511503" MODIFIED="1515245760817" TEXT="Recursion is when a function calls itself (until it doesn&apos;t)"/>
<node CREATED="1515248274016" ID="ID_1391757803" MODIFIED="1515248299851" TEXT="Use case: To replace loops"/>
<node CREATED="1515248307330" ID="ID_114218888" MODIFIED="1515248421065">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// before</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var x = 0; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">while (x &lt; 10) { // exit condition </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;// do stuff </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;x++; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// after </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">function loop(x) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (x &gt;= 10) // exit condition</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;return; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// do stuff </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;loop(x + 1); // recursive call </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">loop(0);</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515243615808" ID="ID_553308305" MODIFIED="1515243803619" TEXT="Use case: Traversing a tree-like structure to manipulate its nodes"/>
<node CREATED="1515245594764" ID="ID_1408605714" MODIFIED="1515245706088">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">let categories = [ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: 'animals', parent: null }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: 'mammals', parent: 'animals' }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: 'cats', parent: 'mammals' }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: 'dogs', parent: 'mammals' }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: 'chihuahua', parent: 'dogs' }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: 'labrador', parent: 'dogs' }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: 'persian', parent: 'cats' }, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;{ id: 'siamese', parent: 'cats' } </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">let makeTree = (categories, parent) =&gt; { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;let node = {}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;categories </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;.filter(c =&gt; c.parent === parent) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;.forEach(c =&gt; node[c.id] = </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;makeTree(categories, c.id)); // recursive calls</font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return Object.keys(node).length ? node : null;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log( </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;JSON.stringify( </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;makeTree(categories, null) // initial call</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;, null, 2) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// anticipated tree structure </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">{ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;animals: { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;mammals: { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;cats: { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'persian': null </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'siamese': null </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;}, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;dogs: { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'chihuahua': null </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'labrador': null </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;}&#160;&#160;&#160;&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514318991110" FOLDED="true" ID="ID_1664821658" MODIFIED="1515764863948" TEXT="Utility Functions">
<node CREATED="1514318998022" FOLDED="true" ID="ID_1913849569" MODIFIED="1514319037439" TEXT="isString()">
<node CREATED="1514319003982" ID="ID_676714895" MODIFIED="1514319023077">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">function isString(obj) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return !!(obj === '' || (obj &amp;&amp; obj.charCodeAt &amp;&amp; obj.substr)); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514319774064" FOLDED="true" ID="ID_32213342" MODIFIED="1514319861342" TEXT="roundFloat()">
<node CREATED="1514319780664" ID="ID_990674169" MODIFIED="1514319848048">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">function roundFloat(value, precision) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// value = 1.005; precision = 2; result we want = 1.01 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// 1.005e2 == 1.005 * 100 == 100.5 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var exponentialForm = Number(value + 'e' + precision); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// 100.5 rounded = 101 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var rounded = Math.round(exponentialForm); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// 101 ==&gt; 101e-2 == 101/100 == 1.01 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var result = rounded + 'e-' + precision; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return result; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514319900568" FOLDED="true" ID="ID_1448867882" MODIFIED="1514320327292" TEXT="unWrapArray()">
<node CREATED="1514319909040" ID="ID_73631366" MODIFIED="1514320041043">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// practice: recursion</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function unwrapArray(data) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Base case or exit recursive case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;if (!Array.isArray(data)) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;return data; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;// Recursive case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} else { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;return unwrapArray(data[0]); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">unwrapArray([[[[[['wrapped']]]]]]);</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514320142776" FOLDED="true" ID="ID_153299294" MODIFIED="1514320328541" TEXT="factorial(n);">
<node CREATED="1514320157777" ID="ID_86705383" MODIFIED="1514320270842">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// practice: recursion </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// 4! = 4 * 3 * 2 * 1 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// n! = n * (n - 1)! </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">function factorial(n) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Base case or exit recursive case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;if (n === 1) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;return 1; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Recursive case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} else { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;return n * factorial(n - 1); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">factorial(4); // </font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514320360016" FOLDED="true" ID="ID_1476787426" MODIFIED="1514321247392" TEXT="traversal">
<node CREATED="1514320369712" ID="ID_322225715" MODIFIED="1514321244485">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// practice: recursion </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// traverse DOM from element</font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">function logEachChildElement(element) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Every case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Log the current element </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(element); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Recursive case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Repeat steps for each child element </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;if(element.children.length &gt; 0) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;for (var i = 0; i &lt; element.children.length; i++) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;logEachChildElement(element.children[i]); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Base case or exit recursive case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// If there are no children, do nothing </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">logEachChildElement(document.body);</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1514320891374" ID="ID_1229187204" MODIFIED="1514321111942">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// practice: recursion </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// traverse DOM from element and process with callback</font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">function forEachChildElement(element, callback) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Every case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Run callback on the current element </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;callback(element); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Recursive case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Repeat steps for each child element </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;if(element.children.length &gt; 0) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;for (var i = 0; i &lt; element.children.length; i++) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;forEachChildElement(element.children[i], callback); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Base case or exit recursive case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// If there are no children, do nothing </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">forEachChildElement(document.body, function(element) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(element.nodeName); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515168760204" FOLDED="true" ID="ID_1280845075" MODIFIED="1517323574589" TEXT="Asynchronous">
<node CREATED="1515168969307" ID="ID_541005153" LINK="https://www.youtube.com/watch?v=8aGhZQkoFbQ" MODIFIED="1515168990357" TEXT="Video: What the heck is the event loop anyway?"/>
<node CREATED="1515169080199" ID="ID_11058559" LINK="http://latentflip.com/loupe" MODIFIED="1515169144812" TEXT="Tool: Loupe: Visualizing the JS Runtime at Runtime"/>
<node CREATED="1515168800236" ID="ID_643462649" MODIFIED="1515168814003" TEXT="JavaScript is a single-threaded programming language. This means that the JavaScript engine can only process a piece of code at a time. One of its main consequences is that when JavaScript encounters a piece of code that takes a long time to process, it will block all code after that from running. JavaScript uses a data structure that stores information about active functions named Call Stack. A Call Stack is like a pile of books. Every book that goes into that pile sits on top of the previous book. The last book to go into the pile will be the first one removed from it, and the first book added to the pile will be the last one removed. The solution to executing heavy pieces of code without blocking anything is asynchronous callback functions. These functions are executed later&#x200a;&#x2013;&#x200a;asynchronously."/>
<node CREATED="1515168914682" ID="ID_1028823054" MODIFIED="1515168922220" TEXT="The asynchronous process begins with an asynchronous callback functions placed into a Heap or region of memory. You can think of the Heap as an Event Manager. The Call Stack asks the Event Manager to execute a specific function only when a certain event happens. Once that event happens, the Event Manager moves the function to the Callback Queue. Note: When the Event Manager handles a function, the code after that is not blocked and JavaScript continues its execution. The Event Loop handles the execution of multiple pieces of your code over time. The Event Loop monitors the Call Stack and the Callback Queue. The Call Stack is constantly checked whether it is empty or not. When it is empty, the Callback Queue is checked if there is a function waiting to be invoked. When there is a function waiting, the first function in the queue is pushed into the Call Stack, which will run it. This checking process is called a &apos;tick&apos; in the Event Loop. Let&apos;s break down the execution of the following code to understand how this process works:"/>
<node CREATED="1515169004492" ID="ID_215438969" MODIFIED="1515169057264">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">const first = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(&quot;First message&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">const second = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(&quot;Second message&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">const third = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(&quot;Third message&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">first(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">setTimeout(second, 0); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">third(); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// First message </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// Third message </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// Second message</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1515169166162" ID="ID_205150683" MODIFIED="1515169268861" TEXT="1. Initially the Browser console is clear and the Call Stack and Event Manager are empty. &#xa;2. first() is added to the Call Stack. &#xa;3. console.log(&quot;First message&quot;) is added to the Call Stack. &#xa;4. console.log(&quot;First message&quot;) is executed and the Browser console displays &quot;First message&quot;. &#xa;5. console.log(&quot;First message&quot;) is removed from the Call Stack. &#xa;6. first() is removed from the Call Stack. &#xa;7. setTimeout(second, 0) is added to the Call Stack. &#xa;8. setTimeout(second, 0) is executed and handled by the Event Manager. And after 0ms the Event Manager moves second() to the Callback Queue. &#xa;9. setTimeout(second, 0) is now completed and removed from the Call Stack. &#xa;10. third() is added to the Call Stack. &#xa;11. console.log(&quot;Third message&quot;) is added to the Call Stack. &#xa;12. console.log(&quot;Third message&quot;) is executed and the Browser console displays &quot;Third message&quot;.&#xa;13. console.log(&quot;Third message&quot;) is removed from the Call Stack. &#xa;14. Call Stack is now empty and the second() function is waiting to be invoked in the Callback Queue. &#xa;15. The Event Loop moves second() from the Callback Queue to the Call Stack. &#xa;16. console.log(&quot;Second message&quot;) is added to the Call Stack. &#xa;17. console.log(&quot;Second message&quot;) is executed and the Browser console displays &quot;Second message&quot;. &#xa;18. console.log(&quot;Second message&quot;) is removed from the Call Stack. &#xa;19. second() is removed from the Call Stack."/>
<node CREATED="1515169277821" ID="ID_1082164382" MODIFIED="1515169325463" TEXT="Note: The second() function is not executed after 0ms. The time you pass in to setTimeout function does not relate to the delay of its execution. The Event Manager will wait the given time before moving that function into the Callback Queue. "/>
</node>
<node CREATED="1515671845686" FOLDED="true" ID="ID_168753588" MODIFIED="1518433879288" TEXT="Promises">
<node CREATED="1518433815711" ID="ID_332392942" LINK="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce" MODIFIED="1518433858646" TEXT="TODO: .reduce() example: Running Promises in Sequence"/>
<node CREATED="1515671866897" ID="ID_1219737320" MODIFIED="1515671901102">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// http://bluebirdjs.com </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">import Promise from 'bluebird' </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">const whenDragonLoaded = new Promise((resolve, reject)) =&gt; { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;setTimeout(() =&gt; resolve({ </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;{ name: 'Fluffykins', health: 70 } </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}, 2000) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">const names = </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;whenDragonLoaded </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;.map(dragon =&gt; dragon.name) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;.then(name =&gt;&#160;&#160;console.log(name)); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// output </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">'Fluffykins'</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1516015158383" FOLDED="true" ID="ID_527120129" MODIFIED="1516015472418" TEXT="Streams">
<node CREATED="1516015214353" ID="ID_1242856536" LINK="https://www.youtube.com/watch?v=UD2dZw9iHCc" MODIFIED="1516015234072" TEXT="Streams - FunFunFunction #13"/>
<node CREATED="1516015173224" ID="ID_1311217618" MODIFIED="1516015204143" TEXT="A stream is a flow of values that will be arriving whenever they feel like"/>
<node CREATED="1516015205193" FOLDED="true" ID="ID_95557269" MODIFIED="1516015470105" TEXT=" Streaming libraries">
<node CREATED="1516015242722" ID="ID_471835485" MODIFIED="1516015243640" TEXT="https://baconjs.github.io/"/>
<node CREATED="1516015252178" ID="ID_4759861" MODIFIED="1516015252981" TEXT="http://highlandjs.org/"/>
<node CREATED="1516015259763" ID="ID_1522442829" MODIFIED="1516015260714" TEXT="http://reactivex.io/"/>
<node CREATED="1516015275627" ID="ID_564505660" MODIFIED="1516015276675" TEXT="https://nodejs.org/api/stream.html "/>
</node>
</node>
<node CREATED="1517339024860" FOLDED="true" ID="ID_230064665" MODIFIED="1517339633686" TEXT="Date">
<node CREATED="1517339027563" ID="ID_1978624389" MODIFIED="1517339045272">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var today = new Date(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var endYear = new Date(1995, 11, 31, 23, 59, 59, 999); // Set day and month </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">endYear.setFullYear(today.getFullYear()); // Set year to this year </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var msPerDay = 24 * 60 * 60 * 1000; // Number of milliseconds per day </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var daysLeft = (endYear.getTime() - today.getTime()) / msPerDay; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var daysLeft = Math.round(daysLeft); //returns days left in the year</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1517339317214" ID="ID_414212611" MODIFIED="1517339332401">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">function JSClock() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;debugger; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var time = new Date(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var hour = time.getHours(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var minute = time.getMinutes(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var second = time.getSeconds(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var temp = '' + ((hour &gt; 12) ? hour - 12 : hour); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (hour == 0) </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;temp = '12'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;temp += ((minute &lt; 10) ? ':0' : ':') + minute; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;temp += ((second &lt; 10) ? ':0' : ':') + second; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;temp += (hour &gt;= 12) ? ' P.M.' : ' A.M.'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return temp; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517339635021" FOLDED="true" ID="ID_1844276968" MODIFIED="1517340660440" TEXT="String">
<node CREATED="1517339637710" FOLDED="true" ID="ID_342402708" MODIFIED="1517340377286" TEXT="Multi-lines">
<node CREATED="1517339769810" ID="ID_814008364" MODIFIED="1517339837452">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// new line character </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log('string text line 1\n\ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">string text line 2'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &quot;string text line 1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// string text line 2&quot; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// template literals </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(`string text line 1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">string text line 2`); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &quot;string text line 1 </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// string text line 2&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517339872664" FOLDED="true" ID="ID_98634158" MODIFIED="1517340374210" TEXT="Embedded expressions">
<node CREATED="1517339933618" ID="ID_1786712422" MODIFIED="1517339946530">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// concatenation </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a = 5; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var b = 10; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log('Fifteen is ' + (a + b) + ' and\nnot ' + (2 * a + b) + '.'); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &quot;Fifteen is 15 and </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// not 20.&quot; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// template literals </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var a = 5; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var b = 10; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(`Fifteen is ${a + b} and\nnot ${2 * a + b}.`); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// &quot;Fifteen is 15 and </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// not 20.&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517340352203" FOLDED="true" ID="ID_95290265" MODIFIED="1517340375869" TEXT="Tagged templates">
<node CREATED="1517340358187" ID="ID_1533950313" MODIFIED="1517340369576">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">var person = 'Mike'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var age = 28; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">function myTag(strings, personExp, ageExp) { </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var str0 = strings[0]; // &quot;that &quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var str1 = strings[1]; // &quot; is a &quot; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// There is technically a string after </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// the final expression (in our example), </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// but it is empty (&quot;&quot;), so disregard. </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// var str2 = strings[2]; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var ageStr; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;if (ageExp &gt; 99){ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;ageStr = 'centenarian'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} else { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;ageStr = 'youngster'; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;return str0 + personExp + str1 + ageStr; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">var output = myTag`that ${ person } is a ${ age }`; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">console.log(output); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">// that Mike is a youngster</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1515087889691" FOLDED="true" ID="ID_843009440" MODIFIED="1515088007532" TEXT="Strict Mode">
<node CREATED="1515087898564" ID="ID_1948359147" MODIFIED="1515087899568" TEXT="JavaScript is executed in strict mode by using the &quot;use strict&quot; directive. Strict mode tightens the rules for parsing and error handling on your code. Some of its benefits are:"/>
<node CREATED="1515087918547" ID="ID_324997090" MODIFIED="1515087989359" TEXT="- Makes debugging easier:&#x200a;Code errors that would otherwise have been ignored will now generate errors, such as assigning to non-writable global or property. &#xa;&#xa;- Prevents accidental global variables:&#x200a;Assigning a value to an undeclared variable will now throw an error.&#xa;&#xa;- Prevents invalid use of delete: Attempts to delete variables, functions and undeletable properties will now throw an error. &#xa;&#xa;- Prevents duplicate property names or parameter values:&#x200a;Duplicated named property in an object or argument in a function will now throw an error. (This is no longer the case in ES6) &#xa;&#xa;- Makes eval() safer:&#x200a;Variables and functions declared inside an `eval()` statement are not created in the surrounding scope. &#xa;&#xa;- &#x201c;Secures&#x201d; JavaScript eliminating `this` coercion:&#x200a;Referencing a `this` value of null or undefined is not coerced to the global object. This means that in browsers it&apos;s no longer possible to reference the window object using `this` inside a function."/>
</node>
<node CREATED="1517344989584" FOLDED="true" ID="ID_773335520" MODIFIED="1517346637351" TEXT="JSON">
<node CREATED="1517345034841" FOLDED="true" ID="ID_1551449565" MODIFIED="1517346505473" TEXT="Lists (array literals)">
<node CREATED="1517345045970" ID="ID_1211915585" MODIFIED="1517345047022" TEXT="[&quot;penguin&quot;, &quot;arctis&quot;, &quot;snow&quot;]"/>
</node>
<node CREATED="1517345037073" FOLDED="true" ID="ID_392524179" MODIFIED="1517346511481" TEXT="Maps (object literals)">
<node CREATED="1517345053402" ID="ID_378939107" MODIFIED="1517345054370" TEXT="{&quot;id&quot;: 2901465, &quot;my phone number&quot;:&quot;0049.30.227109&quot;}"/>
</node>
<node CREATED="1517345131581" FOLDED="true" ID="ID_500817042" MODIFIED="1517346512729" TEXT="Records (map with keys)">
<node CREATED="1517345136442" ID="ID_54504693" MODIFIED="1517345171172" TEXT="{id: 2901465, phone:&quot;0049.30.227109&quot;}"/>
<node CREATED="1517345168188" ID="ID_901014228" MODIFIED="1517345204047" TEXT="{tags:[&quot;penguin&quot;,&quot;arctis&quot;], photographer:{&quot;last&quot;:&quot;Wagner&quot;,&quot;first&quot;:&quot;Gerd&quot;}}"/>
<node CREATED="1517345249841" ID="ID_1396749035" MODIFIED="1517345375658" TEXT="{006251587X: {isbn:&quot;006251587X&quot;, title:&quot;Weaving the Web&quot;, year:2000}, 0465026567: { isbn:&quot;0465026567&quot;, title:&quot;G&#xf6;del, Escher, Bach&quot;, year:1999}, 0465030793: {isbn:&quot;0465030793&quot;, title:&quot;I Am A Strange Loop&quot;, year:2008}}"/>
</node>
<node CREATED="1517346536178" ID="ID_311058528" MODIFIED="1517346587797" TEXT="var json = JSON.stringify(myObject);"/>
<node CREATED="1517346556544" ID="ID_1999566657" MODIFIED="1517346606713" TEXT="var object = JSON.parse(myJson);"/>
</node>
<node CREATED="1517345505985" FOLDED="true" ID="ID_1868959414" MODIFIED="1517346591016" TEXT="Local Storage">
<node CREATED="1517345515361" ID="ID_531676331" MODIFIED="1517345604324">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// save data </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var persons = {}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">persons[&quot;2901465&quot;] = {id: 2901465, name:&quot;Tom&quot;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">persons[&quot;3305579&quot;] = {id: 3305579, name:&quot;Su&quot;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">persons[&quot;6492003&quot;] = {id: 6492003, name:&quot;Pete&quot;}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">try { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;localStorage[&quot;personTable&quot;] = JSON.stringify(persons); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} catch (e) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;alert(&quot;Error when writing to Local Storage\n&quot; + e); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1517345605954" ID="ID_101220950" MODIFIED="1517345631492">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// load data </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">var persons = {}; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">try { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;persons = JSON.parse(localStorage[&quot;personTable&quot;]); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} catch (e) { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;alert(&quot;Error when reading from Local Storage\n&quot; + e);&#160;&#160;&#160;&#160;&#160;&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514320134712" FOLDED="true" ID="ID_81305191" MODIFIED="1514326212371" TEXT="DOM">
<node CREATED="1514318853370" FOLDED="true" ID="ID_1674453123" MODIFIED="1514318989644" TEXT="DOM Manipulation">
<node CREATED="1514318862722" ID="ID_1348566805" MODIFIED="1514318879695" TEXT="appendChild()">
<node CREATED="1514318880570" ID="ID_781365383" MODIFIED="1514318930611">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">var summaryString = </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;('Tests: ' + numberOfTests + </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;'. PASSED: ' + passed + </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;'. FAILED: ' + failures + '.'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var summaryElement = document.createElement('h1'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">summaryElement.textContent = summaryString; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">document.body.appendChild(summaryElement);</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1514320736866" FOLDED="true" ID="ID_1766177766" MODIFIED="1514321249718" TEXT="DOM Traversal">
<node CREATED="1514320746872" ID="ID_1991150332" MODIFIED="1514321233404">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// practice: recursion </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// traverse DOM from element</font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">function logEachChildElement(element) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Every case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Log the current element </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(element); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Recursive case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Repeat steps for each child element </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;if(element.children.length &gt; 0) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;for (var i = 0; i &lt; element.children.length; i++) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;logEachChildElement(element.children[i]); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Base case or exit recursive case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// If there are no children, do nothing </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">logEachChildElement(document.body); </font>
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1514320891374" ID="ID_244853595" MODIFIED="1514321111942">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// practice: recursion </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// traverse DOM from element and process with callback</font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">function forEachChildElement(element, callback) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Every case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Run callback on the current element </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;callback(element); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Recursive case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Repeat steps for each child element </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;if(element.children.length &gt; 0) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;for (var i = 0; i &lt; element.children.length; i++) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;forEachChildElement(element.children[i], callback); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// Base case or exit recursive case: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// If there are no children, do nothing </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">forEachChildElement(document.body, function(element) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;console.log(element.nodeName); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1514317153269" FOLDED="true" ID="ID_1178823069" MODIFIED="1516395639244" TEXT="Templating">
<node CREATED="1514317147173" FOLDED="true" ID="ID_729252913" MODIFIED="1516395632536" TEXT="Handlebars">
<node CREATED="1516193881471" ID="ID_296282593" LINK="http://handlebarsjs.com/" MODIFIED="1516298905547" TEXT="http://handlebarsjs.com/"/>
<node CREATED="1516013244744" ID="ID_664724287" MODIFIED="1516298912321" TEXT="sudo npm install -g handlebars // install handlebars globally"/>
<node CREATED="1516298767579" FOLDED="true" ID="ID_804330162" MODIFIED="1516395631267" TEXT="Packaging">
<node CREATED="1516359455101" FOLDED="true" ID="ID_301326117" MODIFIED="1516359602253" TEXT="setup repo">
<node CREATED="1516298776168" ID="ID_667141647" MODIFIED="1516359599044" TEXT="cd {repo} npm install handlebars handlebars-loader path --save-dev"/>
<node CREATED="1516359469142" ID="ID_349618555" MODIFIED="1516359591848">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">{ </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&quot;name&quot;: &quot;packaged&quot;, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&quot;version&quot;: &quot;1.0.0&quot;, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&quot;description&quot;: &quot;test&quot;, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&quot;devDependencies&quot;: { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&quot;handlebars&quot;: &quot;^4.0.10&quot;, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&quot;handlebars-loader&quot;: &quot;^1.5.0&quot;, </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&quot;path&quot;: &quot;^0.12.7&quot; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;} </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">// cd {repo} npm install</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1516298813577" ID="ID_1134304958" MODIFIED="1516359611056" TEXT="see: Watch andCode repo: experiments/handlebars/packaged"/>
<node CREATED="1516298778392" ID="ID_659361263" LINK="https://www.youtube.com/watch?v=wSNa5b1mS5Y" MODIFIED="1516298794598" TEXT="https://www.youtube.com/watch?v=wSNa5b1mS5Y"/>
<node CREATED="1516298804161" ID="ID_127747821" LINK="https://github.com/LearnWebCode/handlebars-webpack" MODIFIED="1516298810645" TEXT="https://github.com/LearnWebCode/handlebars-webpack"/>
</node>
<node CREATED="1516298832642" FOLDED="true" ID="ID_704841380" MODIFIED="1516298873225" TEXT="Precompiling">
<node CREATED="1516292923545" ID="ID_356104489" MODIFIED="1516292969112">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      see: Watch and Code repo: experiments/handlebars/precompiled:
    </p>
    <p>
      (1) Extract template into a handlebars file (e.g. `groceries-template.handlebars`)
    </p>
    <p>
      (2) Create compiled template: $ handlebars groceries-template.handlebars -f groceries-template.js
    </p>
    <p>
      (3) Remove template sections from html (compare `groceries-list.html` with `groceries-list-precompiled.html`)
    </p>
    <p>
      (4) Include compiled script and create new template variable: see `groceries-list-precompiled.html`
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1516298885643" FOLDED="true" ID="ID_55264908" MODIFIED="1516395628341" TEXT="Tutorials/Guides">
<node CREATED="1516193982545" ID="ID_1787679692" LINK="https://zordius.github.io/HandlebarsCookbook/" MODIFIED="1516193990064" TEXT="https://zordius.github.io/HandlebarsCookbook/"/>
<node CREATED="1514317160838" ID="ID_895007255" LINK="https://github.com/helpers/handlebars-helpers" MODIFIED="1514317167356" TEXT="https://github.com/helpers/handlebars-helpers"/>
</node>
</node>
<node CREATED="1516293002683" FOLDED="true" ID="ID_1184811086" MODIFIED="1516293009408" TEXT="Other">
<node CREATED="1516193825488" ID="ID_1654025155" LINK="https://github.com/jonschlinkert/template-helpers" MODIFIED="1516193843514" TEXT="https://github.com/jonschlinkert/template-helpers"/>
</node>
</node>
<node CREATED="1514326195177" FOLDED="true" ID="ID_994135433" MODIFIED="1517161999497" TEXT="Testing">
<node CREATED="1514240526709" FOLDED="true" ID="ID_1055102508" MODIFIED="1517161997805" TEXT="Jasmine">
<node CREATED="1514293716348" ID="ID_925565954" MODIFIED="1514293831600" TEXT="fail(); // to avoid false positives, always start with failing tests"/>
<node CREATED="1514240535189" ID="ID_1035716587" MODIFIED="1516395651033">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Matchers
    </p>
  </body>
</html></richcontent>
<node CREATED="1514242258759" ID="ID_1588309625" MODIFIED="1514293977485" TEXT="inverse: not.toBe / not.toEqual / not.toThrow / etc"/>
<node CREATED="1514240539237" ID="ID_1413255640" MODIFIED="1514240588272" TEXT="toBe // strict comparisons ==="/>
<node CREATED="1514240590320" ID="ID_1752458328" MODIFIED="1514240672020" TEXT="toEqual // coersive comparisons =="/>
<node CREATED="1514240634805" ID="ID_818165969" MODIFIED="1514240686706" TEXT="toMatch // regular expressions"/>
<node CREATED="1514240692433" ID="ID_497530613" MODIFIED="1514240699370" TEXT="toBeDefined // comparison against `undefined` expect(foo).toBeDefined();"/>
<node CREATED="1514240710082" ID="ID_31468953" MODIFIED="1514240716384" TEXT="toBeUndefined&#x9;// comparison against `undefined` expect(foo).not.tobeUnDefined();"/>
<node CREATED="1514242356186" ID="ID_1234490299" MODIFIED="1514242464963" TEXT="toBeNaN // nonsensical number values"/>
<node CREATED="1514240717634" ID="ID_480727163" MODIFIED="1514240732941" TEXT="toBeNull // comparison against `null`"/>
<node CREATED="1514240740907" ID="ID_1730524616" MODIFIED="1514240748866" TEXT="toBeTruthy // boolean casting testing"/>
<node CREATED="1514240756939" ID="ID_496375743" MODIFIED="1514242342066" TEXT="toBeFalsy // boolean casting testing"/>
<node CREATED="1514240775948" ID="ID_331812874" MODIFIED="1514240792862" TEXT="toContain // item within array or substring within string"/>
<node CREATED="1514240799468" ID="ID_891198534" MODIFIED="1514240804043" TEXT="toBeLessThan // a &lt; b"/>
<node CREATED="1514240808525" ID="ID_1149013071" MODIFIED="1514240811876" TEXT="toBeGreaterThan // b &gt; a"/>
<node CREATED="1514240817325" ID="ID_1426068469" MODIFIED="1514242592569" TEXT="toBeCloseTo // expect(12.34).toBeCloseTo(12.3, 1); // 1dp"/>
<node CREATED="1514240828085" ID="ID_268502564" MODIFIED="1514240832909" TEXT="toThrow // testing if function throws exception "/>
<node CREATED="1514240838869" ID="ID_232359353" MODIFIED="1514240844416" TEXT="toThrowError // testing for specific thrown exception expect(foo).toThrowError(TypeError, &quot;err&quot;);"/>
<node CREATED="1514293102680" FOLDED="true" ID="ID_1678304327" MODIFIED="1514293871099" TEXT="jasmine.any(String, Number, Function, Object)">
<node CREATED="1514293141849" ID="ID_1271522689" MODIFIED="1514293429565">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;jasmine.any&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;matches any value&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect({}).toEqual(jasmine.any(Object)); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(12).toEqual(jasmine.any(Number)); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;describe(&quot;when used with a spy&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;it(&quot;is useful for comparing arguments&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;var foo = jasmine.createSpy('foo'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;foo(12, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return true; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;expect(foo).toHaveBeenCalledWith(jasmine.any(Number), jasmine.any(Function)); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1514285764875" ID="ID_1649327402" MODIFIED="1514293529003" TEXT="expect(rand()).toEqual(jasmine.any(Number)); // true"/>
<node CREATED="1514285788507" ID="ID_1074791848" MODIFIED="1514293524540" TEXT="expect(&quot;Hello world&quot;).toEqual(jasmine.any(String)); // true"/>
<node CREATED="1514285796843" ID="ID_1554284450" MODIFIED="1514293519724" TEXT="expect({}).toEqual(jasmine.any(Object)); // true"/>
<node CREATED="1514285805212" ID="ID_1543577626" MODIFIED="1514293516074" TEXT="expect(new myObject).toEqual(jasmine.any(myObject)); // true"/>
</node>
<node CREATED="1514293230075" FOLDED="true" ID="ID_696025742" MODIFIED="1514293535424" TEXT="jasmine.anything">
<node CREATED="1514293260340" ID="ID_1345017227" MODIFIED="1514293366994">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;jasmine.anything&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;matches anything&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(1).toEqual(jasmine.anything()); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;describe(&quot;when used with a spy&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;it(&quot;is useful when the argument can be ignored&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;var foo = jasmine.createSpy('foo'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;foo(12, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return false; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;// returns true if the actual value is not null or undefined. </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;expect(foo).toHaveBeenCalledWith(12, jasmine.anything()); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514292438555" FOLDED="true" ID="ID_1206488969" MODIFIED="1514293671320" TEXT="jasmine.objectContaining">
<node CREATED="1514293578831" ID="ID_84567989" MODIFIED="1514293601721">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;jasmine.objectContaining&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var foo; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;beforeEach(function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;foo = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;a: 1, </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;b: 2, </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;bar: &quot;baz&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;matches objects with the expect key/value pairs&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(foo).toEqual(jasmine.objectContaining({ </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;bar: &quot;baz&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;})); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(foo).not.toEqual(jasmine.objectContaining({ </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;c: 37 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;})); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;describe(&quot;when used with a spy&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;it(&quot;is useful for comparing arguments&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;var callback = jasmine.createSpy('callback'); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;callback({ </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;bar: &quot;baz&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;expect(callback).toHaveBeenCalledWith(jasmine.objectContaining({ </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;bar: &quot;baz&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;})); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160; expect(callback).not.toHaveBeenCalledWith(jasmine.objectContaining({ </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;c: 37 </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;})); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514292448035" FOLDED="true" ID="ID_379178919" MODIFIED="1514293863464" TEXT="jasmine.arrayContaining">
<node CREATED="1514293786422" ID="ID_1593307253" MODIFIED="1514293815766">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;jasmine.arrayContaining&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var foo; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;beforeEach(function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;foo = [1, 2, 3, 4]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;matches arrays with some of the values&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(foo).toEqual(jasmine.arrayContaining([3, 1])); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(foo).not.toEqual(jasmine.arrayContaining([6])); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;describe(&quot;when used with a spy&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;it(&quot;is useful when comparing arguments&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;var callback = jasmine.createSpy('callback'); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;callback([1, 2, 3, 4]); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160; expect(callback).toHaveBeenCalledWith(jasmine.arrayContaining([4, 2, 3])); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160; expect(callback).not.toHaveBeenCalledWith(jasmine.arrayContaining([5, 2])); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514292458715" FOLDED="true" ID="ID_41859978" MODIFIED="1514293964700" TEXT="jasmine.stringMatching">
<node CREATED="1514293907034" ID="ID_1531274235" MODIFIED="1514293925714">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">describe('jasmine.stringMatching', function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;matches as a regexp&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect({foo: 'bar'}).toEqual({foo: jasmine.stringMatching(/^bar$/)}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect({foo: 'foobarbaz'}).toEqual({foo: jasmine.stringMatching('bar')}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;describe(&quot;when used with a spy&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;it(&quot;is useful for comparing arguments&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;var callback = jasmine.createSpy('callback'); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;callback('foobarbaz'); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;expect(callback).toHaveBeenCalledWith(jasmine.stringMatching('bar')); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160; expect(callback).not.toHaveBeenCalledWith(jasmine.stringMatching(/^bar$/)); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1514242715881" FOLDED="true" ID="ID_1178645234" MODIFIED="1514294609194" TEXT="Custom Matchers">
<node CREATED="1514294401961" ID="ID_930794827" MODIFIED="1514294589472">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// custom matcher: secondArrayItem </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;custom asymmetry&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var tester = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;asymmetricMatch: function(actual) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;var secondArrayItem&#160;= actual.split(',')[1]; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;return secondArrayItem&#160;=== 'bar'; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;dives in deep&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(&quot;foo,bar,baz,quux&quot;).toEqual(tester); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;describe(&quot;when used with a spy&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;it(&quot;is useful for comparing arguments&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;var callback = jasmine.createSpy('callback'); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;callback('foo,bar,baz'); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;expect(callback).toHaveBeenCalledWith(tester); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1514242722001" ID="ID_1562354898" MODIFIED="1514294326819">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// custom matcher: toBeLarge </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">beforeEach(function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;this.addMatchers({ </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;toBeLarge: function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;// this.message is explanatory ouput </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;this.message = function()&#160;{ </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// this.actual is the argument to expect e.g., expect(this.actual) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return &quot;Expected &quot; + this.actual + &quot; to be large&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;// test condition returning boolean </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;return this.actual &gt; 100; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// usage: </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">expect(5).toBeLarge();&#160;&#160;&#160;&#160;&#160;&#160;// failure </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">expect(200).toBeLarge();&#160;&#160;&#160;&#160;// success </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">expect(12).not.toBeLarge(); // success&#160;&#160;&#160;&#160;&#160; </font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1514245139795" ID="ID_456719700" MODIFIED="1514294373317">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// custom matcher: toBeWithinRangeOf </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">beforeEach(function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;this.addMatchers({ </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;toBeWithinRangeOf: function(distance, base) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;// this.mesage is explanatory output </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;this.message = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;var lower = base - distance; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;var upper = base + distance; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// this.actual is the argument passed to expect e.g. expect(this.actual) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return &quot;Expected &quot; + this.actual + &quot; to be between &quot; + </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;lower + &quot; and &quot; + upper + &quot; (inclusive)&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;// test condition returning boolean </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;return Math.abs(this.actual - base) &lt;= distance; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">// usage: expect 6 to be within 2 of 5 (between 3 (5-2) and 7 (5+2), inclusive). </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">expect(6).toBeWithinRangeOf(2, 5);</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514243560963" FOLDED="true" ID="ID_1889986465" MODIFIED="1516299974134" TEXT="beforeEach() + afterEach()">
<node CREATED="1514244568441" ID="ID_762820811" MODIFIED="1514245080287">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;employee&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var employee; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// execute some code before every spec </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;beforeEach(function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;employee = new Employee; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// spec </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;has a name&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(employee.name).toBeDefined(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// spec </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;has a role&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(employee.role).toBeDefined(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1514243729056" ID="ID_1929899501" MODIFIED="1514246861477" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">describe(&quot;Calculator&quot;, function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var calculator = new Calculator; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// execute some code after&#160;each spec </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;afterEach(function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;calculator.reset(); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// spec </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;it(&quot;can add two positive integers&quot;, function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;expect(calculator.add(5, 12)).toEqual(17); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;// spec </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;it(&quot;can add two negative integers&quot;, function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">}); </font>
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node CREATED="1514243975903" FOLDED="true" ID="ID_1216909851" MODIFIED="1516299995948" TEXT="Nesting Suites">
<node CREATED="1514244114435" ID="ID_12787749" MODIFIED="1514246878194">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">describe('google') </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;describe('search') </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;it('should return a search result') </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;describe('adwords') </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;it('should monetise search results') </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;describe('gmail') </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;it('should extract data about the user')</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514243988031" FOLDED="true" ID="ID_1449108954" MODIFIED="1516299993208" TEXT="Skipping Specs + Suites">
<node CREATED="1514244017937" ID="ID_546364392" MODIFIED="1514244037816" TEXT="xit(&apos;skipping this spec&apos;)"/>
<node CREATED="1514243996610" ID="ID_1957750726" MODIFIED="1514244032345" TEXT="xdescribe(&apos;skipping this suite&apos;)"/>
</node>
<node CREATED="1514285822276" FOLDED="true" ID="ID_738801362" MODIFIED="1516395649766" TEXT="Spies">
<node CREATED="1514286560989" ID="ID_260111689" LINK="https://jasmine.github.io/2.8/introduction#section-Spies" MODIFIED="1514288696726">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Specifies how code should work:
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1514287397458" FOLDED="true" ID="ID_1762566614" MODIFIED="1514289323628" TEXT=".toHaveBeenCalled()">
<node CREATED="1514286828644" ID="ID_1362113484" MODIFIED="1514289320185">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// initialization </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var Dictionary = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.hello = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;hello&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.world = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;world&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var Person = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Person.prototype.sayHelloWorld = function(dict) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return dict.hello() + &quot; &quot; + dict.world(); // &quot;hello world&quot;</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// test spec </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;Person&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it('uses the dictionary to say &quot;hello world&quot;', function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var dictionary = new Dictionary; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var person = new Person; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;spyOn(dictionary, &quot;hello&quot;); // replace Dictionary.prototype.hello with spy </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;spyOn(dictionary, &quot;world&quot;); // replace Dictionary.prototype.world with spy </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;person.sayHelloWorld(dictionary);&#160;&#160;&#160; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(dictionary.hello).toHaveBeenCalled(); // spy reports back </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(dictionary.world).toHaveBeenCalled(); // spy reports back </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514287894938" FOLDED="true" ID="ID_1971238922" MODIFIED="1514289330427" TEXT=".toHaveBeenCalledTimes()">
<node CREATED="1514286828644" ID="ID_1444589911" MODIFIED="1514289148587">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// initialization </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var Dictionary = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.hello = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;hello&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.world = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;world&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var Person = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Person.prototype.sayHelloWorld = function(dict) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return dict.hello() + &quot; &quot; + dict.world(); // &quot;hello world&quot;</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// test spec </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;Person&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it('uses the dictionary to say &quot;hello world&quot;', function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var dictionary = new Dictionary; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var person = new Person; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;spyOn(person, &quot;sayHelloWorld&quot;); // replace person.sayHelloWorld with spy&#160;</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;person.sayHelloWorld(dictionary); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160; expect(person.sayHelloWorld).toHaveBeenCalledTimes(1);</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514287894938" FOLDED="true" ID="ID_1412246093" MODIFIED="1514289335984" TEXT=".toHaveBeenCalledWith()">
<node CREATED="1514286828644" ID="ID_1392453033" MODIFIED="1514289134114">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// initialization </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var Dictionary = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.hello = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;hello&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.world = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;world&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var Person = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Person.prototype.sayHelloWorld = function(dict) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return dict.hello() + &quot; &quot; + dict.world(); // &quot;hello world&quot;</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// test spec </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;Person&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it('uses the dictionary to say &quot;hello world&quot;', function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var dictionary = new Dictionary; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var person = new Person; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;spyOn(person, &quot;sayHelloWorld&quot;); // replace person.sayHelloWorld with spy&#160;</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;person.sayHelloWorld(dictionary); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(person.sayHelloWorld).toHaveBeenCalledWith(dictionary);</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514288126281" FOLDED="true" ID="ID_645364999" MODIFIED="1514291386535" TEXT=".and.callThrough()">
<node CREATED="1514286828644" ID="ID_1788379024" MODIFIED="1514289379688">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// initialization </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var Dictionary = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.hello = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;hello&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.world = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;world&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var Person = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Person.prototype.sayHelloWorld = function(dict) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return dict.hello() + &quot; &quot; + dict.world(); // &quot;hello world&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// test spec </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;Person&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it('uses the dictionary to say &quot;hello world&quot;', function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var dictionary = new Dictionary; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var person = new Person; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;spyOn(person, &quot;sayHelloWorld&quot;).and.callThrough(); // track calls and return&#160;&#160;&#160;&#160; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var result = person.sayHelloWorld(dictionary);</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(result).toEqual(&quot;hello world&quot;);&#160;// only possible with andCallThrough </font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160; <font face="Inconsolata" size="4">expect(person.sayHelloWorld).toHaveBeenCalled(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514288126281" FOLDED="true" ID="ID_384860938" MODIFIED="1514291159063" TEXT=".and.returnValue()">
<node CREATED="1514286828644" ID="ID_1242670115" MODIFIED="1514289409219">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// initialization </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var Dictionary = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.hello = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;hello&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.world = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;world&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var Person = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Person.prototype.sayHelloWorld = function(dict) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return dict.hello() + &quot; &quot; + dict.world(); // &quot;hello world&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// test spec </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;Person&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it('uses the dictionary to say &quot;hello world&quot;', function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var dictionary = new Dictionary; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var person = new Person; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;spyOn(dictionary, &quot;hello&quot;).and.returnValue(&quot;bonjour&quot;); // force return&#160;&#160;&#160;&#160; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var result = person.sayHelloWorld(dictionary);</font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(result).toEqual(&quot;bonjour world&quot;);&#160;// only possible with and.returnValue </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514290878973" FOLDED="true" ID="ID_832641419" MODIFIED="1514291547412" TEXT=".and.callFake() // replace fn with fake fn ">
<node CREATED="1514290891365" ID="ID_272209812" MODIFIED="1514291241511">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// initialization </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var Dictionary = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.hello = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;hello&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.world = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;world&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var Person = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Person.prototype.sayHelloWorld = function(dict) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return dict.hello() + &quot; &quot; + dict.world(); // &quot;hello world&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// test spec </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;simulate API calls&quot;, function) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;can call a fake function&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var fakeHello = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;alert(&quot;I am a spy! Ha ha!&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;return &quot;hello&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var dictionary = new Dictionary(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;spyOn(dictionary, &quot;hello&quot;).and.callFake(fakeHello); // intercept .hello </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;dictionary.hello(); // alert: &quot;I am a spy! Ha ha!&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514291395462" FOLDED="true" ID="ID_1522624682" MODIFIED="1514292935689" TEXT="jasmine.createSpy()">
<node CREATED="1514290891365" ID="ID_240621639" MODIFIED="1514291545395">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// initialization </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var Dictionary = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.hello = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;hello&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.world = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;world&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var Person = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Person.prototype.sayHelloWorld = function(dict) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return dict.hello() + &quot; &quot; + dict.world(); // &quot;hello world&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// test spec </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;creatingSpy&quot;, function) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;can have a spy function&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;var person = new Person(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;person.getName = jasmine.createSpy(&quot;SpyName&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;person.getName(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(person.getName).toHaveBeenCalled(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}); </font>
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1514292247830" ID="ID_1934252821" MODIFIED="1514292914859">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// initialization </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">var Dictionary = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.hello = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;hello&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Dictionary.prototype.world = function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return &quot;world&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">var Person = function() {}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">Person.prototype.sayHelloWorld = function(dict) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return dict.hello() + &quot; &quot; + dict.world(); // &quot;hello world&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">// test spec </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;creatingSpy&quot;, function) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;can chain methods on the created spy&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;person.getSecretAgentName = </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;jasmine.createSpy(&quot;SpyName1&quot;).and.returnValue(&quot;James Bond&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(person.getSecretAgentName.toEqual(&quot;James Bond); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;can call fake methods on the created spy&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;person.getRealName = jasmine.createSpy(&quot;spyName2&quot;).and.callFake(function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;alert(&quot;I am also a spy! Ha ha!&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;return &quot;John Doe&quot;; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(person.getRealName.toEqual(&quot;John Doe&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1514292555362" ID="ID_1317842498" MODIFIED="1514292839582">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;A spy, when created manually&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var whatAmI; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;beforeEach(function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;whatAmI = jasmine.createSpy('whatAmI'); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;whatAmI(&quot;I&quot;, &quot;am&quot;, &quot;a&quot;, &quot;spy&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;is named, which helps in error reporting&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(whatAmI.and.identity()).toEqual('whatAmI'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;tracks that the spy was called&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(whatAmI).toHaveBeenCalled(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;tracks its number of calls&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(whatAmI.calls.count()).toEqual(1); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;tracks all the arguments of its calls&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(whatAmI).toHaveBeenCalledWith(&quot;I&quot;, &quot;am&quot;, &quot;a&quot;, &quot;spy&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;allows access to the most recent call&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(whatAmI.calls.mostRecent().args[0]).toEqual(&quot;I&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514292592134" FOLDED="true" ID="ID_1476023657" MODIFIED="1514292796369" TEXT="jasmine.createSpyObj();">
<node CREATED="1514292673969" ID="ID_710962509" MODIFIED="1514292705528">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;Multiple spies, when created manually&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var tape; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;beforeEach(function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;tape = jasmine.createSpyObj('tape', ['play', 'pause', 'stop', 'rewind']); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;tape.play(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;tape.pause(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;tape.rewind(0); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;creates spies for each requested function&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(tape.play).toBeDefined(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(tape.pause).toBeDefined(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(tape.stop).toBeDefined(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(tape.rewind).toBeDefined(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;tracks that the spies were called&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(tape.play).toHaveBeenCalled(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(tape.pause).toHaveBeenCalled(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(tape.rewind).toHaveBeenCalled(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(tape.stop).not.toHaveBeenCalled(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;tracks all the arguments of its calls&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(tape.rewind).toHaveBeenCalledWith(0); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514291644845" FOLDED="true" ID="ID_336359204" MODIFIED="1514291755808" TEXT=".and.throwError()">
<node CREATED="1514291694157" ID="ID_895065716" MODIFIED="1514291718504">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;A spy, when configured to throw an error&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var foo, bar; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;beforeEach(function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;foo = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;setBar: function(value) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;bar = value; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;spyOn(foo, &quot;setBar&quot;).and.throwError(&quot;quux&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;throws the value&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;foo.setBar(123) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;}).toThrowError(&quot;quux&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514291775553" FOLDED="true" ID="ID_1925734839" MODIFIED="1514291897982" TEXT=".and.stub()">
<node CREATED="1514291804329" ID="ID_10268239" MODIFIED="1514291818777">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">describe(&quot;A spy&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var foo, bar = null; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;beforeEach(function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;foo = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;setBar: function(value) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;bar = value; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;spyOn(foo, 'setBar').and.callThrough(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;it(&quot;can call through and then stub in the same spec&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;foo.setBar(123); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(bar).toEqual(123); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;foo.setBar.and.stub(); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;bar = null; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;foo.setBar(123); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;expect(bar).toBe(null); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1514289471499" FOLDED="true" ID="ID_1701756064" MODIFIED="1514290876986" TEXT=".calls property tracks and exposes every spy call">
<node CREATED="1514289489292" ID="ID_1331607166" MODIFIED="1514289549415" TEXT=".calls.any() - returns false if the spy has not been called, and true when at least one call"/>
<node CREATED="1514289505492" ID="ID_330502833" MODIFIED="1514289515324" TEXT=".calls.count() - returns the number of times the spy was called"/>
<node CREATED="1514289570130" ID="ID_1192902370" MODIFIED="1514289582094" TEXT=".calls.argsFor(index) - returns the arguments passed to call number index"/>
<node CREATED="1514289597215" ID="ID_8047233" MODIFIED="1514289604379" TEXT=".calls.allArgs() - returns the arguments to all calls"/>
<node CREATED="1514289621328" ID="ID_273594841" MODIFIED="1514289627578" TEXT=".calls.all() - returns the context (the this) and arguments passed all calls"/>
<node CREATED="1514289661273" ID="ID_220553859" MODIFIED="1514289664921" TEXT=".calls.mostRecent(): returns the context (the this) and arguments for the most recent call"/>
<node CREATED="1514289701010" ID="ID_98815873" MODIFIED="1514289707363" TEXT=".calls.first() - returns the context (the this) and arguments for the first call  "/>
<node CREATED="1514290031947" ID="ID_803868592" MODIFIED="1514290038384" TEXT=".calls.reset() - clears all tracking for a spy"/>
<node CREATED="1514289823581" FOLDED="true" ID="ID_1994258251" MODIFIED="1514290041682" TEXT="When inspecting the return from .all(), .mostRecent() and .first(), the object property is set to the value of this when the spy was called.">
<node CREATED="1514289961641" ID="ID_152268891" MODIFIED="1514289994353">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">it(&quot;tracks the context&quot;, function() { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var spy = jasmine.createSpy('spy'); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var baz = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;fn: spy </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var quux = { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;fn: spy </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;baz.fn(123); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;quux.fn(456); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;expect(spy.calls.first().object).toBe(baz); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;expect(spy.calls.mostRecent().object).toBe(quux); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">});</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1514326221445" FOLDED="true" ID="ID_476146373" MODIFIED="1516300003972" TEXT="Given-When-Then Format">
<node CREATED="1514326246536" ID="ID_780471933" MODIFIED="1514326952170">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata">// use the given-when-then format for precision about what is being tested </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Inconsolata">describe(&quot;Given a string containing 'foo'&quot;, function() {&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;var someString; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;beforeEach(function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;someString = &quot;foo&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;describe(&quot;When I append 'bar'&quot;, function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;beforeEach(function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;someString += &quot;bar&quot;; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;it(&quot;Then the string is 'foobar'&quot;, function() { </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;&#160;&#160;expect(someString).toBe(&quot;foobar&quot;); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">&#160;&#160;}); </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">});</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1514326738203" ID="ID_1514030940" LINK="https://stackoverflow.com/questions/33984182/why-jasmine-is-called-a-bdd-testing-framework-even-if-no-given-when-then-sup/38752262#38752262" MODIFIED="1514326769924" TEXT="Stack Overflow: Jasmine and &#x201c;Given/When/Then&#x201d; "/>
</node>
<node CREATED="1514294032398" FOLDED="true" ID="ID_1570968004" MODIFIED="1516299979373" TEXT="TODO">
<node CREATED="1514294116503" ID="ID_157642006" LINK="https://jasmine.github.io/2.8/introduction#section-Jasmine_Clock" MODIFIED="1514294164593" TEXT="https://jasmine.github.io/2.8/introduction#section-Jasmine_Clock"/>
<node CREATED="1514294036719" ID="ID_965858298" LINK="https://jasmine.github.io/2.8/introduction#section-Asynchronous_Support" MODIFIED="1514294051817" TEXT="https://jasmine.github.io/2.8/introduction#section-Asynchronous_Support"/>
</node>
</node>
</node>
<node CREATED="1516370604057" FOLDED="true" ID="ID_1377183653" MODIFIED="1516395640656" TEXT="Tooling">
<node CREATED="1516370609266" FOLDED="true" ID="ID_437878130" MODIFIED="1516395635993" TEXT="npm">
<node CREATED="1516370612833" ID="ID_1637583862" MODIFIED="1516370646540" TEXT="npm install {repo} --save // saves dev dependency to package.json"/>
</node>
</node>
<node CREATED="1514317000222" FOLDED="true" ID="ID_816134582" MODIFIED="1517162549988" TEXT="Format/Style Guides">
<node CREATED="1514317005648" ID="ID_312806319" LINK="https://github.com/airbnb/javascript" MODIFIED="1514317031814" TEXT="Airbnb JavaScript Style Guide"/>
<node CREATED="1514317035164" FOLDED="true" ID="ID_1939787805" LINK="https://prettier.io/" MODIFIED="1514317119678" TEXT="Prettier: Code Formatter">
<node CREATED="1514317076019" ID="ID_1503005535" LINK="https://prettier.io/docs/en/options.html" MODIFIED="1514317098913" TEXT="https://prettier.io/docs/en/options.html"/>
<node CREATED="1514317100996" ID="ID_543673782" LINK="https://packagecontrol.io/packages/JsPrettier" MODIFIED="1514317114899" TEXT="https://packagecontrol.io/packages/JsPrettier"/>
</node>
<node CREATED="1514317309390" ID="ID_1155320606" LINK="https://github.com/bendc/frontend-guidelines" MODIFIED="1514317410772" TEXT="Frontend Guidelines (JS, HTML, CSS)"/>
<node CREATED="1517162011772" ID="ID_1896221129" LINK="http://codeguide.co/" MODIFIED="1517162022844" TEXT="Code Guide by @mdo"/>
<node CREATED="1517162082922" FOLDED="true" ID="ID_1802402132" LINK="http://editorconfig.org/" MODIFIED="1517162198320" TEXT="EditorConfig">
<node CREATED="1517162187630" ID="ID_500913604" LINK="https://github.com/twbs/bootstrap/blob/master/.editorconfig" MODIFIED="1517162195824" TEXT="https://github.com/twbs/bootstrap/blob/master/.editorconfig"/>
</node>
</node>
</node>
<node CREATED="1514245492213" FOLDED="true" ID="ID_554907903" MODIFIED="1514317680988" POSITION="right" TEXT="HTML">
<node CREATED="1514317414978" FOLDED="true" ID="ID_400681388" MODIFIED="1514317449445" TEXT="Format/Style Guides">
<node CREATED="1514317309390" ID="ID_1174527434" LINK="https://github.com/bendc/frontend-guidelines" MODIFIED="1514317410772" TEXT="Frontend Guidelines (JS, HTML, CSS)"/>
</node>
<node CREATED="1514245497549" ID="ID_1434621887" LINK="https://dev.w3.org/html5/html-author/charref" MODIFIED="1514317679329" TEXT="Character Entities"/>
</node>
<node CREATED="1514317434411" FOLDED="true" ID="ID_266895989" MODIFIED="1514317674178" POSITION="right" TEXT="CSS">
<node CREATED="1514317414978" FOLDED="true" ID="ID_115795446" MODIFIED="1514317450667" TEXT="Format/Style Guides">
<node CREATED="1514317309390" ID="ID_980073664" LINK="https://github.com/bendc/frontend-guidelines" MODIFIED="1514317410772" TEXT="Frontend Guidelines (JS, HTML, CSS)"/>
</node>
</node>
<node CREATED="1514317513021" FOLDED="true" ID="ID_1006448547" MODIFIED="1519233198331" POSITION="right" TEXT="Git">
<node CREATED="1519206409307" FOLDED="true" ID="ID_760363339" MODIFIED="1519233197443" TEXT="Workflow">
<node CREATED="1519205418019" FOLDED="true" ID="ID_1954868235" MODIFIED="1519233196131" TEXT="Feature branches">
<node CREATED="1519205943133" ID="ID_1435644702" MODIFIED="1519207694150" TEXT="A &quot;feature branch&quot; or &quot;topic branch&quot; is a separate branch of the repo used to implement a single feature in your project. Create a branch for each new feature you develop instead of commiting all your new features/changes into the master branch at once."/>
<node CREATED="1519206167045" ID="ID_895149430" MODIFIED="1519206683080" TEXT="Feature branches let you concentrate on a single specific task at one time. They let you commit  small changes while protecting collaborators from your changes until the feature is complete. What&#x2019;s more, if you need to jump off of a particular feature to work on something else, such as an urgent bug fix, you need not worry about stashing your changes or corrupting your repo."/>
<node CREATED="1519206723254" ID="ID_1307435453" MODIFIED="1519209212402">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Overview:
    </p>
    <p>
      - Start on master
    </p>
    <p>
      - Create a new feature branch
    </p>
    <p>
      - Implement your changes on that branch
    </p>
    <p>
      - Push the feature branch to your remote repo
    </p>
    <p>
      - Create a pull request for your new changes
    </p>
  </body>
</html></richcontent>
<node CREATED="1519206910788" ID="ID_504281381" MODIFIED="1519206915406" TEXT="Start on master">
<node CREATED="1519206916664" ID="ID_217233260" MODIFIED="1519207835155">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata"># switch to the master branch </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">git checkout master </font>
    </p>
    <p>
      <font size="4" face="Inconsolata"># fetch the latest changes from the remote git repo </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">git pull origin master</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1519207127850" ID="ID_760340383" MODIFIED="1519207532712" TEXT="Create new feature branch">
<node CREATED="1519207163172" ID="ID_1396656986" MODIFIED="1519209262142">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata"># create and check out new local branch new_feature</font>
    </p>
    <p>
      <font size="4" face="Inconsolata"># new_feature_branch&#160;is a &quot;copy&quot; of master </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">git checkout -b new_feature_branch </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">git status</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1519207414495" FOLDED="true" ID="ID_1960214639" MODIFIED="1519209265755" TEXT="Implement changes on feature branch">
<node CREATED="1519207463437" ID="ID_1275353695" MODIFIED="1519208236147" TEXT="Make and commit small incremental changes using descriptive commit messages so the history of changes is easy to follow."/>
</node>
<node CREATED="1519209213930" ID="ID_847453075" MODIFIED="1519209215281" TEXT="Push the feature branch to your remote repo">
<node CREATED="1519209297820" ID="ID_43472609" MODIFIED="1519209487259">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata"># push your feature branch to a new branch on origin with the same name </font>
    </p>
    <p>
      <font size="4" face="Inconsolata"># this distributes your changes and allows others to review before the PR</font>
    </p>
    <p>
      <font size="4" face="Inconsolata">git push origin new_feature_branch</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1519209572399" ID="ID_1894065547" MODIFIED="1519209579546" TEXT="Create a pull request">
<node CREATED="1519209589744" ID="ID_1894782895" MODIFIED="1519209688117" TEXT="(Check git tooling/implementation for how to make pull requests using that system)"/>
<node CREATED="1519209580336" ID="ID_1691319483" MODIFIED="1519209670756" TEXT="Once you have written out the description for the new PR, submit it and what for your teammate to review. You can always get their attention by mentioning them by their username: &quot;Please review this updated form, @teammate&quot;."/>
</node>
</node>
</node>
<node CREATED="1519205426581" FOLDED="true" ID="ID_1036991506" MODIFIED="1519209202435" TEXT="Pull requests">
<node CREATED="1519208217834" ID="ID_1436743053" MODIFIED="1519208284527" TEXT="When you&apos;re ready to have your changes reviewed for inclusion in the project, that&apos;s when you submit a pull request. You should think of your pull request as a request for a code review. The project maintainers may accept it immediately, ask questions and point out tweaks that need to be made, or reject it outright. (There&apos;s a reason it&apos;s called a pull request, not a pull demand.) The commits may be taken as-is, or the maintainer may see fit to fix up or squash the changes into fewer commits."/>
<node CREATED="1519208460917" ID="ID_1579742397" MODIFIED="1519208465757" TEXT="Once you&apos;ve created a pull request, you can push commits from your topic branch to add them to your existing pull request. These commits will appear in chronological order within your pull request. Other contributors can review your proposed changes, add review comments, contribute to the pull request discussion, and even add commits to the pull request. After you&apos;re happy with the proposed changes, you can merge the pull request. If you&apos;re working in a shared repository model, the proposed changes will be merged from the head branch to the base branch that was specified in the pull request."/>
<node CREATED="1519208926998" ID="ID_1126422488" MODIFIED="1519208930236" TEXT="When thinking about branches, remember that the base branch is where changes should be applied, the head branch contains what you would like to be applied."/>
<node CREATED="1519208720024" ID="ID_1558273829" MODIFIED="1519208721728" TEXT="If you don&apos;t have write access to the repository where you&apos;d like to create a pull request, you must create a fork, or copy, of the repository first."/>
<node CREATED="1519208993305" ID="ID_1189454767" MODIFIED="1519209010987" TEXT="If the pull request does not have any merge conflicts, you can merge it. If the pull request does have merge conflicts, or if you&apos;d like to test the changes before merging, you can check out the pull request locally and merge it using the command line. If you decide you don&apos;t want the changes in a topic branch to be merged to the upstream branch, you can close the pull request without merging."/>
<node CREATED="1519209182738" ID="ID_627789454" MODIFIED="1519209184539" TEXT="Repository administrators can require that all pull requests receive at least one approved review from someone with write or admin permissions or from a designated code owner before they&apos;re merged into a protected branch. When required reviews are enabled, anyone with access to the repository can approve changes in a pull request. However, to merge your pull request you need someone who has write or admin permissions in the repository to approve your pull request&apos;s changes in their review. If review is required from a designated code owner and the pull request affects code that has a designated owner, approval from that owner is required. If a person who requested changes isn&apos;t available to give an approved review, or if a pull request has changed significantly since it was reviewed, repository administrators or people with write access can dismiss a review. After all required reviewers have approved a pull request, you won&apos;t be able to merge it if there are other open pull requests with pending or rejected reviews and those pull requests have a head branch pointing to the same commit. Someone with write or admin permissions will need to approve or dismiss the blocking review on the other pull requests before you can merge."/>
</node>
<node CREATED="1519205434317" ID="ID_1876820129" MODIFIED="1519205435096" TEXT="What are the different collaboration workflows in Git?"/>
<node CREATED="1519205408324" ID="ID_1796923776" MODIFIED="1519205409299" TEXT="How do I resolve conflicts? For example, mine versus theirs versus manual merge"/>
<node CREATED="1519205398690" ID="ID_533326416" MODIFIED="1519205400041" TEXT="How do I merge or rebase my branch, and what is the difference?"/>
<node CREATED="1519207927799" FOLDED="true" ID="ID_1663114065" MODIFIED="1519208220276" TEXT="Precommit checks">
<node CREATED="1519207959783" ID="ID_322552146" MODIFIED="1519208133777">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Inconsolata"># run unit tests and build steps to ensure no broken code or missing dependencies </font>
    </p>
    <p>
      <font size="4" face="Inconsolata"># check for whitespace changes, improper indentation, spaces, debug code/comments </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">git diff</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1519207355868" FOLDED="true" ID="ID_1670727869" MODIFIED="1519220931006" TEXT="Commit messages">
<node CREATED="1519207361252" ID="ID_608380713" MODIFIED="1519207409610" TEXT="One way to think about commit messages is that together they make up the recipe for your project: &#x201c;Add linting to application code&#x201d; or &#x201c;Add minification step&#x201d;"/>
</node>
</node>
<node CREATED="1519206383114" FOLDED="true" ID="ID_1259855987" MODIFIED="1519208038866" TEXT="Tutorials">
<node CREATED="1519205459600" ID="ID_1547038582" LINK="https://git-scm.com/book/en/v2" MODIFIED="1519206524193" TEXT="TODO: Pro Git (Book)"/>
<node CREATED="1519206393507" ID="ID_752554586" LINK="https://www.atlassian.com/git" MODIFIED="1519206501798" TEXT="TODO: https://www.atlassian.com/git"/>
<node CREATED="1514317519133" ID="ID_1770263563" LINK="http://ohshitgit.com/" MODIFIED="1519206510138" TEXT="TODO: http://ohshitgit.com/"/>
<node CREATED="1517348805125" ID="ID_612048248" LINK="https://sethrobertson.github.io/GitFixUm/fixup.html" MODIFIED="1519206516174" TEXT="TODO: https://sethrobertson.github.io/GitFixUm/fixup.html"/>
<node CREATED="1519206451717" ID="ID_1653562139" LINK="https://codewords.recurse.com/issues/two/git-from-the-inside-out" MODIFIED="1519206535491" TEXT="TODO: https://codewords.recurse.com/issues/two/git-from-the-inside-out"/>
<node CREATED="1519206486718" ID="ID_244456360" LINK="https://truss.works/blog/2014/12/31/a-lightweight-resilient-git-workflow-for-small-teams" MODIFIED="1519206543770" TEXT="TODO: https://truss.works/blog/2014/12/31/a-lightweight-resilient-git-workflow-for-small-teams"/>
<node CREATED="1519206598538" ID="ID_748752623" LINK="https://yangsu.github.io/pull-request-tutorial/" MODIFIED="1519206610875" TEXT="TODO: https://yangsu.github.io/pull-request-tutorial/"/>
<node CREATED="1519206621619" ID="ID_1809191004" LINK="https://github.com/susam/gitpr" MODIFIED="1519206635202" TEXT="TODO: Fork and Pull Request Workflow"/>
<node CREATED="1519207875162" ID="ID_183063663" LINK="https://contribute.jquery.org/commits-and-pull-requests/#commit-guidelines" MODIFIED="1519207889257" TEXT="https://contribute.jquery.org/commits-and-pull-requests/#commit-guidelines"/>
</node>
<node CREATED="1519206804945" FOLDED="true" ID="ID_1927285989" MODIFIED="1519208558672" TEXT="Tools">
<node CREATED="1519205592322" ID="ID_1699877986" LINK="https://about.gitlab.com/" MODIFIED="1519206284543" TEXT="GitLab"/>
<node CREATED="1519206285984" ID="ID_217319867" LINK="https://marketplace.visualstudio.com/items?itemName=fatihacet.gitlab-workflow" MODIFIED="1519206325451" TEXT="GitLab Workflow (VSCode plugin)"/>
</node>
<node CREATED="1519207752958" FOLDED="true" ID="ID_1368459519" MODIFIED="1519207852047" TEXT="Fixes">
<node CREATED="1519207756102" ID="ID_1359784101" MODIFIED="1519207826106">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Assuming you've just made an errant commit on master:
    </p>
    <p>
      <font size="4" face="Inconsolata"># &quot;Backs up&quot; your commit, creating a topic branch </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">$ git branch fix-spelling-error </font>
    </p>
    <p>
      <font size="4" face="Inconsolata"># Reset your master branch to the same state as upstream/master </font>
    </p>
    <p>
      <font size="4" face="Inconsolata">$ git reset --hard upstream/master</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1514718738906" FOLDED="true" ID="ID_1227959119" MODIFIED="1519226479825" POSITION="right" TEXT="Programming">
<node CREATED="1514718564015" FOLDED="true" ID="ID_1861092667" MODIFIED="1518599327864" TEXT="Recursion">
<node CREATED="1514718575085" ID="ID_722980615" MODIFIED="1514718737179">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">// remember to return the function to the calling function </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">function myRecursiveFunction(arg1, arg2) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// base case or exit recursive case </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;// recursive case </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return myRecursiveFunction(arg1, arg2Adjusted); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1515313734667" FOLDED="true" ID="ID_1068333360" MODIFIED="1518599340788" TEXT="Indirection">
<node CREATED="1515313745282" ID="ID_533761486" LINK="https://www.youtube.com/watch?v=Bks59AaHe1c" MODIFIED="1516360889919" TEXT="Fun Fun Function: Straight-line code over functions"/>
<node CREATED="1515313769101" ID="ID_1584929718" MODIFIED="1518599339108" TEXT="Be wary of introducing indirection when breaking down large code blocks into functions"/>
</node>
<node CREATED="1518367250903" FOLDED="true" ID="ID_511093166" MODIFIED="1518599348719" TEXT="Abstraction">
<node CREATED="1518367256020" ID="ID_1689062436" MODIFIED="1518378320670" TEXT="To prevent premature over-generalisation, before writing an abstract form, wait for at least three or four instances of code duplication so that you can more clearly see the general case."/>
</node>
<node CREATED="1518378515765" FOLDED="true" ID="ID_1506870756" MODIFIED="1518599352085" TEXT="Naming">
<node CREATED="1518378519716" ID="ID_1386937129" MODIFIED="1518378834737" TEXT="The name must always tell the truth"/>
</node>
<node CREATED="1517318019364" FOLDED="true" ID="ID_90481964" MODIFIED="1518599355713" TEXT="Arguments">
<node CREATED="1517318022655" ID="ID_483855764" MODIFIED="1517318042743" TEXT="1-3 args, use position parameters"/>
<node CREATED="1517318044097" ID="ID_1673719926" MODIFIED="1517318062105" TEXT="&gt; 3 args, use an options object"/>
</node>
<node CREATED="1515672095337" FOLDED="true" ID="ID_801956206" MODIFIED="1518599359747" TEXT="Functional">
<node CREATED="1515671958659" ID="ID_1420461087" MODIFIED="1515672120245">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Inconsolata" size="4">function stringManipulation(value, fn) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;var chars = value.split(&quot;&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return chars.map(function(char) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;&#160;&#160;return String.fromCharCode(fn(char.charCodeAt(0))) </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;}).join(&quot;&quot;); </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">function plus1(value) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return value + 1; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">function minus1(value) { </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">&#160;&#160;return value - 1; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Inconsolata" size="4">[3, 4].map(plus1) // [4, 5] </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">stringManipulation(&quot;ABC&quot;, plus1) // &quot;BCD&quot; </font>
    </p>
    <p>
      <font face="Inconsolata" size="4">stringManipulation(&quot;XYZ&quot;, plus1) // &quot;WXY&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1518361987942" FOLDED="true" ID="ID_1113026053" MODIFIED="1518599365532" TEXT="Declarative">
<node CREATED="1518362002833" ID="ID_1549027802" LINK="http://codon.com/hello-declarative-world" MODIFIED="1518362408175" TEXT="TODO: Hello, declarative world"/>
</node>
<node CREATED="1518293943829" FOLDED="true" ID="ID_1613324279" MODIFIED="1518599396415" TEXT="MVC">
<node CREATED="1518293969233" ID="ID_111733874" MODIFIED="1518294204878" TEXT="Model: Model code reflects real-world things. In a todo app, the Model would define what a &#x201c;task&#x201d; is and that a &#x201c;list&#x201d; is a collection of tasks.  "/>
<node CREATED="1518293995332" ID="ID_28882610" MODIFIED="1518294219682" TEXT="View: View code is made up of all the functions that directly interact with the user. In a todo app, the View code will define what the todos and lists looks like, visually. "/>
<node CREATED="1518294032275" ID="ID_578191618" MODIFIED="1518294256676" TEXT="Controller: Controller code acts as a liaison between the Model and the View, receiving user input and deciding what to do with it. In a todo app, the Controller could define how a user adds a task, or marks another as complete. The Controller connects the View&#x2019;s &quot;add&quot; button to the Model, so that when you click &#x201c;add task,&#x201d; the Model adds a new task."/>
</node>
</node>
<node CREATED="1514898019086" FOLDED="true" ID="ID_1902457702" MODIFIED="1519226486863" POSITION="right" TEXT="Tools">
<node CREATED="1514317477611" ID="ID_1193686789" LINK="https://github.com/latentflip/loupe" MODIFIED="1515169152976" TEXT="Loupe: Visualizing the JS Runtime at Runtime"/>
<node CREATED="1514898042325" ID="ID_1124825612" LINK="http://bartaz.github.io/ieee754-visualization/" MODIFIED="1514996133040" TEXT="Binary Representation of Base 10 Numbers"/>
<node CREATED="1514929507630" ID="ID_1581295907" LINK="http://usejsdoc.org/" MODIFIED="1514996120576" TEXT="JSDoc Code Documentation Guidelines"/>
<node CREATED="1514996069332" ID="ID_922838764" LINK="http://sideeffect.kr/popularconvention/" MODIFIED="1514996104733" TEXT="Popular Coding Conventions by Language "/>
<node CREATED="1515169441537" ID="ID_1719275075" LINK="http://dorey.github.io/JavaScript-Equality-Table/" MODIFIED="1515170358235" TEXT="JS Equality Table"/>
<node CREATED="1515864422548" ID="ID_1049969197" LINK="https://medium.com/the-node-js-collection/modern-javascript-explained-for-dinosaurs-f695e9747b70" MODIFIED="1515864442904" TEXT="Webpack Guide"/>
<node CREATED="1516280590866" FOLDED="true" ID="ID_1171438546" LINK="http://requirejs.org/docs/download.html" MODIFIED="1516280661796" TEXT="RequireJS">
<node CREATED="1516280596459" ID="ID_764754330" LINK="http://requirejs.org/docs/download.html#text" MODIFIED="1516280642911" TEXT="http://requirejs.org/docs/download.html#text"/>
<node CREATED="1516280606899" ID="ID_68086346" MODIFIED="1516280631565" TEXT="Load text files and treat them as dependencies. Great for loading templates. The text strings can be inlined in an optimized build when the optimizer is used."/>
</node>
<node CREATED="1517523190086" ID="ID_742188779" LINK="https://material.io/resizer/" MODIFIED="1517523208441" TEXT="Resizer"/>
<node CREATED="1517523230805" ID="ID_1765622396" LINK="http://www.responsivetester.net/" MODIFIED="1517523240695" TEXT="Responsive Tester"/>
<node CREATED="1517523250664" ID="ID_618127713" LINK="https://dummyimage.com/" MODIFIED="1517523258536" TEXT="Dummy Image"/>
<node CREATED="1517523321386" ID="ID_795979789" LINK="http://gridcalculator.dk/" MODIFIED="1517523332314" TEXT="Grid Calculator"/>
<node CREATED="1519208538204" FOLDED="true" ID="ID_1272105465" MODIFIED="1519226485764" TEXT="Editor Plugins">
<node CREATED="1518616709751" FOLDED="true" ID="ID_1674721212" LINK="https://wallabyjs.com/" MODIFIED="1518617088060" TEXT="Wallaby.js (Run tests in editor)">
<node CREATED="1518616747183" ID="ID_814061182" LINK="https://www.youtube.com/watch?v=P4UQ-jTTJJ4" MODIFIED="1518616792669" TEXT="Demo: Fun Fun Function"/>
</node>
<node CREATED="1518617030865" ID="ID_1890159105" LINK="https://quokkajs.com/" MODIFIED="1518617099289" TEXT="Quokka.js (Run code in editor)"/>
<node CREATED="1519206285984" ID="ID_1524233598" LINK="https://marketplace.visualstudio.com/items?itemName=fatihacet.gitlab-workflow" MODIFIED="1519206325451" TEXT="GitLab Workflow (VSCode plugin)"/>
</node>
</node>
<node CREATED="1519218083196" FOLDED="true" ID="ID_104304955" MODIFIED="1519226499978" POSITION="right" TEXT="Agile">
<node CREATED="1519220402188" ID="ID_959656703" MODIFIED="1519226494126" TEXT="Kanplan">
<node CREATED="1519220561809" ID="ID_824833949" MODIFIED="1519220686108" TEXT="Turn your to-do list into a backlog "/>
<node CREATED="1519220448422" ID="ID_765693312" MODIFIED="1519220628281" TEXT="Our build engineering team tried to combat their long and disorganized to-do list with daily stand-ups and weekly planning meetings. But what they really needed was a backlog instead of more meetings. Since kanban boards traditionally don&#x2019;t have backlog functionality, product managers, development managers, and team leads use issues in the first column to plan. As this list grows, it&#x2019;s hard to see and prioritize issues."/>
<node CREATED="1519220407429" ID="ID_609089359" MODIFIED="1519220581147" TEXT="The kanplan feature introduces a wide column backlog with issues in a listview. This splits the kanban board into two different screens; the backlog for backlog grooming and the kanban board for the engineering team to select and move tasks through the workflow."/>
<node CREATED="1519220606846" ID="ID_1174937572" MODIFIED="1519220622107" TEXT="This functionality is no different than the backlog of a scrum board in Jira Software. For example, when you click the backlog icon in the sidebar, it takes you to a wide column of backlog issues. After grooming your backlog, you can drag and drop issues into the next step in your workflow."/>
<node CREATED="1519220417604" ID="ID_1525835613" LINK="https://www.atlassian.com/agile/kanban/kanplan" MODIFIED="1519220423434" TEXT="https://www.atlassian.com/agile/kanban/kanplan"/>
</node>
<node CREATED="1519219567202" FOLDED="true" ID="ID_1642276843" MODIFIED="1519220400740" TEXT="Kanban">
<node CREATED="1519219595331" ID="ID_114731130" MODIFIED="1519219613717" TEXT="Limit number of tasks that are &#x201c;in progress&#x201d;"/>
<node CREATED="1519219597259" ID="ID_949111628" MODIFIED="1519219621434" TEXT="Close one item fully before moving to the next"/>
<node CREATED="1519219945110" FOLDED="true" ID="ID_1717378968" MODIFIED="1519219980031" TEXT="Daily stand-ups and retrospectives are optional">
<node CREATED="1519219962214" ID="ID_1250586608" MODIFIED="1519219963064" TEXT="What did I complete yesterday?"/>
<node CREATED="1519219971815" ID="ID_380012482" MODIFIED="1519219972696" TEXT="What did I complete yesterday?"/>
<node CREATED="1519219978135" ID="ID_1697791801" MODIFIED="1519219979021" TEXT="What did I complete yesterday?"/>
</node>
<node CREATED="1519219774198" ID="ID_623054620" LINK="https://www.atlassian.com/agile/tutorials/how-to-do-kanban-with-jira-software" MODIFIED="1519220023416" TEXT="https://www.atlassian.com/agile/tutorials/how-to-do-kanban-with-jira-software"/>
</node>
<node CREATED="1519219551986" FOLDED="true" ID="ID_1497835457" MODIFIED="1519219566305" TEXT="Scrum">
<node CREATED="1519219112948" ID="ID_400043025" MODIFIED="1519219120648" TEXT="Retrospective"/>
<node CREATED="1519219092812" ID="ID_1976224643" MODIFIED="1519219103800" TEXT="Sprint Review/Demo"/>
<node CREATED="1519218286560" ID="ID_726600980" MODIFIED="1519219482229" TEXT="Iterations/Sprints (to Done)">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1519219033853" FOLDED="true" ID="ID_1353851103" MODIFIED="1519219105653" TEXT="Daily Scrum/Standup">
<node CREATED="1519219042109" ID="ID_1737377440" MODIFIED="1519219059307" TEXT="What did I do yesterday?"/>
<node CREATED="1519219059709" ID="ID_26112658" MODIFIED="1519219066227" TEXT="What will I do today?"/>
<node CREATED="1519219066502" ID="ID_1307300612" MODIFIED="1519219071906" TEXT="Are there any blockers?"/>
</node>
<node CREATED="1519218731275" ID="ID_52269500" MODIFIED="1519218739947" TEXT="Sprint Backlog"/>
<node CREATED="1519218681418" ID="ID_865270247" MODIFIED="1519218706446" TEXT="Product/Team Backlog"/>
<node CREATED="1519219463383" ID="ID_32153447" MODIFIED="1519219473425" TEXT="Defintions of Done (All)"/>
<node CREATED="1519218741272" FOLDED="true" ID="ID_979998879" MODIFIED="1519219050406" TEXT="Definition of Ready (All)">
<node CREATED="1519218870699" ID="ID_993607887" MODIFIED="1519218877019" TEXT="Backlog Refinement"/>
<node CREATED="1519218922568" ID="ID_1288580121" MODIFIED="1519219032445" TEXT="Sprint Planning (All)"/>
</node>
<node CREATED="1519218836754" ID="ID_1269475981" MODIFIED="1519218846602" TEXT="Scrum Master (Quality)"/>
<node CREATED="1519218815241" ID="ID_1773810383" MODIFIED="1519218824261" TEXT="Dev Team (How and When)"/>
<node CREATED="1519218773281" FOLDED="true" ID="ID_555715856" MODIFIED="1519219126295" TEXT="Product Owner (What and Why)">
<node CREATED="1519218884415" ID="ID_1111431605" MODIFIED="1519218890082" TEXT="User stories"/>
</node>
<node CREATED="1519218089728" ID="ID_782859369" LINK="https://www.youtube.com/watch?v=vuBFzAdaHDY" MODIFIED="1519218107356" TEXT="Video: Scrum in 16 minutes"/>
</node>
<node CREATED="1519221274896" ID="ID_1496112316" LINK="http://agilemanifesto.org/" MODIFIED="1519221286948" TEXT="Manifesto for Agile Software Development"/>
</node>
<node CREATED="1519221020671" FOLDED="true" ID="ID_203199641" MODIFIED="1519232593001" POSITION="right" TEXT="CI/CD">
<node CREATED="1519221319401" ID="ID_1088676461" LINK="https://www.martinfowler.com/articles/continuousIntegration.html" MODIFIED="1519225898938" TEXT="Continuous Integration by Martin Fowler"/>
<node CREATED="1519221026000" ID="ID_1775718870" MODIFIED="1519221066107" TEXT="Continuous Integration is a process in which every push to your repo triggers a build and runs your tests automatically. A red flag is raised as soon as a faulty commit goes in. Pull requests should also be tested automatically before merging to avoid bugs that impact the whole team."/>
<node CREATED="1519221067729" ID="ID_472106512" MODIFIED="1519221084192" TEXT="Continuous Delivery is the extension of Continuous Integration. If the tests pass properly, the tested version is pushed to the production environment automatically."/>
<node CREATED="1519221119071" ID="ID_1785314803" MODIFIED="1519231538692" TEXT="Popular Continuous Integration servers are Jenkins, Travis, CircleCI, Bamboo, CodeShip and GitLab."/>
<node CREATED="1519232575590" ID="ID_542488945" LINK="https://about.gitlab.com/features/gitlab-ci-cd/" MODIFIED="1519232587692" TEXT="https://about.gitlab.com/features/gitlab-ci-cd/"/>
<node CREATED="1519226587764" ID="ID_1036435349" LINK="https://www.youtube.com/watch?v=1iXFbchozdY" MODIFIED="1519231549230" TEXT="Video: Demo: CI/CD with GitLab"/>
<node CREATED="1519222018607" ID="ID_1885328323" MODIFIED="1519222031141" TEXT="In a Continuous Integration environment you should never have a failed integration build stay failed for long. A good team should have many correct builds a day. Bad builds do occur from time to time, but should be quickly fixed. The result of doing this is that there is a stable piece of software that works properly and contains few bugs. Everybody develops off that shared stable base and never gets so far away from that base that it takes very long to integrate back with it. Less time is spent trying to find bugs because they show up quickly."/>
<node CREATED="1519225750284" ID="ID_827288279" MODIFIED="1519225789586" TEXT="Every developer should commit to the repository every day. In practice it&apos;s often useful if developers commit more frequently than that. The more frequently you commit, the less places you have to look for conflict errors, and the more rapidly you fix conflicts. Frequent commits encourage developers to break down their work into small chunks of a few hours each. This helps track progress and provides a sense of progress."/>
<node CREATED="1519225886207" ID="ID_1049176673" MODIFIED="1519225890478" TEXT="Many organizations do regular builds on a timed schedule, such as every night. This is not the same thing as a continuous build and isn&apos;t enough for continuous integration. The whole point of continuous integration is to find problems as soon as you can. Nightly builds mean that bugs lie undetected for a whole day before anyone discovers them. Once they are in the system that long, it takes a long time to find and remove them."/>
<node CREATED="1519226281755" ID="ID_1994427599" MODIFIED="1519226284872" TEXT="If you have continuous integration, it removes one of the biggest barriers to frequent deployment. Frequent deployment is valuable because it allows your users to get new features more rapidly, to give more rapid feedback on those features, and generally become more collaborative in the development cycle."/>
</node>
<node CREATED="1514317998077" FOLDED="true" ID="ID_45322287" MODIFIED="1519226467265" POSITION="right" TEXT="CLI">
<node CREATED="1514318003869" FOLDED="true" ID="ID_1687705929" MODIFIED="1514318025223" TEXT="download and rename">
<node CREATED="1514318010104" ID="ID_1951725909" MODIFIED="1514318022263" TEXT="curl https://github.com/downloads/wycats/handlebars.js/handlebars-1.0.rc.1.min.js &gt; handlebars.js "/>
</node>
</node>
<node CREATED="1519232125250" FOLDED="true" ID="ID_92231006" MODIFIED="1519232268089" POSITION="right" TEXT="Testing">
<node CREATED="1519232134280" ID="ID_293589351" MODIFIED="1519232178588" TEXT="TODO: Unit tests (Complete Jasmine)"/>
<node CREATED="1519232136936" ID="ID_1939394792" MODIFIED="1519232186386" TEXT="TODO: Integration tests"/>
<node CREATED="1519232138792" ID="ID_1074465325" MODIFIED="1519232167410" TEXT="TODO: Functional tests"/>
</node>
</node>
</map>
