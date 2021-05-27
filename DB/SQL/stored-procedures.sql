# ! Stored Procedures
# <https://dev.mysql.com/doc/refman/5.7/en/stored-programs-views.html>
# <https://dev.mysql.com/doc/refman/5.7/en/stored-programs-security.html>

# > Stored procedure: A piece of code stored in the database that can be executed by various pieces of code such as check constraints or application code. Stored procedures are a good place to store business logic that should not be built into the database's structure.

# > Stored procedure can be particularly useful in certain situations:
# * When multiple client applications are written in different languages or work on different platforms, but need to perform the same database operations.
# * When security is paramount. Banks, for example, use stored procedures and functions for all common operations. This provides a consistent and secure environment, and stored procedures can ensure that each operation is properly logged. In such a setup, applications and users would have no access to the database tables directly, but can only execute specific stored procedure.

# !! Uses
# > Uses for stored procedures include data-validation (integrated into the database) or access-control mechanisms. Furthermore, stored procedures can consolidate and centralize logic that was originally implemented in applications. To save time and memory, extensive or complex processing that requires execution of several SQL statements can be saved into stored procedures, and all applications call the procedures. One can use nested stored procedures by executing one stored procedure from within another.

# !!! Code Reuse
# > Stored procedures also enable you to have libraries of functions in the database server. This is a feature shared by modern application languages that enable such design internally (for example, by using classes). Using these client application language features is beneficial for the programmer even outside the scope of database use.

# !!! Avoiding network traffic
# > A major advantage of stored procedures is that they can run directly within the database engine. In a production system, this typically means that the procedures run entirely on a specialized database server, which has direct access to the data being accessed. The benefit here is that network communication costs can be avoided completely. This becomes more important for complex series of SQL statements.

# !!! Encapsulating business logic
# > Stored procedures allow programmers to embed business logic as an API in the database, which can simplify data management and reduce the need to encode the logic elsewhere in client programs. This can result in a lesser likelihood of data corruption by faulty client programs. The database system can ensure data integrity and consistency with the help of stored procedures.

# !!! Delegating access-rights
# > In many systems, stored procedures can be granted access rights to the database that users who execute those procedures do not directly have.

# !!! Some protection from SQL injection attacks
# > Stored procedures can be used to protect against injection attacks. Stored procedure parameters will be treated as data even if an attacker inserts SQL commands. Also, some DBMS will check the parameter's type. However, a stored procedure that in turn generates dynamic SQL using the input is still vulnerable to SQL injections unless proper precautions are taken.

# !!! Error Tracking
# > Stored procedures can be invoked from a database trigger or a condition handler. For example, a stored procedure may be triggered by an insert on a specific table, or update of a specific field in a table, and the code inside the stored procedure would be executed. Writing stored procedures as condition handlers also allows database administrators to track errors in the system with greater detail by using stored procedures to catch the errors and record some audit information in the database or an external resource like a file.

# !! Security (see code examples below)
# > Stored routines (procedures and functions) and views can have an SQL SECURITY characteristic with a value of DEFINER or INVOKER to specify whether the object executes in definer or invoker context. If the SQL SECURITY characteristic is omitted, the default is definer context. Definer and invoker security contexts differ as follows:
# * A stored program or view that executes in definer security context executes with the privileges of the account named by its DEFINER attribute. These privileges may be entirely different from those of the invoking user. The invoker must have appropriate privileges to reference the object (for example, EXECUTE to call a stored procedure or SELECT to select from a view), but when the object executes, the invoker's privileges are ignored and only the DEFINER account privileges matter. If this account has few privileges, the object is correspondingly limited in the operations it can perform. If the DEFINER account is highly privileged (such as a root account), the object can perform powerful operations no matter who invokes it.
# * A stored routine or view that executes in invoker security context can perform only operations for which the invoker has privileges. The DEFINER attribute can be specified but has no effect for objects that execute in invoker context.

# > To minimize the risk potential for stored program and view creation and use, follow these guidelines:
# * For a stored routine or view, use SQL SECURITY INVOKER in the object definition when possible so that it can be used only by users with permissions appropriate for the operations performed by the object.
# * If you create definer-context stored programs or views while using an account that has the SUPER privilege, specify an explicit DEFINER attribute that names an account possessing only the privileges required for the operations performed by the object. Specify a highly privileged DEFINER account only when absolutely necessary.
# * Administrators can prevent users from specifying highly privileged DEFINER accounts by not granting them the SUPER privilege.

# !! Code Examples
# * A stored routine is either a procedure or a function.
# * Stored routines are created with the CREATE PROCEDURE and CREATE FUNCTION statements.
# * The CALL statement is used to invoke stored procedures.
# * Each stored program contains a body that consists of an SQL statement enclosed within a BEGIN ... END block. This statement may be a compound statement made up of several statements (loops, conditionals, declared variables, etc.) separated by semicolon (;) characters.

# !!! Procedure Example 1
delimiter $$ # temporary delimiter to escape interpretation of `;` in body

CREATE PROCEDURE dorepeat(p1 INT)
BEGIN
	SET @x := 0;
	REPEAT SET @x := @x + 1; UNTIL @x > p1 END REPEAT;
END$$

delimiter ; # reset delimiter

CALL dorepeat(1000);

SELECT @x; # 1001

# !!! Procedure Example 2
delimiter $$

# IN parameters are used but not returned, OUT parameters (`interest`) can be returned
CREATE PROCEDURE calculate_interest(IN capital DOUBLE, IN rate INT, IN duration INT, OUT interest DOUBLE)
BEGIN
	SET interest := (capital * rate * duration)/100;
	INSERT INTO `administrators` (`interest`) VALUES (interest);
END$$

delimiter ;

CALL calculate_interest(100, 7, 3, @get_interest);

SELECT @get_interest; # returns interest: 21

# !!! Function Example 1
CREATE FUNCTION hello (s CHAR(20))
RETURNS CHAR(50) DETERMINISTIC
RETURN CONCAT('Hello, ',s,'!');

SELECT hello('world'); # Hello, world!

# !!! Security Example 1: Execute in definer security context
# 'admin'@'localhost' must have EXECUTE privilege for p1 as well as UPDATE privilege for the table t1, otherwise the procedure fails.
CREATE DEFINER = 'admin'@'localhost' PROCEDURE p1()
SQL SECURITY DEFINER
BEGIN
	UPDATE t1 SET counter = counter + 1;
END;

# !!! Security Example 2: Execute in invoker security context
# invoking user must have EXECUTE privilege for p2 as well as UPDATE privilege for the table t1, otherwise the procedure fails.
CREATE DEFINER = 'admin'@'localhost' PROCEDURE p2()
SQL SECURITY INVOKER
BEGIN
	UPDATE t1 SET counter = counter + 1;
END;