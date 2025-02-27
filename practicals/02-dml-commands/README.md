# Lab 02: Implementation of Data Manipulation Language Commands

## Objective
To practice and implement data manipulation language commands.

---

## Theory and Lab Tasks
DML is a subset of SQL used for managing and manipulating data stored in relational databases. DML focuses on modifying the data within the tables enabling users to perform operations like retrieving, inserting, updating and deleting data.

---

## Tasks
**Create a database named 'cosmos' and table called 'employee' with following structure.**
| column name | data type |
|-------------|-----------|
| e_id        | int       |
| e_name      | varchar(20) |
| e_job       | varchar(20) |
| e_salary    | int       |

```sql
CREATE DATABASE cosmos;

USE cosmos;

CREATE TABLE employee (
    e_id INT,
    e_name VARCHAR(20),
    e_job VARCHAR(20),
    e_salary INT
);
```

1. **Insert a single record in employee table.**
```sql
INSERT INTO employee
VALUES
(1, 'Pawan', 'Manager', 20000);
```

2. **Insert more than one record in employee table using insert command.**
```sql
INSERT INTO employee
VALUES
(2, 'John', 'Programmer', 50000),
(3, 'Biwas', 'Doctor', 30000);
```

3. **Update the employee table to set salary of all employees to Rs.25000 who is working as programmer.**
```sql
UPDATE employee
SET e_salary = 25000
WHERE e_job = 'Programmer';
```

4. **Select all information from employee table.**
```sql
SELECT *
FROM employee;
```

**Output:**  
| e_id | e_name | e_job | e_salary |
|------|--------|-------|----------|
| 1    | Pawan  | Manager | 20000  |
| 2    | John   | Programmer | 50000 |
| 3    | Biwas  | Doctor | 30000   |

5. **Select employee name and job from employee table.**
```sql
SELECT e_name, e_job
FROM employee;
```

**Output:**  
| e_name | e_job |
|--------|-------|
| Pawan  | Manager |
| John   | Programmer |
| Biwas  | Doctor |

6. **Delete those who are working as designer.**
```sql
DELETE
FROM employee
WHERE e_job = 'Teacher';
```

7. **Display only those employees who work as analyst.**
```sql
SELECT *
FROM employee
WHERE e_job = 'analyst';
```

**Output:**  
| e_id | e_name | e_job | e_salary |
|------|--------|-------|----------|
|      |        |       |          |

8. **Display employee job from table avoiding duplicate values.**
```sql
SELECT DISTINCT e_job
FROM employee;
```

**Output:**  
| e_job |
|-------|
| Manager |
| Programmer |
| Doctor |

9. **Dispaly employee name and job from table whose salary is greater than or equal to 20,000.**
```sql
SELECT e_name, e_job
FROM employee
WHERE salary > 20000;.
```

**Output:**  
| e_name | e_job |
|--------|-------|
| JOhn   | 50000 |
| Biwas  | 30000 |

---

## Conclusion
Finally after completion of this lab session, we were able to learn how the DML commands are used and how they manipulate the relations we have created. We basically learned to implement DML commands.

---
