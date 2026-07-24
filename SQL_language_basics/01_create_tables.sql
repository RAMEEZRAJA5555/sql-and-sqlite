


-- Create Student table

CREATE TABLE Student(
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    department TEXT
);


-- Create Department table

CREATE TABLE Department(
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);


-- Create Course table

CREATE TABLE Course(
    course_id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
    credit_hours INTEGER
);


-- Create Enrollment table
-- This table shows relationship between students and courses

CREATE TABLE Enrollment(
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,

    FOREIGN KEY(student_id) REFERENCES Student(student_id),
    FOREIGN KEY(course_id) REFERENCES Course(course_id)
);