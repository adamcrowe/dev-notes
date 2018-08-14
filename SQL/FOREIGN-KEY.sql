# SET foreign_key_checks=0;
# SET foreign_key_checks=1;

# Errors: MySQL errno 150; MySQL errno 121;
# <http://www.eliacom.com/mysql-gui-wp-errno-150.php> 
# <http://dev.mysql.com/doc/refman/5.5/en/innodb-error-codes.html>
# <http://dev.mysql.com/doc/refman/5.6/en/create-table-foreign-keys.html>

# Causes and solutions for errno 150
## Data types don't match
## Parent columns not indexed (or indexed in wrong order)
## Table collations don't match
## Column collations don't match
## Using SET NULL on a NOT NULL column
## Parent column doesn't exist in parent table
## One of the columns indexes is incomplete (column is too long)

# When adding a foreign key constraint to a table using ALTER TABLE, remember to create the required indexes first
# Make sure referencing id columns are NULLable and default NULL, otherwise default will be 0 and there cannot be 0 ids

# Make sure foreign key and foreign reference have exactly the same data definitions:

## Corresponding columns in the foreign key and the referenced key must have similar data types.
## The size and sign of integer types must be the same.

# Referencing options: RESTRICT | CASCADE | SET NULL | NO ACTION

## RESTRICT: Rejects the delete or update operation for the parent table. Specifying RESTRICT (or NO ACTION) is the same as omitting the ON DELETE or ON UPDATE clause.
### (For an ON DELETE or ON UPDATE that is not specified, the default action is always RESTRICT)
### NO ACTION: A keyword from standard SQL. In MySQL, equivalent to RESTRICT. 

## CASCADE: ON DELETE CASCADE and ON UPDATE CASCADE Delete or update the row from the parent table, and automatically delete or update the matching rows in the child.

## SET NULL: ON DELETE SET NULL and ON UPDATE SET NULL. Delete or update the row from the parent table, and set the foreign key column or columns in the child to NULL. 
### (If you specify a SET NULL action, make sure that you have not declared the columns in the child table as NOT NULL.)

## SET DEFAULT: Recognized by the MySQL parser, but both InnoDB and NDB reject table definitions containing ON DELETE SET DEFAULT or ON UPDATE SET DEFAULT 

# create unnamed FK to parent in child
ALTER TABLE lead 
ADD FOREIGN KEY (userId) 
REFERENCES users (User_ID) # tablename (column)
ON UPDATE CASCADE # if parent is updated, cascade changes down to child
ON DELETE SET NULL; # if parent is updated, set child (PK/FK field) to NULL

# named FK to parent in child - fkname must be unique
ALTER TABLE payment_fraud
ADD FOREIGN KEY FK_payment_fraud_1(paymentID) 
REFERENCES payment (Payment_ID) # tablename (column)
ON DELETE CASCADE # if parent is deleted, delete child
ON UPDATE CASCADE; # if parent is updated, cascade changes to child (PK/FK field)  

# if you don't offer FK name, SQL will create a unique one
ALTER TABLE child_tbl
ADD FOREIGN KEY(Product_ID) 
REFERENCES parent_tbl (col_name) # tablename (column)
ON DELETE SET NULL # if parent is updated, set child (PK/FK field) to null
ON UPDATE CASCADE; # if parent is updated, cascade changes to child (PK/FK field)  

# Commonly-used constraints
## ON UPDATE CASCADE  // if parent is updated, cascade changes down to child
## ON DELETE RESTRICT // if parent is deleted, deny the deletion (save parent and child)

# Get orphaned foreign keys (col values that exist in child but not in parent)

SELECT dl.Debit_Line_ID, dl.Product_ID
FROM debit_line AS dl # child table
LEFT JOIN product AS p ON p.Product_ID=dl.Product_ID # parent table
WHERE p.Product_ID IS NULL; # get the dl.ids where p.pid = NULL

## OR

SELECT child_table.child_column 
FROM child_table 
WHERE child_table.child_column IS NOT NULL AND 
NOT EXISTS (SELECT * FROM parent_table WHERE parent_table.parent_column=child_table.child_column);

# Simple Query to identify Foreign Key references on Deadlocked Tables
# <http://www.chriscalender.com/simple-query-to-identify-foreign-key-references-on-deadlocked-tables>

	SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE 
	WHERE REFERENCED_TABLE_NAME='parent';

	SELECT CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_SCHEMA, 
		TABLE_NAME, COLUMN_NAME, REFERENCED_TABLE_SCHEMA, 
		REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME 
	FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE 
	WHERE REFERENCED_TABLE_NAME='parent';

# Where `parent` is the name of the table you’re searching for.

# How do I see all foreign keys to a table or column?
# <http://stackoverflow.com/questions/201621/how-do-i-see-all-foreign-keys-to-a-table-or-column>

	SELECT TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
	FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
	WHERE REFERENCED_TABLE_NAME = '<table>'; -- parent