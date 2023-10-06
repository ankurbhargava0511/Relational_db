use sales;
/* Contraints
Primary Key
Foreign Key
Unique Key
Default
NOT NULL
*/


CREATE TABLE companies (
    company_id INT(255) NOT NULL AUTO_INCREMENT,
    company_name VARCHAR(255),
    headquarters_phone_number VARCHAR(12) NOT NULL,
    PRIMARY KEY (company_id)
);



ALTER TABLE  companies CHANGE company_name company_name varchar(255) DEFAULT 'X';
ALTER TABLE  companies ADD UNIQUE KEY (headquarters_phone_number );

ALTER TABLE companies modify company_name Varchar(255) NULL;
ALTER TABLE companies modify company_name Varchar(255) NOT NULL;


ALTER TABLE companies
MODIFY headquarters_phone_number VARCHAR(255) NULL;


ALTER TABLE companies
CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NOT NULL;

INSERT INTO companies( headquarters_phone_number) value (2876826878);

SELECT 
    *
FROM
    companies;
DROP TABLE companies;



CREATE TABLE items (
    item_code VARCHAR(255),
    item VARCHAR(255),
    unit_price NUMERIC(10 , 2 ),
    company_id VARCHAR(255),
    PRIMARY KEY (item_code)
); 

DROP TABLE items;

CREATE TABLE customers (
    customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT DEFAULT 0,
    PRIMARY KEY (customer_id),
    UNIQUE KEY (email_address)
);

DROP TABLE customers;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id)
);

ALTER TABLE customers add Unique key (email_address);

ALTER table customers drop index email_address;

ALTER TABLE customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;

ALTER TABLE customers CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John1', 'Mackinley1', 'H', 'john.mckinley@365careers.com1', 0);





CREATE TABLE sales (
    purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
    PRIMARY KEY (purchase_number),
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
        ON DELETE CASCADE
);

DROP TABLE sales;
CREATE TABLE sales (
    purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
    PRIMARY KEY (purchase_number)
);

ALTER TABLE sales ADD FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
        ON DELETE CASCADE;
        
ALTER TABLE sales DROP foreign key sales_ibfk_1;











