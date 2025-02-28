/*
LAB 04: TO PERFORM SUB QUERIES AND JOIN QUERIES USING DML.
*/


-- Create a database named lab4
CREATE DATABASE lab4;

-- Create tables and insert data
USE lab4;

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


-- 1. Display all employees names and salary whose salary is greater than minimum salary and job title starts with 'j'
SELECT ename, salary
FROM employee
WHERE salary > (
        SELECT MIN(salary)
        FROM employee
    )
    AND job LIKE 'j%';

-- 2. Find all employees who work in same job as 'arjun'
SELECT *
FROM employee
WHERE job = (
        SELECT job
        FROM employee
        WHERE ename = 'arjun'
    );

-- 3. Display information about employees who earn more than employee in dept1
SELECT *
FROM employee
WHERE salary > (
        SELECT MAX(salary)
        FROM employee
        WHERE did = 1
    );

-- 4. Implement join queries
--a. Inner join
SELECT customer.cid, customer.name
FROM customer
INNER JOIN `order`
ON customer.cid = `order`.cid;

--b. left join
SELECT customer.cid, customer.name
FROM customer
LEFT JOIN `order`
ON customer.cid = `order`.cid;

--c. Right join
SELECT customer.cid, customer.name
FROM customer
RIGHT JOIN `order`
ON customer.cid = `order`.cid;
