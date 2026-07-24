

-- File: 08_Subqueries.sql
-- Purpose: Using nested queries



-- SIMPLE SUBQUERY
-- A query inside another query



-- Find students whose age is greater than average age


SELECT *
FROM Student
WHERE age > 
(
    SELECT AVG(age)
    FROM Student
);





-- SUBQUERY WITH IN OPERATOR


-- Find students who are enrolled in courses


SELECT *
FROM Student
WHERE student_id IN
(
    SELECT student_id
    FROM Enrollment
);





-- SUBQUERY WITH MAX()



-- Find the oldest student


SELECT *
FROM Student
WHERE age =
(
    SELECT MAX(age)
    FROM Student
);



-- SUBQUERY WITH EXISTS
-- Checks whether a record exists



-- Display students who have enrollments


SELECT *
FROM Student
WHERE EXISTS
(
    SELECT *
    FROM Enrollment
    WHERE Student.student_id = Enrollment.student_id
);



