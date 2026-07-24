
-- File: 09_Constraints.sql
-- Purpose: Understanding SQL Constraints




-- PRIMARY KEY
-- Uniquely identifies each record
-- Cannot contain NULL values



CREATE TABLE Student_Primary_Key(
    student_id INTEGER PRIMARY KEY,
    name TEXT
);


-- FOREIGN KEY
-- Creates relationship between tables



CREATE TABLE Department_FK(
    department_id INTEGER PRIMARY KEY,
    department_name TEXT
);


CREATE TABLE Student_FK(
    student_id INTEGER PRIMARY KEY,
    name TEXT,
    department_id INTEGER,

    FOREIGN KEY(department_id)
    REFERENCES Department_FK(department_id)
);


-- UNIQUE
-- Ensures all values are different



CREATE TABLE Employee(
    employee_id INTEGER PRIMARY KEY,
    email TEXT UNIQUE
);





-- NOT NULL
-- Value cannot be empty



CREATE TABLE Customer(
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL
);




-- CHECK
-- Limits values based on a condition



CREATE TABLE Product(
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    price INTEGER CHECK(price > 0)
);




-- DEFAULT
-- Assigns a default value automatically



CREATE TABLE Orders(
    order_id INTEGER PRIMARY KEY,
    status TEXT DEFAULT 'Pending'
);



-- Insert example using DEFAULT

INSERT INTO Orders(order_id)
VALUES (1);