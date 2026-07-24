


-- UPDATE
-- Used to modify existing records


-- Update student's age

UPDATE Student
SET age = 23
WHERE student_id = 2;



-- Update student's department

UPDATE Student
SET department = 'Computer Engineering'
WHERE student_id = 4;




-- DELETE
-- Used to remove records from a table


-- Delete student record

DELETE FROM Student
WHERE student_id = 3;



-- Delete course record

DELETE FROM Course
WHERE course_id = 102;