use employees;
/*
Window function - 
Aggregated 
Non Aggregated
	Ranking ( Row_num, rank dense_rank)
    Value (Lag leed)
*/

-- Row_number			
SELECT 
	emp_no, 
    salary, 
    ROW_NUMBER() OVER () AS row_num1,
    ROW_NUMBER() OVER (PARTITION BY emp_no) AS row_num2,
    ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary DESC) AS row_num3,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num4
FROM
	salaries
ORDER BY emp_no, salary;




    
SELECT 
	emp_no, 
    salary, 
    ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary DESC) AS row_num
FROM
	salaries;
 -- both are same    
SELECT 
	emp_no, 
	salary, 
	ROW_NUMBER() OVER w AS row_num
FROM
	salaries
WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC);




USE employees;

SELECT 
	d.dept_no,
    d.dept_name,
    dm.emp_no,
    ROW_NUMBER() OVER w AS department_salary_row,
    RANK() OVER w AS department_salary_ranking,
    DENSE_RANK() OVER w AS department_salary_d_ranking,
    s.salary,
    s.from_date AS salary_from_date,
    s.to_date AS salary_to_date,	
    dm.from_date AS dept_manager_from_date,
    dm.to_date AS dept_manager_to_date
FROM
    dept_manager dm
        JOIN
    salaries s ON s.emp_no = dm.emp_no
        JOIN
    departments d ON d.dept_no = dm.dept_no
WINDOW w AS (PARTITION BY dm.dept_no ORDER BY s.salary DESC);


-- LAG LEAD

SELECT 
    *
FROM
    salaries
LIMIT 10;

SELECT 
	emp_no,
    salary, 
    LAG(salary) OVER w AS previous_salary,
    LEAD(salary) OVER w AS next_salary,
    salary - LAG(salary) OVER w AS diff_salary_current_previous,
	LEAD(salary) OVER w - salary AS diff_salary_next_current    
FROM
	salaries
WHERE emp_no = 10001
WINDOW w AS (ORDER BY salary);

-- Aggreated function


SELECT 
    de.emp_no, de.dept_no, de.from_date, de.to_date
FROM
    dept_emp de
        JOIN
    (SELECT 
        emp_no, MAX(from_date) AS from_date
    FROM
        dept_emp
    GROUP BY emp_no) de1 ON de1.emp_no = de.emp_no
WHERE
    de.to_date > SYSDATE()
        AND de.from_date = de1.from_date;
        
        
-- CTE

USE employees;

SELECT 
    AVG(salary) AS avg_salary
FROM
    salaries;
    

WITH cte AS (
SELECT AVG(salary) AS avg_salary FROM salaries)
SELECT 
SUM(CASE WHEN s.salary > c.avg_salary THEN 1 ELSE 0 END) AS no_f_salaries_above_avg,
COUNT(s.salary) AS total_no_of_salary_contracts
FROM
    salaries s
        JOIN
    employees e ON s.emp_no = e.emp_no AND e.gender = 'F'
        CROSS JOIN
    cte c;


WITH cte AS (
SELECT AVG(salary) AS avg_salary FROM salaries)
SELECT 
SUM(CASE WHEN s.salary > c.avg_salary THEN 1 ELSE 0 END) AS no_f_salaries_above_avg_w_sum,
COUNT(CASE WHEN s.salary > c.avg_salary THEN s.salary ELSE NULL END) AS no_f_salaries_above_avg_w_count,
COUNT(s.salary) AS total_no_of_salary_contracts
FROM
    salaries s
        JOIN
    employees e ON s.emp_no = e.emp_no AND e.gender = 'F'
        CROSS JOIN
    cte c;

-- Multiple CTE


WITH cte1 AS (
SELECT AVG(salary) AS avg_salary FROM salaries
),
cte2 AS (
SELECT s.emp_no, MAX(s.salary) AS f_highest_salary
FROM salaries s 
JOIN employees e ON e.emp_no = s.emp_no AND e.gender = 'F'
GROUP BY s.emp_no
)
SELECT 
SUM(CASE WHEN c2.f_highest_salary > c1.avg_salary THEN 1 ELSE 0 END) AS f_highest_salaries_above_avg,
COUNT(e.emp_no) AS total_no_female_contracts
FROM employees e
JOIN cte2 c2 ON c2.emp_no = e.emp_no
CROSS JOIN cte1 c1;


WITH emp_hired_from_jan_2000 AS (
SELECT * FROM employees WHERE hire_date > '2000-01-01'
),
highest_contract_salary_values AS (
SELECT e.emp_no, MAX(s.salary) FROM salaries s JOIN emp_hired_from_jan_2000 e ON e.emp_no = s.emp_no GROUP BY e.emp_no 
)
SELECT * FROM highest_contract_salary_values;

-- Temporary Table

CREATE TEMPORARY TABLE f_highest_salaries
SELECT  s.emp_no, MAX(s.salary) AS f_highest_salary
FROM salaries s JOIN
    employees e ON e.emp_no = s.emp_no AND e.gender = 'F'
GROUP BY s.emp_no;

SELECT 
    *
FROM
    f_highest_salaries;

SELECT 
    *
FROM
    f_highest_salaries
WHERE
    emp_no <= '10010';

DROP TABLE IF EXISTS f_highest_salaries;


SELECT 
    *
FROM
    f_highest_salaries;
    
SELECT 
    *
FROM
    departments;
    
    
    

DROP TEMPORARY TABLE IF EXISTS f_highest_salaries;

CREATE TEMPORARY TABLE f_highest_salaries
SELECT 
    s.emp_no, MAX(s.salary) AS f_highest_salary
FROM
    salaries s
        JOIN
    employees e ON e.emp_no = s.emp_no AND e.gender = 'F'
GROUP BY s.emp_no
LIMIT 10;

SELECT 
    *
FROM
    f_highest_salaries;

SELECT 
    *
FROM
    f_highest_salaries f1
        JOIN
    f_highest_salaries f2;
    
SELECT 
    *
FROM
    f_highest_salaries f1 
UNION SELECT 
    *
FROM
    f_highest_salaries f2;


WITH cte AS (SELECT 
    s.emp_no, MAX(s.salary) AS f_highest_salary
FROM
    salaries s
        JOIN
    employees e ON e.emp_no = s.emp_no AND e.gender = 'F'
GROUP BY s.emp_no
LIMIT 10)
SELECT * FROM f_highest_salaries f1 JOIN cte c;


WITH cte AS (SELECT 
    s.emp_no, MAX(s.salary) AS f_highest_salary
FROM
    salaries s
        JOIN
    employees e ON e.emp_no = s.emp_no AND e.gender = 'F'
GROUP BY s.emp_no
LIMIT 10)
SELECT * FROM f_highest_salaries UNION ALL SELECT * FROM cte;

    
