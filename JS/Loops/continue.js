// # continue
var i = 0;
var n = 0;

while (i < 5) {
	i++;

	if (i == 3) {
		continue; // go back to while statement and continue
	}

	n += i; // n takes on the values 1, 3, 7, and 12
}