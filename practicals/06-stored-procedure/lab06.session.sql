CREATE DATABASE lab6;

USE lab6;

CREATE TABLE student_marks(
    stu_id INT PRIMARY KEY,
    total_marks FLOAT,
    grade VARCHAR(5)
);

INSERT INTO student_marks
VALUES
(1, 450, 'A+'),
(2, 490, 'A++'),
(3, 440, 'B'),
(4, 380, 'C'),
(5, 150, 'D'),
(6, 100, 'F');

--1. Create a procedure that finds the marks of all the students

DELIMITER //
CREATE PROCEDURE get_all_student_marks() 
BEGIN 
    SELECT * FROM student_marks; 
END //
DELIMITER ;

CALL get_all_student_marks();

--2. Create a procedure that finds students who obtained marks > 200
DELIMITER //
CREATE PROCEDURE get_students_above_200()
BEGIN
    SELECT * FROM student_marks WHERE total_marks > 200;
END //
DELIMITER ;

CALL get_students_above_200();

--3. Create a procedure that takes grade as parameter
DELIMITER //
CREATE PROCEDURE get_students_by_grade(IN grade_param VARCHAR(5))
BEGIN
    SELECT * FROM student_marks WHERE grade = grade_param;
END //
DELIMITER ;

CALL get_students_by_grade('A+');

--4. Alter the procedure to change the proc to display only grade of student
DELIMITER //
CREATE PROCEDURE get_student_grades()
BEGIN
    SELECT grade FROM student_marks;
END //
DELIMITER ;

CALL get_student_grades();

--5. Drop any procedure
DROP PROCEDURE IF EXISTS get_all_student_marks;

