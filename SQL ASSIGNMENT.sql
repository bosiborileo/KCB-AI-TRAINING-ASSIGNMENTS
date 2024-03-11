-- 1.1 Create a database named edu_institute 
CREATE DATABASE edu_institute;

-- 1.2 Within edu_institute, create a table named students
USE edu_institute;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender CHAR(1),
    enrollment_date DATE,
    program VARCHAR(50)
);
 
-- 2.1 Inserting records into the students table
INSERT INTO students (student_id, name, age, gender, enrollment_date, program) 
VALUES 
    (1, 'John Doe', 25, 'M', '2023-09-15', 'Computer Science'),
    (2, 'Jane Smith', 22, 'F', '2023-08-20', 'Data Science'),
    (3, 'Alice Johnson', 23, 'F', '2023-07-10', 'Mathematics'),
    (4, 'Bob Brown', 24, 'M', '2023-10-05', 'Engineering'),
    (5, 'Emma White', 21, 'F', '2023-11-02', 'Physics');
    
-- 3.1 Query to select all columns for all students in the "Data Science" program
SELECT *
FROM students
WHERE program = 'Data Science';

-- 3.2 Query to find the total number of students and display it as Total Students
SELECT COUNT(*) AS Total_Students
FROM students;

-- 4.1 Using CURRENT_DATE() function to display the current date in a column named Today's Date
SELECT CURRENT_DATE() AS "Today's Date";

-- 4.2 Query to select student names and their enrolment dates, displaying the name column in uppercase
SELECT UPPER(name) AS "Name", enrollment_date
FROM students;

-- 5.1 Query to count the number of students in each program and display the results in descending order of count
SELECT program, COUNT(*) AS "Number of Students"
FROM students
GROUP BY program
ORDER BY COUNT(*) DESC;

-- 5.2 Query to find the youngest student's name and age
SELECT name, age
FROM students
ORDER BY age ASC
LIMIT 1;


