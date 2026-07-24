
-- File: 05_Where_Order_Group.sql
-- Purpose: Filtering, Sorting and Grouping Data




-- WHERE CLAUSE
-- Used to filter records based on a condition



-- Display students whose age is greater than 20

SELECT *
FROM Student
WHERE age > 20;



-- Display students from Software Engineering department

SELECT *
FROM Student
WHERE department = 'Software Engineering';



-- Using AND operator

SELECT *
FROM Student
WHERE age > 20 
AND department = 'Software Engineering';



-- Using OR operator

SELECT *
FROM Student
WHERE department = 'Software Engineering'
OR department = 'Computer Science';



-- Using BETWEEN operator

SELECT *
FROM Student
WHERE age BETWEEN 19 AND 21;



-- Using LIKE operator

SELECT *
FROM Student
WHERE name LIKE 'A%';


-- ORDER BY
-- Used to sort records



-- Sort students by age in ascending order

SELECT *
FROM Student
ORDER BY age ASC;



-- Sort students by age in descending order

SELECT *
FROM Student
ORDER BY age DESC;




-- GROUP BY
-- Used to group rows with similar values



-- Count students in each department

SELECT 
    department,
    COUNT(*) AS Total_Students
FROM Student
GROUP BY department;





-- HAVING
-- Used to filter grouped data



-- Display departments having more than one student

SELECT 
    department,
    COUNT(*) AS Total_Students
FROM Student
GROUP BY department
HAVING COUNT(*) > 1;