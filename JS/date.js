// ! Date

var today = new Date(); 
var endYear = new Date(1995, 11, 31, 23, 59, 59, 999); 				// set day and month 

endYear.setFullYear(today.getFullYear());							// set year to this year 

var msPerDay = 24 * 60 * 60 * 1000; 								// number of milliseconds per day 
var daysLeft = (endYear.getTime() - today.getTime()) / msPerDay;
var daysLeft = Math.round(daysLeft); 								// returns days left in the year

function JSClock() { 
	debugger; 
	var time = new Date(); 
	var hour = time.getHours();
	var minute = time.getMinutes(); 
	var second = time.getSeconds(); 
	var temp = '' + ((hour > 12) ? hour - 12 : hour); 
	
	if (hour == 0) 
		temp = '12'; 

	temp += ((minute < 10) ? ':0' : ':') + minute; 
	temp += ((second < 10) ? ':0' : ':') + second; 
	temp += (hour >= 12) ? ' P.M.' : ' A.M.'; 
	
	return temp; 
}

/// ! Moment
const todayDate = moment().format('YYYY-MM-DD');
const startDate = moment().add('-1', 'month').format('YYYY-MM-DD'); // a month ago
const endDate = moment().format('YYYY-MM-DD'); // today
