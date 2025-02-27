# Lab 01: To Practice and Implement Data Defination Language Commands and Constraints

## Lab Exercise
| column name | data type    |
|-------------|--------------|
| ID          | INT          |
| name        | VARCHAR(20)  |
| dept_name   | VARCHAR(20)  |
| tot_cred    | INT          |

```sql
CREATE DATABASE university;

USE university;

CREATE TABLE student (
    ID INT,
    name VARCHAR(20),
    dept_name VARCHAR(20),
    tot_cred INT
);
```

2. **Allow null for all columns except name and ID.**
```sql
ALTER TABLE student
MODIFY ID INT NOT NULL;

ALTER TABLE student
MODIFY name VARCHAR(20) NOT NULL;
```

3. **Add new column to the table student.**
```sql
ALTER TABLE  student
ADD faculty VARCHAR(20);
```

4. **Create another table learner1(dept_name, code)**
```sql
CREATE TABLE learner1 (
    dept_name VARCHAR(20),
    code INT NOT NULL
);
```

5. **Delete added column from the student.**
```sql
ALTER TABLE student
DROP COLUMN faculty;
```

6. **Define primary key of table learner1.**
```sql
ALTER TABLE learner1
ADD CONSTRAINT dept_name PRIMARY KEY;
```

7. **Add foreign key in learner1 and student relation.**
```sql
ALTER TABLE student
ADD FOREIGN KEY (dept_name) REFERENCES learner1 (dept_name);
```

---

## Conclusion
In this lab we learnt to create a simple database with two relations with theit individual attributes of their respective datatypes. We learnt to add different new attributes and delete attributes, add different constraints.

---
