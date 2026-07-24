
-- File: 06_Aggregate_Functions.sql
-- Purpose: Performing calculations on data



-- COUNT()
-- Counts the number of records



-- Count total number of students

SELECT COUNT(*) AS Total_Students
FROM Student;



-- Count students in each department

SELECT 
    department,
    COUNT(*) AS Number_of_Students
FROM Student
GROUP BY department;





-- SUM()
-- Adds numeric values



-- Calculate total credit hours of all courses

SELECT 
    SUM(credit_hours) AS Total_Credit_Hours
FROM Course;





-- AVG()
-- Calculates average value



-- Find average student age

SELECT 
    AVG(age) AS Average_Age
FROM Student;





-- MAX()
-- Finds the highest value



-- Find oldest student age

SELECT 
    MAX(age) AS Maximum_Age
FROM Student;




-- MIN()
-- Finds the lowest value



-- Find youngest student age

SELECT 
    MIN(age) AS Minimum_Age
FROM Student;





-- Using multiple aggregate functions together



SELECT
    COUNT(*) AS Total_Students,
    AVG(age) AS Average_Age,
    MAX(age) AS Oldest_Student,
    MIN(age) AS Youngest_Student
FROM Student;