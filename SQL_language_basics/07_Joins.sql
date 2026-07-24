

-- File: 07_Joins.sql
-- Purpose: Combining data from multiple tables




-- INNER JOIN
-- Returns only matching records from both tables



-- Display students with their enrolled courses

SELECT
    Student.name,
    Course.course_name
FROM Student
INNER JOIN Enrollment
ON Student.student_id = Enrollment.student_id
INNER JOIN Course
ON Enrollment.course_id = Course.course_id;




-- LEFT JOIN
-- Returns all records from left table
-- and matching records from right table



-- Display all students even if they have no course

SELECT
    Student.name,
    Course.course_name
FROM Student
LEFT JOIN Enrollment
ON Student.student_id = Enrollment.student_id
LEFT JOIN Course
ON Enrollment.course_id = Course.course_id;



-- RIGHT JOIN CONCEPT
-- SQLite does not support RIGHT JOIN directly
-- It can be achieved by reversing LEFT JOIN


-- Normal RIGHT JOIN idea:

-- SELECT *
-- FROM Course
-- RIGHT JOIN Enrollment
-- ON Course.course_id = Enrollment.course_id;


-- Equivalent in SQLite using LEFT JOIN:

SELECT
    Course.course_name,
    Enrollment.student_id
FROM Enrollment
LEFT JOIN Course
ON Enrollment.course_id = Course.course_id;