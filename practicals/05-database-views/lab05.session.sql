/*
LAB 05: TO CREATE AND MANIPULATE VARIOUS DATABASE OBJECTS OF TABLE USING VIEWS.
*/


-- Create a database named lab5
CREATE DATABASE lab5;

-- Create tables and insert data
USE lab5;

-- 1. Customer Table:
CREATE TABLE customer (
    cid INT,
    name VARCHAR(20),
    age SMALLINT,
    address VARCHAR(20),
    salary FLOAT
);

-- 2. Order Table:
CREATE TABLE `order` (
    oid INT,
    order_date DATE,
    cid INT,
    amount FLOAT
);

-- 3. Employee Table:
CREATE TABLE employee (
    eid INT,
    ename VARCHAR(20),
    job VARCHAR(20),
    did VARCHAR(20),
    salary FLOAT
);


-- 4. Department Table:
CREATE TABLE department (
    did VARCHAR(20),
    dname VARCHAR(20),
    location VARCHAR(20)
);

-- Inserting Values:
INSERT INTO customer
VALUES
(1, 'ram', 32, 'kathmandu', 2000.00),
(2, 'shyam', 25, 'patan', 1500.00),
(3, 'hari', 23, 'dharan', 2000.00),
(4, 'gopal', 25, 'pokhara', 6500.00),
(5, 'sita', 27, 'bhaktapur', 8500.00),
(6, 'gita', 22, 'illam', 4500.00),
(7, 'rita', 24, 'banepa', 10000.00);

INSERT INTO `order`
VALUES
(102, '2015-10-08', 3, 3000),
(100, '2014-10-08', 3, 1500),
(101, '2014-11-20', 2, 1560),
(103, '2013-05-20', 4, 2060);

INSERT INTO employee
VALUES
(1, 'arjun', 'AP', 1, 10000.00),
(2, 'rabi', 'JP', 2, 12000.00),
(3, 'rohan', 'AP', 2, 15000.00),
(4, 'krishna', 'AP', 1, 20000.00);

INSERT INTO department
VALUES
(1, 'accounting', 'kathmandu'),
(2, 'sales', 'patan'),
(3, 'resarch', 'banepa'),
(4, 'operations', 'bhaktapur');


--1) Use view to display only the details of employees who are AP.
CREATE VIEW ap_employees
AS (
    SELECT *
    FROM employee
    WHERE job = 'AP'
);

SELECT * 
FROM ap_employees;

--2) Use view to display only name, salary and department of employee whose salary is greater than 10000.
CREATE VIEW salary_view
AS (
    SELECT ename, salary, dname
    FROM employee
    INNER JOIN department
    ON salary > 10000
);

SELECT *
FROM salary_view;

--3) Use view to display name, age of customer as well as order date and amount
CREATE VIEW customer_view AS
SELECT c.name, c.age, o.order_date, o.amount
FROM customer AS c
INNER JOIN `order` AS o
ON c.cid = o.cid;

SELECT *
FROM customer_view;

--4) Update view of Q.N.3 to include address and salary of customer.
ALTER VIEW customer_view AS
SELECT c.name, c.age, c.address, c.salary, o.order_date, o.amount
FROM customer AS c
INNER JOIN `order` AS o
ON c.cid = o.cid;

SELECT *
FROM customer_view;

--5) Again update view of Q.N.4 to include only salary greater than 5000.
ALTER VIEW customer_view AS
SELECT c.name, c.age, c.address, c.salary, o.order_date, o.amount
FROM customer AS c
INNER JOIN `order` AS o
ON c.cid = o.cid
WHERE salary > 5000;

SELECT *
FROM customer_view;