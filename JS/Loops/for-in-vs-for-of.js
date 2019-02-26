// ! for...in vs for...of

// !! for...in iterates over property names
var car = {
	make: 'Ford',
	model: 'Mustang'
};

function dump_props(obj, obj_name) {
	var result = '';
	for (var i in obj) {
		result += obj_name + '.' + i + ' = ' + obj[i] + '<br>';
	}

	result += '<hr>';
	return result;
}

dump_props(car, 'car'); // car.make = Ford<br>car.model = Mustang<br><hr>

// !! for...of iterates over property values
var arr = [3, 5, 7];
arr.foo = 'hello';

for (var i in arr) { // property names
	console.log(i); // logs "0", "1", "2", "foo"
}

for (var i of arr) { // property values
	console.log(i); // logs 3, 5, 7
}