// ! Local Storage

// save data 
var persons = {}; 

persons["2901465"] = {id: 2901465, name:"Tom"}; 
persons["3305579"] = {id: 3305579, name:"Su"}; 
persons["6492003"] = {id: 6492003, name:"Pete"}; 

try { 
	localStorage["personTable"] = JSON.stringify(persons); 
} catch (e) { 
	alert("Error when writing to Local Storage\n" + e); 
}

// load data 
var persons = {}; 

try { 
	persons = JSON.parse(localStorage["personTable"]); 
} catch (e) { 
	alert("Error when reading from Local Storage\n" + e);        
}