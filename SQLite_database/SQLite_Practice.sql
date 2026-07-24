-- SQLite Practice
-- File: SQLite_Practice.sql
-- Purpose: Practicing SQL queries in SQLite



-- Create Table


CREATE TABLE Employee(
    employee_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    department TEXT,
    salary INTEGER
);



-- Insert Data


INSERT INTO Employee
VALUES
(1, 'Ali', 25, 'IT', 60000),
(2, 'Ahmed', 28, 'HR', 50000),
(3, 'Sara', 23, 'IT', 70000),
(4, 'Usman', 30, 'Finance', 80000),
(5, 'Ayesha', 26, 'HR', 55000);



-- SELECT Queries


-- Display all employees

SELECT *
FROM Employee;



-- Display employee names and departments

SELECT name, department
FROM Employee;




-- WHERE Condition


-- Employees from IT department

SELECT *
FROM Employee
WHERE department = 'IT';



-- Employees with salary greater than 60000

SELECT *
FROM Employee
WHERE salary > 60000;




-- ORDER BY

-- Sort employees by salary ascending

SELECT *
FROM Employee
ORDER BY salary ASC;



-- Sort employees by salary descending

SELECT *
FROM Employee
ORDER BY salary DESC;




-- Aggregate Functions


-- Count total employees

SELECT COUNT(*) AS Total_Employees
FROM Employee;



-- Find average salary

SELECT AVG(salary) AS Average_Salary
FROM Employee;



-- Find highest salary

SELECT MAX(salary) AS Highest_Salary
FROM Employee;



-- Find lowest salary

SELECT MIN(salary) AS Lowest_Salary
FROM Employee;




-- GROUP BY


-- Count employees in each department

SELECT
    department,
    COUNT(*) AS Number_of_Employees
FROM Employee
GROUP BY department;




-- UPDATE


-- Update employee salary

UPDATE Employee
SET salary = 75000
WHERE employee_id = 3;




-- DELETE


-- Delete an employee record

DELETE FROM Employee
WHERE employee_id = 5;




-- JOIN Practice


CREATE TABLE Department(
    department_id INTEGER PRIMARY KEY,
    department_name TEXT
);



INSERT INTO Department
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');



SELECT
    Employee.name,
    Employee.department,
    Department.department_name
FROM Employee
LEFT JOIN Department
ON Employee.department = Department.department_name;