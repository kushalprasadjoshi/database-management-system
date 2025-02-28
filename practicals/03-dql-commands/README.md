# Lab 03: Implementation of DQL Commands

## Objective
To practice and implement Data Query Language commands.

---

## Lab Exercise
**Create a database named 'lab3' with table called 'employee' with following structure.**
| Column Name | Data type |
|-------------|-----------|
| eid         | int       |
| ename       | char(20)  |
| job         | char(20)  |
| country     | char(25)  |
| city        | char(25)  |
| salary      | int       |

```sql
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
```

1. **Select all information from employee table.**
```sql
SELECT * 
FROM employee;
```
**Output:**  
| eid | ename | job       | country | city      | salary |
|-----|-------|-----------|---------|-----------|--------|
| 1   | Pawan | Manager   | Nepal   | Pokhara   | 20000  |
| 2   | John  | Programmer| Germany | Munich    | 5000   |
| 3   | Biwas | Doctor    | Germany | Berlin    | 2500   |
| 4   | Pradip| Banker    | Germany | Hamburg   | 3400   |
| 5   | Ujjwal| Analyst   | Nepal   | Makwanpur | 1300   |
| 6   | Harry | Engineer  | Nepal   | Dhampus   | 200    |
| 7   | Sabin | Army      | India   | Delhi     | 2000   |
| 8   | Ron   | Manager   | UK      | Manchester| 20000  |
| 9   | Binod | Lecturer  | India   | Bihar     | 240    |
| 10  | Madhav| Pilot     | Finland | London    | 20000  |

2. **Select employee name and job from employee table.**
```sql
SELECT ename, job
FROM employee;
```
**Output:**  
| ename | job       |
|-------|-----------|
| Pawan | Manager   |
| John  | Programmer|
| Biwas | Doctor    |
| Pradip| Banker    |
| Ujjwal| Analyst   |
| Harry | Engineer  |
| Sabin | Army      |
| Ron   | Manager   |
| Binod | Lecturer  |
| Madhav| Pilot     |

3. **Display all information from employee with country 'Germany' and salary greater than 2000.**
```sql
SELECT *
FROM employee
WHERE country='Germany' AND salary > 2000;
```
**Output:**  
| eid | ename | job     | country | city    | salary |
|-----|-------|---------|---------|---------|--------|
| 2   | John  | Programmer | Germany | Munich  | 5000 |
| 3   | Biwas | Doctor     | Germany | Berlin  | 2500 |
| 4   | Pradip| Banker     | Germany | Hamburg | 3400 |

4. **Display name, country, job and salary of employee with either job is 'Programmer' or 'Manager'**
```sql
SELECT ename, country, job, salary
FROM employee
WHERE job='Programmer' OR job='Manager';
```
**Output:**  
| ename | country | job       | salary |
|-------|---------|-----------|--------|
| Pawan | Nepal   | Manager   | 20000  |
| John  | Germany | Programmer| 5000   |
| Ron   | UK      | Manager   | 20000  |

5. **Display all information from employee with country 'Germany' and city either 'Munich' or 'Berlin'.**
```sql
SELECT *
FROM employee
WHERE country='Germany' AND 
    (city='Munich' OR city='Berlin');
```
**Output:**  
| eid | ename | job       | country | city    | salary |
|-----|-------|-----------|---------|---------|--------|
| 2   | John  | Programmer| Germany | Munich  | 5000   |
| 3   | Biwas | Doctor    | Germany | Berlin  | 2500   |

6. **Display all information from employee sorted in descending order.**
```sql
SELECT *
FROM employee
ORDER BY eid DESC;
```
**Output:**  
| eid | ename | job       | country | city      | salary |
|-----|-------|-----------|---------|-----------|--------|
| 10  | Madhav| Pilot     | Finland | London    | 20000  |
| 9   | Binod | Lecturer  | India   | Bihar     | 240    |
| 8   | Ron   | Manager   | UK      | Manchester| 20000  |
| 7   | Sabin | Army      | India   | Delhi     | 2000   |
| 6   | Harry | Engineer  | Nepal   | Dhampus   | 200    |
| 5   | Ujjwal| Analyst   | Nepal   | Makwanpur | 1300   |
| 4   | Pradip| Banker    | Germany | Hamburg   | 3400   |
| 3   | Biwas | Doctor    | Germany | Berlin    | 2500   |
| 2   | John  | Programmer| Germany | Munich    | 5000   |
| 1   | Pawan | Manager   | Nepal   | Pokhara   | 20000  |

7. **Select all employees with name starting with letter 'j'.**
```sql
SELECT *
FROM employee
WHERE ename LIKE 'j%';
```
**Output:**  
| eid | ename | job       | country | city    | salary |
|-----|-------|-----------|---------|---------|--------|
| 2   | John  | Programmer| Germany | Munich  | 5000   |

8. **Select all employees with country ending with letter 'y'**
```sql
SELECT *
FROM employee
WHERE country LIKE '%y';
```
**Output:**  
| eid | ename | job       | country | city    | salary |
|-----|-------|-----------|---------|---------|--------|
| 2   | John  | Programmer| Germany | Munich  | 5000   |
| 3   | Biwas | Doctor    | Germany | Berlin  | 2500   |
| 4   | Pradip| Banker    | Germany | Hamburg | 3400   |

9. **Select all employees with country containing pattern 'e'**
```sql
SELECT *
FROM employee
WHERE country LIKE '%e%';
```
**Output:**  
| eid | ename | job       | country | city      | salary |
|-----|-------|-----------|---------|-----------|--------|
| 1   | Pawan | Manager   | Nepal   | Pokhara   | 20000  |
| 2   | John  | Programmer| Germany | Munich    | 5000   |
| 3   | Biwas | Doctor    | Germany | Berlin    | 2500   |
| 4   | Pradip| Banker    | Germany | Hamburg   | 3400   |
| 5   | Ujjwal| Analyst   | Nepal   | Makwanpur | 1300   |
| 6   | Harry | Engineer  | Nepal   | Dhampus   | 200    |

10. **Select all employees with country not containing pattern 'land'**
```sql
SELECT *
FROM employee
WHERE country NOT LIKE '%land%';
```
**Output:**  
| eid | ename | job       | country | city      | salary |
|-----|-------|-----------|---------|-----------|--------|
| 1   | Pawan | Manager   | Nepal   | Pokhara   | 20000  |
| 2   | John  | Programmer| Germany | Munich    | 5000   |
| 3   | Biwas | Doctor    | Germany | Berlin    | 2500   |
| 4   | Pradip| Banker    | Germany | Hamburg   | 3400   |
| 5   | Ujjwal| Analyst   | Nepal   | Makwanpur | 1300   |
| 6   | Harry | Engineer  | Nepal   | Dhampus   | 200    |
| 7   | Sabin | Army      | India   | Delhi     | 2000   |
| 8   | Ron   | Manager   | UK      | Manchester| 20000  |
| 9   | Binod | Lecturer  | India   | Bihar     | 240    |

11. **Select all employees with city starting with any character followed by 'erlin'**
```sql
SELECT *
FROM employee
WHERE city LIKE '%erlin';
```
**Output:**  
| eid | ename | job       | country | city    | salary |
|-----|-------|-----------|---------|---------|--------|
| 3   | Biwas | Doctor    | Germany | Berlin  | 2500   |

12. **Select all employees with a city starting with 'l', followed by any character, followed by 'n', followed by any character, followed by 'on'**
```sql
SELECT *
FROM employee
WHERE city LIKE 'l%n%on';
```
**Output:**  
| eid | ename | job       | country | city    | salary |
|-----|-------|-----------|---------|---------|--------|
| 10  | Madhav| Pilot     | Finland | London  | 20000  |

13. **Select all employees with city starting with 'b', 'm', or 'd'**
```sql
SELECT *
FROM employee
WHERE city LIKE 'b%' OR city LIKE 'm%' OR city LIKE 'd%';
```
**Output:**  
| eid | ename | job       | country | city      | salary |
|-----|-------|-----------|---------|-----------|--------|
| 2   | John  | Programmer| Germany | Munich    | 5000   |
| 3   | Biwas | Doctor    | Germany | Berlin    | 2500   |
| 5   | Ujjwal | Analyst  | Nepal   | Makwanpur | 1300   |
| 6   | Harry | Engineer  | Nepal   | Dhampus   | 200    |
| 7   | Sabin | Army      | India   | Delhi     | 2000   |
| 8   | Ron   | Manager   | UK      | Manchester | 20000 |
| 9   | Binod | Lecturer  | India   | Bihar     | 240    |

14. **Select all employees with city starting with 'a', 'b', or 'c'**
```sql
SELECT *
FROM employee
WHERE city LIKE 'a%' OR city LIKE 'b%' OR city LIKE 'c%';
```
**Output:**  
| eid | ename | job       | country | city      | salary |
|-----|-------|-----------|---------|-----------|--------|
| 3   | Biwas | Doctor    | Germany | Berlin    | 2500   |
| 9   | Binod | Lecturer  | India   | Bihar     | 240    |

15. **Select all employees with city not starting with 'b', 'm', or 'd'**
```sql
SELECT *
FROM employee
WHERE city NOT LIKE 'b%' AND city NOT LIKE 'm%' AND city NOT LIKE 'd%';
```
**Output:**  
| eid | ename | job       | country | city      | salary |
|-----|-------|-----------|---------|-----------|--------|
| 1   | Pawan | Manager   | Nepal   | Pokhara   | 20000  |
| 4   | Pradip| Banker    | Germany | Hamburg   | 3400   |
| 10  | Madhav| Pilot     | Finland | London    | 20000  |

16. **Select all employees with a city of 'Delhi' or 'Manchester' use IN operator**
```sql
SELECT * 
FROM employee 
WHERE city IN ('Delhi', 'Manchester');
```
**Output:**  
| eid | ename | job       | country | city      | salary |
|-----|-------|-----------|---------|-----------|--------|
| 7   | Sabin | Army      | India   | Delhi     | 2000   |
| 8   | Ron   | Manager   | UK      | Manchester| 20000  |

17. **Select all employees with salary between 20000 and 35000**
```sql
SELECT *
FROM employee
WHERE salary BETWEEN 20000 AND 35000;
```
**Output:**  
| eid | ename | job       | country | city      | salary |
|-----|-------|-----------|---------|-----------|--------|
| 1   | Pawan | Manager   | Nepal   | Pokhara   | 20000  |
| 8   | Ron   | Manager   | UK      | Manchester| 20000  |
| 10  | Madhav| Pilot     | Finland | London    | 20000  |

18. **Select all employees with salary Between 10000 and 40000, but employees with a ID of 1, 2, or 3 should not be displayed**
```sql
SELECT *
FROM employee
WHERE salary BETWEEN 10000 AND 40000 AND eid NOT IN(1, 2, 3);
```
**Output:**  
| eid | ename | job       | country | city      | salary |
|-----|-------|-----------|---------|-----------|--------|
| 8   | Ron   | Manager   | UK      | Manchester| 20000  |
| 10  | Madhav| Pilot     | Finland | London    | 20000  |

19. **Select all employees with city beginning with any of the letter between 'b' and 'm'**
```sql
SELECT *
FROM employee
WHERE city BETWEEN 'b' AND 'm';
```
**Output:**  
| eid | ename | job       | country | city      | salary |
|-----|-------|-----------|---------|-----------|--------|
| 3   | Biwas | Doctor    | Germany | Berlin    | 2500   |
| 4   | Pradip| Banker    | Germany | Hamburg   | 3400   |
| 6   | Harry | Engineer  | Nepal   | Dhampus   | 200    |
| 7   | Sabin | Army      | India   | Delhi     | 2000   |
| 9   | Binod | Lecturer  | India   | Bihar     | 240    |
| 10  | Madhav| Pilot     | Finland | London    | 20000  |

20. **Select all employees with city beginning with any of the letter not between 'b' and 'm'**
```sql
SELECT *
FROM employee
WHERE city NOT BETWEEN 'b' AND 'm';
```
**Output:**  
| eid | ename | job       | country | city      | salary |
|-----|-------|-----------|---------|-----------|--------|
| 1   | Pawan | Manager   | Nepal   | Pokhara   | 20000  |
| 2   | John  | Programmer| Germany | Munich    | 5000   |
| 5   | Ujjwal| Analyst   | Nepal   | Makwanpur | 1300   |
| 8   | Ron   | Manager   | UK      | Manchester| 20000  |

---

## Conclusion
In this lab we learnt the proper implementation of DQL (Data Query Language) commands to maintain the tables in database.

---
