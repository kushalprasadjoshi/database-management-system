-- INITIAL SETUP:

-- Step1: Create a database lab7
CREATE DATABASE lab7;

-- Step2: Use the database lab7
USE lab7;

-- Step3: Create a student table and insert some data
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    address VARCHAR(50)
);

INSERT INTO student (id, name, age, address) VALUES
(101, 'Maya', 19, 'Ktm'),
(102, 'Arnav', 18, 'Bkt'),
(103, 'Krishna', 19, 'Lalitpur');

-- Step4: Create student audit table to store events
CREATE TABLE student_audit (
    id INT PRIMARY KEY,
    audit_description VARCHAR(100)
);

-- Step5: Show the student table
SELECT * FROM student;

-- Step6: Show the student audit table
SELECT * FROM student_audit;

--> LAB EXERCISES:

--> Create a trigger that fires an insert operation on the student table

-- Step1: Create a trigger for after insert
DELIMITER //

CREATE TRIGGER afterInsertStudent
AFTER INSERT ON student
FOR EACH ROW
BEGIN
    INSERT INTO student_audit (id, audit_description)
    VALUES (NEW.id, CONCAT('A new student has been added at time ', NOW()));
END //

DELIMITER ;

-- Step2: Insert a new row into the student table
INSERT INTO student (id, name, age, address)
VALUES 
(104, 'Sita', 20, 'Pokhara'),
(105, 'Rita', 21, 'Dhanghadi');

-- Step3: Show the student table
SELECT * FROM student;

-- Step4: Show the student audit table
SELECT * FROM student_audit;

--> Create a trigger that fires an update operation on the student table

-- Step1: Create a trigger for after update
DELIMITER //

CREATE TRIGGER afterUpdateStudent
AFTER UPDATE ON student
FOR EACH ROW
BEGIN
    INSERT INTO student_audit (id, audit_description)
    VALUES (NEW.id, CONCAT('Student with ID ', NEW.id, ' has been updated at time ', NOW()));
END //

DELIMITER ;

-- Step2: Update a row in the student table
UPDATE student
SET name = 'Maya Devi', age = 20, address = 'Kathmandu'
WHERE id = 101;

-- Step3: Show the student table
SELECT * FROM student;

-- Step4: Show the student audit table
SELECT * FROM student_audit;

--> Cleanup
DROP TABLE student;
DROP TABLE student_audit;


