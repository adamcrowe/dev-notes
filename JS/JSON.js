// ! JSON

// !! Lists (array literals)
["penguin", "arctis", "snow"]

// !! Maps (object literals)
{"id": 2901465, "my phone number":"0049.30.227109"}

// !! Records (map with keys)
{id: 2901465, phone:"0049.30.227109"}

{ tags:["penguin","arctis"], photographer:{"last":"Wagner","first":"Gerd"} }

{
    006251587X: {isbn:"006251587X", title:"Weaving the Web", year:2000}, 
    0465026567: {isbn:"0465026567", title:"Gödel, Escher, Bach", year:1999}, 
    0465030793: {isbn:"0465030793", title:"I Am A Strange Loop", year:2008}
}

var json = JSON.stringify(myObject);
var object = JSON.parse(myJson);