-- View 

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



