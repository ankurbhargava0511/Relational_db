-- View 
use employees;
CREATE OR REPLACE VIEW v_manager_avg_sal AS
    SELECT 
        ROUND(AVG(salary), 2)
    FROM
        salaries s
            JOIN
        dept_manager m ON s.emp_no = m.emp_no;


SELECT 
    *
FROM
    v_manager_avg_sal;



-- Routines -- stored procedures / functions
-- stored procedures

DROP PROCEDURE IF EXISTS SELECT_EMPLOYEES;
DELIMITER $$
CREATE Procedure SELECT_EMPLOYEES()
BEGIN
	SELECT * FROM Employees LIMIT 1000;
END$$

-- calling SP
Call SELECT_EMPLOYEES();

CREATE PROCEDURE IF EXISTS EMP_AVG_SAL
DELIMITER $$
CREATE PROCEDURE EMP_AVG_SAL()
BEGIN
	SELECT AVG(SALARY) FROM SALARIES;
END$$

CALL EMP_AVG_SAL();
CALL EMP_AVG_SAL


-- with parameters


Drop Procedure If Exists emp_info;

DELIMITER $$
CREATE Procedure emp_info(in fname varchar(40), in lname varchar(40), out empno int)
BEGIN
SELECT emp_no  into empno from employees where first_name = fname and last_name = lname;
END$$ 
DELIMITER ;

SET @fname = 'Parto';
SET @lname = 'Bamford';
Set @empno = 0;

call emp_info(@fname, @lname, @empno);

SELECT @empno;


-- variable - global (set global @@), session(set @) , local (declare)


Drop Procedure If Exists emp_info_d;

DELIMITER $$
CREATE Procedure emp_info_d(in fname varchar(40), in lname varchar(40))
BEGIN
Declare empno int; 
SELECT emp_no  into empno from employees where first_name = fname and last_name = lname;

select empno;
END$$ 
DELIMITER ;


call emp_info_d('Aruna', 'Journel');

-- Functions
Drop function If Exists emp_salary;

DELIMITER $$
CREATE Function emp_salary( empno int ) Returns decimal(10,2)
BEGIN
Declare sal decimal(10,2); 
SELECT salary  into sal from salaries where emp_no =empno limit 1;

Return sal;
END$$ 
DELIMITER ;


set @emp_sal=emp_salary(10789);
SELECT @emp_sal;
SELECT EMP_SALARY(10789);
-- using function inselect queries 
SELECT 
    *, EMP_SALARY(10789) AS salary
FROM
    employees
WHERE
    emp_no = 10789
    
    
-- TRIGGER


# BEFORE INSERT
DELIMITER $$

CREATE TRIGGER before_salaries_insert
BEFORE INSERT ON salaries
FOR EACH ROW
BEGIN 
	IF NEW.salary < 0 THEN 
		SET NEW.salary = 0; 
	END IF; 
END $$

DELIMITER ;



# BEFORE UPDATE
DELIMITER $$

CREATE TRIGGER trig_upd_salary
BEFORE UPDATE ON salaries
FOR EACH ROW
BEGIN 
	IF NEW.salary < 0 THEN 
		SET NEW.salary = OLD.salary; 
	END IF; 
END $$

DELIMITER ;

INSERT INTO salaries VALUES ('10001', -92891, '2022-06-22', '9999-01-01');

SELECT * FROM salaries WHERE emp_no = '10001' and from_date='2022-06-22';

UPDATE salaries  SET salary = 98765 WHERE emp_no = '10001' AND from_date = '2022-06-22';

UPDATE salaries  SET salary = -50000 WHERE emp_no = '10001' AND from_date = '2022-06-22';


DELIMITER $$
CREATE TRIGGER trig_ins_dept_mng
AFTER INSERT ON dept_manager
FOR EACH ROW
BEGIN
	DECLARE v_curr_salary int;
    SELECT MAX(salary)
	INTO v_curr_salary FROM
		salaries WHERE emp_no = NEW.emp_no;

	IF v_curr_salary IS NOT NULL THEN
		UPDATE salaries 
		SET 
			to_date = SYSDATE()
		WHERE
			emp_no = NEW.emp_no and to_date = NEW.to_date;

		INSERT INTO salaries 
			VALUES (NEW.emp_no, v_curr_salary + 20000, NEW.from_date, NEW.to_date);
    END IF;
END $$

DELIMITER ;


INSERT INTO dept_manager VALUES ('111534', 'd009', date_format(sysdate(), '%y-%m-%d'), '9999-01-01');

SELECT * FROM dept_manager WHERE emp_no = 111534;
    
SELECT * FROM salaries WHERE emp_no = 111534;




-- INDEX

Select * from employees where hire_date >'2000-01-01';
create index i_hire_index on employees(hire_date);

select * from employees where first_name='Georgi' and last_name='Facello';
create index i_emp_name_com on employees(first_name, last_name);

Alter table employees Drop index i_hire_index;



-- CASE Statement

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN dm.emp_no IS NOT NULL THEN 'Manager'
        ELSE 'Employee'
    END AS is_manager
FROM
    employees e
        LEFT JOIN
    dept_manager dm ON dm.emp_no = e.emp_no
WHERE
    e.emp_no > 109990;
    
# using case

SELECT 
    dm.emp_no,
    e.first_name,
    e.last_name,
    MAX(s.salary) - MIN(s.salary) AS salary_difference,
    CASE
        WHEN MAX(s.salary) - MIN(s.salary) > 30000 THEN 'Salary was raised by more then $30,000'
        ELSE 'Salary was NOT raised by more then $30,000'
    END AS salary_raise
FROM
    dept_manager dm
        JOIN
    employees e ON e.emp_no = dm.emp_no
        JOIN
    salaries s ON s.emp_no = dm.emp_no
GROUP BY s.emp_no;

# using IF
SELECT 
    dm.emp_no,
    e.first_name,
    e.last_name,
    MAX(s.salary) - MIN(s.salary) AS salary_difference,
    IF(MAX(s.salary) - MIN(s.salary) > 30000,
        'Salary was raised by more then $30,000',
        'Salary was NOT raised by more then $30,000') AS salary_increase
FROM
    dept_manager dm
        JOIN
    employees e ON e.emp_no = dm.emp_no
        JOIN
    salaries s ON s.emp_no = dm.emp_no
GROUP BY s.emp_no;



