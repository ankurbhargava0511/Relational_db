CREATE USER 'test'@'localhost' IDENTIFIED BY 'password';

ALTER USER 'test'@'localhost' IDENTIFIED BY 'password';

GRANT SELECT ON employees.* TO 'test'@'localhost';

GRANT INSERT ON employees.* TO 'test'@'localhost';

GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'test'@'localhost' WITH GRANT OPTION;

DROP USER 'test'@'localhost' ;

use employees;
#Error Code: 1044. Access denied for user 'test'@'localhost' to database 'employees'	
Select * from salaries;
#Error Code: 1044. Access denied for user 'test'@'localhost' to database 'employees'
Select * from departments;

Insert into departments values ('d012', 'TestPermision');
# Error Code: 1142. INSERT command denied to user 'test'@'localhost' for table 'departments'	


Create table test_user( col1 int);
#Error Code: 1142. CREATE command denied to user 'test'@'localhost' for table 'test_user'	
Drop table test_user;