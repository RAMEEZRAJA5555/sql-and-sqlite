
-- SQLite Commands
-- File: SQLite_Commands.sql
-- Purpose: Common SQLite command line commands



-- Open an existing database or create a new database

.open Student.db



-- Display currently connected database

.database



-- Show all tables in the database

.tables



-- Display the structure of a table

.schema Student



-- Enable column headings in query output

.headers on



-- Display data in table format

.mode column



-- Show all records from a table

SELECT *
FROM Student;



-- Show SQLite version

SELECT sqlite_version();



-- Clear the screen in SQLite terminal

.clear



-- Import data from a CSV file into a table

-- Example:
-- .import students.csv Student



-- Export query output to a file

-- Example:
-- .output students.txt
-- SELECT * FROM Student;
-- .output stdout



-- Display all available SQLite commands

.help



-- Exit SQLite command line

.quit