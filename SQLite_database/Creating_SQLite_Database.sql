
-- Creating SQLite Database
-- File: Creating_SQLite_Database.sql
-- Purpose: Creating and managing SQLite database


-- Open or create a SQLite database

.open University.db



-- Create Student table

CREATE TABLE Student(
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    department TEXT
);



-- Create Course table

CREATE TABLE Course(
    course_id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
    credit_hours INTEGER
);



-- Create Enrollment table
-- Connecting students with courses

CREATE TABLE Enrollment(
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,

    FOREIGN KEY(student_id)
    REFERENCES Student(student_id),

    FOREIGN KEY(course_id)
    REFERENCES Course(course_id)
);



-- Insert sample data into Student table

INSERT INTO Student
VALUES
(1, 'Ali', 20, 'Software Engineering'),
(2, 'Ahmed', 21, 'Computer Science'),
(3, 'Sara', 19, 'Information Technology');



-- Insert sample data into Course table

INSERT INTO Course
VALUES
(101, 'Database Systems', 3),
(102, 'Programming Fundamentals', 3),
(103, 'Data Structures', 4);



-- Insert sample data into Enrollment table

INSERT INTO Enrollment
VALUES
(1, 1, 101),
(2, 1, 103),
(3, 2, 102);



-- Display all tables

.tables



-- Display table structure

.schema Student



-- View Student records

SELECT *
FROM Student;



-- View Course records

SELECT *
FROM Course;



-- View Enrollment records

SELECT *
FROM Enrollment;