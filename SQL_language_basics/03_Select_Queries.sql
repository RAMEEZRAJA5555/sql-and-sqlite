


-- Display all records from Student table

SELECT * 
FROM Student;



-- Display specific columns

SELECT name, department
FROM Student;



-- Display students from Software Engineering department

SELECT *
FROM Student
WHERE department = 'Software Engineering';



-- Display students with age greater than 20

SELECT *
FROM Student
WHERE age > 20;



-- Display only unique departments

SELECT DISTINCT department
FROM Student;



-- Rename columns using alias

SELECT 
    name AS Student_Name,
    department AS Department_Name
FROM Student;



-- Display first two records

SELECT *
FROM Student
LIMIT 2;


###
What this file demonstrates:
SELECT * → display all columns and records
Selecting specific columns
WHERE → filtering records
DISTINCT → removing duplicate values
AS → giving temporary column names (alias)
LIMIT → restricting number of results

###