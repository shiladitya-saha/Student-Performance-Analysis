CREATE DATABASE student_db;
USE student_db;
CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    department VARCHAR(10),
    math INT,
    science INT,
    programming INT,
    attendance INT
);
INSERT INTO students VALUES
(1,'Amit','CS',78,85,90,92),
(2,'Riya','CS',88,79,85,90),
(3,'Karan','IT',65,70,72,80),
(4,'Pooja','IT',92,91,95,96),
(5,'Rahul','CS',55,60,58,70);
SELECT * FROM students;
SELECT 
    name,
    (math + science + programming)/3 AS avg_marks
FROM students;
SELECT name,
       (math + science + programming)/3 AS avg_marks
FROM students
ORDER BY avg_marks DESC
LIMIT 1;
SELECT 
    department,
    AVG((math + science + programming)/3) AS dept_avg
FROM students
GROUP BY department;
SELECT *
FROM students
WHERE math < 60 OR science < 60 OR programming < 60;
SELECT AVG((math + science + programming)/3) AS class_avg
FROM students;