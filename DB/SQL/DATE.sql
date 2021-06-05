# Get data with date greater than one year ago (from now)
WHERE Created_On >= DATE_SUB(NOW(),INTERVAL 1 YEAR)

# Start the date at the beginning (1st) of the month
ol2.Created_On>ADDDATE(DATE_FORMAT(NOW(), '%Y-%m-01'), INTERVAL -12 MONTH)

# Create range of dates (today and 4 days previous)
-- https://stackoverflow.com/questions/14105018/generating-a-series-of-dates
SELECT * FROM
    (SELECT ADDDATE('1970-01-01',t4*10000 + t3*1000 + t2*100 + t1*10 + t0) fiveDayRange FROM
    (SELECT 0 t0 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t0,
    (SELECT 0 t1 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t1,
    (SELECT 0 t2 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t2,
    (SELECT 0 t3 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t3,
    (SELECT 0 t4 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t4) v
    WHERE fiveDayRange BETWEEN DATE_SUB(NOW(), INTERVAL 5 DAY) AND NOW();

SELECT DATE(NOW()); -- 2019-03-15
SELECT CURRENT_TIME; -- 18:29:07
SELECT CONCAT_WS(' ', DATE(NOW()), CURRENT_TIME); -- 2019-03-15 18:29:07

# Extract seconds
SELECT EXTRACT(SECOND FROM NOW());

# Zero-out seconds
SELECT NOW() - INTERVAL EXTRACT(SECOND FROM NOW()) SECOND AS `zeroed seconds`;