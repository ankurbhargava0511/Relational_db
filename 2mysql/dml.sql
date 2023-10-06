use employees;
-- select with column
SELECT first_name, last_name FROM employees;
SELECT * FROM employees;
SELECT dept_no FROM departments;
SELECT * FROM departments;

-- where
SELECT * FROM employees WHERE first_name = 'Denis';

SELECT * FROM employees WHERE first_name = 'Elvis';

/* operator for where clause 
AND, 
OR, 
IN / NOT IN,  
LIKE / NOT LIKE
BETWEEN AND
EXIST / NOT EXIST
IS NULL / IS NOT NULL

*/
-- AND
-- male + denis
SELECT * FROM employees WHERE first_name = 'Denis' AND gender ='M';
-- female + Kellie
SELECT * FROM employees WHERE first_name = 'Kellie' AND gender ='F';


-- OR
-- Devis + elvis
SELECT * FROM employees WHERE first_name = 'Denis' OR  first_name ='Elvis';
SELECT * FROM employees WHERE first_name = 'Kellie' OR  first_name ='Aruna';

-- Operator precedence 
-- SELECT * FROM employees WHERE first_name = 'Denis' AND gender ='M' OR gender ='F'; this is wrong 

SELECT * FROM employees WHERE first_name = 'Denis' AND (gender ='M' OR gender ='F');


SELECT * FROM employees WHERE gender ='F' AND (first_name = 'Kellie' OR  first_name ='Aruna');


-- IN / NOT IN

Select * from employees where first_name in ('Cathie', 'Mark', 'Nathan');

Select * from employees where first_name not in ('Cathie', 'Mark', 'Nathan');


Select * from employees where first_name in ('Denis', 'Elvis');

Select * from employees where first_name not in ('Jacob', 'Mark', 'John');


-- Like / Not Like --> case insestive
-- % Multiple character  
-- _ Single character
Select * from employees where first_name like ('Mar%');
Select * from employees where first_name like ('ar%');
Select * from employees where first_name like ('%ar');
Select * from employees where first_name like ('%ar%');

Select * from employees where first_name like ('Mar_');
 
Select * from employees where first_name not like ('Mar_');

Select * from employees where first_name like ('Mark_');

-- hired in 2000
Select * from employees where hire_date like '2000%';

-- employee number 5 char start with 1000
Select * from employees where emp_no like '1000_';

-- wild card * retreive all columns
-- Between AND
Select * from employees where hire_date between '1900-01-01' AND '2000-01-01';
Select * from employees where hire_date not between '1900-01-01' AND '2000-01-01';

Select * from salaries where salary between 66000 AND 70000;
Select * from salaries where emp_no not between 10004 AND '10012';
Select * from departments where dept_no between 'd003' AND 'd004';

-- NOT NULL / NULL
select * from employees where first_name is not null;
select * from employees where first_name is null;
Select * from departments where dept_no is not null;

-- Other comparision operator 
-- = ,>,<, >=, <=, <> !=
-- Equal to
Select * from employees where first_name ='Mark';

-- Not equal to

Select * from employees where first_name !='Mark';
Select * from employees where first_name <>'Mark';
-- greater then and greater then equal to
Select * from employees where hire_date > '2000-01-01';
Select * from employees where hire_date >='2000-01-01';

-- less then and less then equal to
Select * from employees where hire_date < '1985-02-01';
Select * from employees where hire_date <='1985-02-01';


select * from employees where gender='F' and hire_date >= '2000-01-01';
select * from salaries where salary > 150000;


-- Distinct
Select Distinct gender from employees;

select distinct hire_date from employees;

/*
-- Aggregate Functions
COUNT
SUM
MAX
MIN
AVG
*/
-- count()
Select count(distinct emp_no) from employees;
/*How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?*/
select count(*) from salaries where salary >= 100000;

/*How many managers do we have in the “employees” database? Use the star symbol (*) in your code to solve this exercise.*/
select count( emp_no) from dept_manager;


-- Order by 

select * from employees order by first_name; -- equal to asc
select * from employees order by first_name desc;
select * from employees order by first_name , last_name ;
select * from employees order by hire_date desc;

-- Group by
Select first_name, count(first_name) from employees Group by first_name;
Select first_name, count(first_name) from employees Group by first_name Order by first_name desc;

-- Using Alias
Select first_name, count(first_name) as first_name_count from employees Group by first_name Order by first_name desc;

select Salary, count(Salary) as emps_with_same_salary from Salaries where salary >80000 Group by Salary Order by salary ;

-- Having
Select first_name, count(first_name) from employees Group by first_name Having Count(first_name)>250 Order by first_name ;
Select emp_no , Avg(Salary) from Salaries Group by emp_no Having Avg(Salary) >120000 ;


select emp_no, count(emp_no) from dept_emp where from_date>'2000-01-01' Group by emp_no Having count(emp_no) >1;
-- limit
select * from dept_emp limit 100;


-- Aggregation
-- COUNT()
Select count(distinct dept_no) from dept_emp;

-- SUM()

select SUM(Salary) from salaries where from_date > '1997-01-01';
-- MIN/ MAX
select MIN(Salary) from salaries ;
select MAX(Salary) from salaries ;

select min(emp_no) from employees;
select Max(emp_no) from employees;
-- Avg
select Avg(salary) from salaries where from_date >'1997-01-01';


-- Round
select ROUND(Avg(salary)) from salaries where from_date >'1997-01-01'; -- 67718 
select ROUND(Avg(salary),2) from salaries where from_date >'1997-01-01'; -- 67717.75

-- IFNULL, ISCOALESCE()
select * from departments_dup;
alter table departments_dup change dept_name dept_name varchar(40) null;
insert into departments_dup (dept_no) values ('d011'),('d012');

Alter table departments_dup Add dept_manager varchar(40) null;

SELECT 
    dept_no,
    IFNULL(dept_name, 'No Name'),
    COALESCE(dept_manager, dept_name, 'NA'),
    COALESCE('Fake Value') as 'Fake Value'
 FROM
    departments_dup;

SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;

SELECT 
    IFNULL(dept_no, 'N/A') AS dept_no,
    IFNULL(dept_name,
            'Department name not provided') AS dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;































