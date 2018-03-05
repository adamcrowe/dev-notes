# Get data between dates
## Get data with date greater than one year ago (from now)
WHERE Created_On >= DATE_SUB(NOW(),INTERVAL 1 YEAR) 

## Start the date at the beginning (1st) of the month
ol2.Created_On>ADDDATE(DATE_FORMAT(NOW(), '%Y-%m-01'), INTERVAL -12 MONTH)
