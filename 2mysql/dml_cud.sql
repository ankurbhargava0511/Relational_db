use employees; 
-- Insert
INSERT INTO employees
(
emp_no,
birth_date,
first_name,
last_name,
gender,
hire_date)
VALUES
(
999901,
'1986-04-21',
'John',
'Smith',
'M',
'2011-01-01'
);



INSERT INTO employees
(
birth_date,
emp_no,
first_name,
last_name,
gender,
hire_date)
VALUES
(
'1986-04-21',
999902,
'Patricia',
'Lawrence',
'M',
'2011-01-01'
);



INSERT INTO employees
VALUES
(
999903,
'1977-09-14',
'Johnathan',
'Creek',
'M',
'1999-01-01'
);


select * from employees order by emp_no desc limit 10;
select * from titles limit 10;

insert into titles values(999903, 'Senior Engineer', '1997-10-01', '9999-01-01');
select * from dept_emp order by emp_no desc limit 10;
insert into dept_emp values(999903, 'd005','1997-10-01', '9999-01-01');


-- Insert into from table

SELECT 
    *
FROM
    departments;

CREATE TABLE departments_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

INSERT INTO departments_dup
SELECT * FROM departments;

Select * from departments_dup;

INSERT INTO departments VALUES ('d010', 'Business Analysis');


-- TCL (Transaction Control Language) - commit & rollback
commit;
use employees;

select * from employees order by emp_no desc limit 10;

update employees
Set
 first_name ='John1',
 last_name='Smith',
 birth_date='1900-12-31',
 gender='M'
where emp_no=999901;

rollback;

select * from departments;
update departments set dept_name= 'Data Analysis' where dept_no='d010';

-- Delete ( involved delete on cascade)
select * from employees where emp_no=999903;
select * from titles where emp_no=999903;

delete from employees where emp_no=999903;

select * from employees where emp_no=999903; -- no record
select * from titles where emp_no=999903; -- no record
commit;
DELETE FROM departments WHERE dept_no = 'd010';
select * from departments;
rollback;






