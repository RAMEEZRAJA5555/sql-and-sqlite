


-- Insert data into Student table

INSERT INTO Student (student_id, name, age, department)
VALUES
(1, 'Ali', 20, 'Software Engineering'),
(2, 'Ahmed', 21, 'Computer Science'),
(3, 'Sara', 19, 'Information Technology'),
(4, 'Usman', 22, 'Software Engineering');



-- Insert data into Department table

INSERT INTO Department (department_id, department_name)
VALUES
(1, 'Software Engineering'),
(2, 'Computer Science'),
(3, 'Information Technology');



-- Insert data into Course table

INSERT INTO Course (course_id, course_name, credit_hours)
VALUES
(101, 'Database Systems', 3),
(102, 'Programming Fundamentals', 3),
(103, 'Data Structures', 4);



-- Insert data into Enrollment table

INSERT INTO Enrollment (enrollment_id, student_id, course_id)
VALUES
(1, 1, 101),
(2, 1, 103),
(3, 2, 102),
(4, 3, 101),
(5, 4, 103);