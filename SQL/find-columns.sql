# FIND COLUMNS IN DATABASE

# when support tables and their columns are known
SELECT DISTINCT TABLE_NAME
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE COLUMN_NAME IN (\'Product_ID\',\'productId\')
		AND TABLE_SCHEMA=\'db\'';

# when support tables and their columns are unknown
SELECT DISTINCT TABLE_NAME, COLUMN_NAME 
	FROM information_schema.KEY_COLUMN_USAGE 
	WHERE REFERENCED_TABLE_NAME IS NOT NULL 
		AND REFERENCED_TABLE_NAME=\'product\' 
			AND REFERENCED_COLUMN_NAME=\'Product_ID\' 
				AND TABLE_SCHEMA=\'db\'';