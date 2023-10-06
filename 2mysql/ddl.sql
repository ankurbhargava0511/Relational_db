-- creating Database
create database if not exists Sales;
-- create schema if not exists Sales;  -- same as create databases
-- using db
use Sales;


/*

Data Types
string - James - 5 symbol 5 bytes
CHAR   	fixed   - James 5 bytes , bob 5 bytes    - max 255
VARCHAR varible max 65635 
ENUM ENUM ('m','F')

INTEGER - (Sign or unsign)
	TINYINT(bytes 1), 
    SMALLINT(bytes 2), 
    MEDIUMINT(bytes 3)
    INT( bytes 4)
    BIGINT(bytes 8)
FIXED - 10.523 , Precision=5 , scale=3
	DECIMAL(5,3) = 10.523
    DECIMAL(7) = DECIMAL (7,0)
    NUMERIC = DECIMAL
FLOAT (5,3) = 10.5242442= 10.524
	FLOAT 4 bytes
    DOUBLE 8 bytes
    
DATE - YYYY-MM-DD HH:MM:SS
TIMESTAMP - YYYY-MM-DD HH:MM:SS UTC


BLOB 

*/ 


CREATE TABLE sales
(
	purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT  ,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10)
);


CREATE TABLE customers (
    customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT
);

/* all 4 queries are valid */
select * from sales;
select * from customers;
select * from sales.sales;
select * from sales.customers;



DROP Table sales;
DROP Table customers;


-- dropping database
drop database Sales;
-- drop schema Sales;








