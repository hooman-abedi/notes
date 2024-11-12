SELECT * FROM courses;

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Use this query as a reference for the next step
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;


SELECT title, due_date 
FROM assignments 
WHERE course_id = 'COMP1234';
-- result
"HTML/CSS Basics"	"2024-09-20"
"JavaScript Interactive Page"	"2024-10-10"
 
SELECT MIN(due_date) AS earliest_due_date 
FROM assignments;
-- result
"2024-09-10"

SELECT title, course_id 
FROM assignments 
WHERE due_date = '2024-10-08';
-- result
"Data Normalization Task"	"COMP1238"

SELECT title, due_date 
FROM assignments 
WHERE due_date LIKE '2024-10%';
-- result
"Hardware Installation Project"	"2024-10-01"
"Algorithm Design Task"	"2024-10-05"
"JavaScript Interactive Page"	"2024-10-10"
"Data Normalization Task"	"2024-10-08"
"Linear Algebra Quiz"	"2024-10-15"
"Presentation Project"	"2024-10-20"

SELECT MAX(due_date) AS most_recent_completed 
FROM assignments 
WHERE status = 'Completed';
-- result
"2025-03-20"

SELECT COUNT(*) AS not_started_count 
FROM assignments 
WHERE status = 'Not Started';
-- result
"9"

SELECT course_id, course_name 
FROM courses 
WHERE lab_time LIKE 'Tue%';
-- result
"COMP1238"	"Introduction to Data Management"
"COMM2000"	"Communicating Across Contexts"
"COMP3044"	"Linux Essentials"
"COMP2139"	"Web Application Development"
"COMP2148"	"Professional Workplace Competencies"
"COMP3059"	"Capstone Project I"
"COMP3123"	"Full Stack Development I"
"COMP3133"	"Full Stack Development II"

SELECT courses.course_id, courses.course_name, assignments.title, assignments.due_date 
FROM courses 
JOIN assignments ON courses.course_id = assignments.course_id;
-- result
"COMP1151"	"IT Essentials"	"Network Setup Assignment"	"2024-09-15"
"COMP1151"	"IT Essentials"	"Hardware Installation Project"	"2024-10-01"
"COMP1236"	"Fundamentals of Computing Logic"	"Logic Gates Exercise"	"2024-09-10"
"COMP1236"	"Fundamentals of Computing Logic"	"Algorithm Design Task"	"2024-10-05"
"COMP1234"	"Introduction To Web Development"	"HTML/CSS Basics"	"2024-09-20"
"COMP1234"	"Introduction To Web Development"	"JavaScript Interactive Page"	"2024-10-10"
"COMP1238"	"Introduction to Data Management"	"SQL Query Assignment"	"2024-09-18"
"COMP1238"	"Introduction to Data Management"	"Data Normalization Task"	"2024-10-08"
"MATH1162"	"Mathematics for Computer Technology I"	"Calculus Problem Set"	"2024-09-12"
"MATH1162"	"Mathematics for Computer Technology I"	"Linear Algebra Quiz"	"2024-10-15"
"COMM2000"	"Communicating Across Contexts"	"Communication Skills Essay"	"2024-09-25"
"COMM2000"	"Communicating Across Contexts"	"Presentation Project"	"2024-10-20"
"COMP1168"	"Database Management"	"Database Design Project"	"2025-02-10"
"COMP1168"	"Database Management"	"SQL Optimization Assignment"	"2025-03-01"
"COMP1202"	"Object-Oriented Programming"	"Java OOP Basics"	"2025-02-05"
"COMP1202"	"Object-Oriented Programming"	"Inheritance and Polymorphism Task"	"2025-03-15"
"COMP1235"	"Introduction To Full-Stack Development"	"Frontend Development Exercise"	"2025-02-18"
"COMP1235"	"Introduction To Full-Stack Development"	"Backend API Development"	"2025-03-10"
"COMP3044"	"Linux Essentials"	"Linux Command Line Basics"	"2025-02-25"
"COMP3044"	"Linux Essentials"	"Shell Scripting Project"	"2025-03-20"
"GSSC1027"	"Personal Finance"	"Budget Planning Assignment"	"2025-02-22"
"GSSC1027"	"Personal Finance"	"Investment Strategies Essay"	"2025-03-12"
"MATH1172"	"Mathematics for Computer Technology II"	"Probability Problem Set"	"2025-02-15"
"MATH1172"	"Mathematics for Computer Technology II"	"Complex Numbers Quiz"	"2025-03-05"









