/*
Lab3:-->
    OBJECTIVE: To practice and implement data query language commands.
*/

CREATE DATABASE lab3;

USE lab3;

CREATE TABLE employee(
    eid INT NOT NULL,
    ename CHAR(20) NOT NULL,
    job CHAR(20),
    country CHAR(25),
    city CHAR(25),
    salary INT NOT NULL
);

INSERT INTO employee
VALUES
(1, 'Pawan', 'Manager', 'Nepal', 'Pokhara', 20000),
(2, 'John', 'Programmer', 'Germany', 'Munich', 5000),
(3, 'Biwas', 'Doctor', 'Germany', 'Berlin', 2500),
(4, 'Pradip', 'Banker', 'Germany', 'Hamburg', 3400),
(5, 'Ujjwal', 'Analyst', 'Nepal', 'Makwanpur', 1300),
(6, 'Harry', 'Engineer', 'Nepal', 'Dhampus', 200),
(7, 'Sabin', 'Army', 'India', 'Delhi', 2000),
(8, 'Ron', 'Manager', 'UK', 'Manchester', 20000),
(9, 'Binod', 'Lecturer', 'India', 'Bihar', 240),
(10, 'Madhav', 'Pilot', 'Finland', 'London', 20000);


-- 1. Select all information from employee table
SELECT * 
FROM employee;

-- 2. Select employee name and job from employee table.
SELECT ename, job
FROM employee;

-- 3. Display all information from employee with country 'Germany' and salary greater than 2000.
SELECT *
FROM employee
WHERE country='Germany' AND salary > 2000; 

-- 4. Display name, country, job and salary of employee with either job is 'Programmer' or 'Manager'
SELECT ename, country, job, salary
FROM employee
WHERE job='Programmer' OR job='Manager';

-- 5. Display all information from employee with country 'Germany' and city either 'Munich' or 'Berlin'.
SELECT *
FROM employee
WHERE country='Germany' AND 
    (city='Munich' OR city='Berlin');

-- 6. Display all information from employee sorted in descending order.
SELECT *
FROM employee
ORDER BY eid DESC;

-- 7. Select all employees with name starting with letter 'j'.
SELECT *
FROM employee
WHERE ename LIKE 'j%';

--8. Select all employees with country ending with letter 'y'
SELECT *
FROM employee
WHERE country LIKE '%y';

-- 9. Select all employees with country containing pattern 'e'
SELECT *
FROM employee
WHERE country LIKE '%e%';

-- 10. Select all employees with country not containing pattern 'land'
SELECT *
FROM employee
WHERE country NOT LIKE '%land%';

-- 11. Select all employees with city starting with any character followed by 'erlin'
SELECT *
FROM employee
WHERE city LIKE '%erlin';

-- 12. Select all employees with a city starting with 'l',  followed by any character, followed by 'n', followed by any character, followed by 'on'
SELECT *
FROM employee
WHERE city LIKE 'l%n%on';

-- 13. Select all employees with city starting with 'b', 'm', or 'd'
SELECT *
FROM employee
WHERE city LIKE 'b%' OR city LIKE 'm%' OR city LIKE 'd%';

-- 14. Select all employees with city starting with 'a', 'b', or 'c'
SELECT *
FROM employee
WHERE city LIKE 'a%' OR city LIKE 'b%' OR city LIKE 'c%';

-- 15. Select all employees with city not starting with 'b', 'm', or 'd'
SELECT *
FROM employee
WHERE city NOT LIKE 'b%' AND city NOT LIKE 'm%' AND city NOT LIKE 'd%';

-- 16. Select all employees with a city of 'Delhi' or 'Manchester' use IN operator
SELECT * 
FROM employee 
WHERE city IN ('Delhi', 'Manchester');

-- 17. Select all employees with salary between 20000 and 35000
SELECT *
FROM employee
WHERE salary BETWEEN 20000 AND 35000;

-- 18. Select all employees with salary Between 10000 and 40000, but employees with a ID of 1, 2, or 3 should not be displayed
SELECT *
FROM employee
WHERE salary BETWEEN 10000 AND 40000 AND eid NOT IN(1, 2, 3);

-- 19. Select all employees with city begining with any of the letter between 'b' and 'm'
SELECT *
FROM employee
WHERE city BETWEEN 'b' AND 'm';

-- 20. Select all employees with city begining with any of the letter not between 'b' and 'm'
SELECT *
FROM employee
WHERE city NOT BETWEEN 'b' AND 'm';
