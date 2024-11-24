SELECT * FROM assignments
LIMIT 10; 
--the first 10 results are 
"1"	"COMP1151"	"Network Setup Assignment"	"Not Started"	"2024-09-15"
"2"	"COMP1151"	"Hardware Installation Project"	"In Progress"	"2024-10-01"
"3"	"COMP1236"	"Logic Gates Exercise"	"Completed"	"2024-09-10"
"4"	"COMP1236"	"Algorithm Design Task"	"In Progress"	"2024-10-05"
"5"	"COMP1234"	"HTML/CSS Basics"	"Not Started"	"2024-09-20"
"6"	"COMP1234"	"JavaScript Interactive Page"	"Not Started"	"2024-10-10"
"7"	"COMP1238"	"SQL Query Assignment"	"Completed"	"2024-09-18"
"8"	"COMP1238"	"Data Normalization Task"	"In Progress"	"2024-10-08"
"9"	"MATH1162"	"Calculus Problem Set"	"Completed"	"2024-09-12"
"10"	"MATH1162"	"Linear Algebra Quiz"	"Not Started"	"2024-10-15"
  
SELECT count(*) FROM courses;
--the number of courses are:
"35"

SELECT min(due_date) FROM assignments;
--the earliest assignment due date:
"2024-09-10"

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';
--all courses that the name starts with Intro...
"COMP1234"	"2024-3"	"Introduction To Web Development"	"Fri 11"	"Wed 15"	"Introduction to HTML, CSS, and JavaScript."
"COMP1238"	"2024-3"	"Introduction to Data Management"	"Tue 13"	"Thu 09"	"Basic concepts of data storage and retrieval."
"COMP1235"	"2025-1"	"Introduction To Full-Stack Development"	"Thu 10"	"Mon 15"	"Web development from front to back end."
"COMP3134"	"2027-1"	"Introduction to Cyber Security"	"Thu 13"	"Mon 11"	"Fundamentals of cyber security."

SELECT sqlite_version();
--the version of the SQL is
"3.46.1"

SELECT upper('ABCxyz');
--changes the lower cases to the upercases
"ABCXYZ"

SELECT length('abcde');
--the length of the abcde characters are
-- or determining how many characters are there in the ()
"5"

SELECT 7*5;
--making an math operation
"35"

SELECT concat('ABC', '-', 'xyz');
--putting strings, numbers and everything and making a sentence
"ABC-xyz"

SELECT date();
--the date that i did the assignment or simply the identidy of date of today
"2024-11-23"

SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;
--This extracts the year portion from the due_date column
"2024"	"1"	"COMP1151"	"Network Setup Assignment"	"Not Started"	"2024-09-15"
"2024"	"2"	"COMP1151"	"Hardware Installation Project"	"In Progress"	"2024-10-01"
"2024"	"3"	"COMP1236"	"Logic Gates Exercise"	"Completed"	"2024-09-10"
"2024"	"4"	"COMP1236"	"Algorithm Design Task"	"In Progress"	"2024-10-05"
"2024"	"5"	"COMP1234"	"HTML/CSS Basics"	"Not Started"	"2024-09-20"
"2024"	"6"	"COMP1234"	"JavaScript Interactive Page"	"Not Started"	"2024-10-10"
"2024"	"7"	"COMP1238"	"SQL Query Assignment"	"Completed"	"2024-09-18"
"2024"	"8"	"COMP1238"	"Data Normalization Task"	"In Progress"	"2024-10-08"
"2024"	"9"	"MATH1162"	"Calculus Problem Set"	"Completed"	"2024-09-12"
"2024"	"10"	"MATH1162"	"Linear Algebra Quiz"	"Not Started"	"2024-10-15"
"2024"	"11"	"COMM2000"	"Communication Skills Essay"	"In Progress"	"2024-09-25"
"2024"	"12"	"COMM2000"	"Presentation Project"	"Not Started"	"2024-10-20"
"2025"	"13"	"COMP1168"	"Database Design Project"	"Not Started"	"2025-02-10"
"2025"	"14"	"COMP1168"	"SQL Optimization Assignment"	"In Progress"	"2025-03-01"
"2025"	"15"	"COMP1202"	"Java OOP Basics"	"Completed"	"2025-02-05"
"2025"	"16"	"COMP1202"	"Inheritance and Polymorphism Task"	"Not Started"	"2025-03-15"
"2025"	"17"	"COMP1235"	"Frontend Development Exercise"	"Completed"	"2025-02-18"
"2025"	"18"	"COMP1235"	"Backend API Development"	"In Progress"	"2025-03-10"
"2025"	"19"	"COMP3044"	"Linux Command Line Basics"	"Not Started"	"2025-02-25"
"2025"	"20"	"COMP3044"	"Shell Scripting Project"	"Completed"	"2025-03-20"
"2025"	"21"	"GSSC1027"	"Budget Planning Assignment"	"In Progress"	"2025-02-22"
"2025"	"22"	"GSSC1027"	"Investment Strategies Essay"	"Not Started"	"2025-03-12"
"2025"	"23"	"MATH1172"	"Probability Problem Set"	"Completed"	"2025-02-15"
"2025"	"24"	"MATH1172"	"Complex Numbers Quiz"	"In Progress"	"2025-03-05"
"null"	"25"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"null"	"26"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
  
SELECT DISTINCT SUBSTRING(course_id, 1, 4) 
FROM courses;
-- Extracts the first 4 characters from the course_id column for each row in the courses table.
"COMM"
"COMP"
"GNED"
"GSSC"
"MATH"

SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;
--
"COMM"	"1"
"COMP"	"29"
"GNED"	"2"
"GSSC"	"1"
"MATH"	"2"

SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;
--Extracts the first 4 characters of the course_id column for each row and aliases this extracted substring as prefix.
"COMM"	"1"
"COMP"	"29"
"GNED"	"2"
"GSSC"	"1"
"MATH"	"2"

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;
--select all completeded assignments and order them by due date
"25"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"26"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"1"	"COMP1151"	"Network Setup Assignment"	"Not Started"	"2024-09-15"
"5"	"COMP1234"	"HTML/CSS Basics"	"Not Started"	"2024-09-20"
"11"	"COMM2000"	"Communication Skills Essay"	"In Progress"	"2024-09-25"
"2"	"COMP1151"	"Hardware Installation Project"	"In Progress"	"2024-10-01"
"4"	"COMP1236"	"Algorithm Design Task"	"In Progress"	"2024-10-05"
"8"	"COMP1238"	"Data Normalization Task"	"In Progress"	"2024-10-08"
"6"	"COMP1234"	"JavaScript Interactive Page"	"Not Started"	"2024-10-10"
"10"	"MATH1162"	"Linear Algebra Quiz"	"Not Started"	"2024-10-15"
"12"	"COMM2000"	"Presentation Project"	"Not Started"	"2024-10-20"
"13"	"COMP1168"	"Database Design Project"	"Not Started"	"2025-02-10"
"21"	"GSSC1027"	"Budget Planning Assignment"	"In Progress"	"2025-02-22"
"19"	"COMP3044"	"Linux Command Line Basics"	"Not Started"	"2025-02-25"
"14"	"COMP1168"	"SQL Optimization Assignment"	"In Progress"	"2025-03-01"
"24"	"MATH1172"	"Complex Numbers Quiz"	"In Progress"	"2025-03-05"
"18"	"COMP1235"	"Backend API Development"	"In Progress"	"2025-03-10"
"22"	"GSSC1027"	"Investment Strategies Essay"	"Not Started"	"2025-03-12"
"16"	"COMP1202"	"Inheritance and Polymorphism Task"	"Not Started"	"2025-03-15"

SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;
--
"COMM2000"	"Communication Skills Essay"	"In Progress"	"2024-09-25"
"COMM2000"	"Presentation Project"	"Not Started"	"2024-10-20"

SELECT CONCAT(course_name, ' - ', semester) AS course_info
FROM courses;
"IT Essentials - 2024-3"
"Fundamentals of Computing Logic - 2024-3"
"Introduction To Web Development - 2024-3"
"Introduction to Data Management - 2024-3"
"Mathematics for Computer Technology I - 2024-3"
"Communicating Across Contexts - 2024-3"
"Database Management - 2025-1"
"Object-Oriented Programming - 2025-1"
"Introduction To Full-Stack Development - 2025-1"
"Linux Essentials - 2025-1"
"Personal Finance - 2025-1"
"Mathematics for Computer Technology II - 2025-1"
"Advanced Web Programming - 2025-3"
"Application Development using Java - 2025-3"
"Software Quality Assurance - 2025-3"
"Web Application Development - 2025-3"
"System Analysis, Design And Testing - 2025-3"
"General Education Elective - 2025-3"
"Data Structures and Algorithms - 2026-1"
"Professional Workplace Competencies - 2026-1"
"Agile Software Development - 2026-1"
"Open Source Development - 2026-1"
"System Development Project - 2026-1"
"General Education Elective - 2026-1"
"Capstone Project I - 2026-3"
"Mobile Application Development I - 2026-3"
"Web Application Development Using Java - 2026-3"
"DevOps - 2026-3"
"Applied Data Science - 2026-3"
"Full Stack Development I - 2026-3"
"Capstone Project II - 2027-1"
"Introduction to Cyber Security - 2027-1"
"Mobile Application Development II - 2027-1"
"Applied Machine Learning - 2027-1"
"Full Stack Development II - 2027-1"

SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%';
"COMP1234"	"Introduction To Web Development"	"Fri 11"
"COMP1168"	"Database Management"	"Fri 10"
"GSSC1027"	"Personal Finance"	"Fri 09"
"COMP2136"	"Software Quality Assurance"	"Fri 12"
"COMP2154"	"System Development Project"	"Fri 14"
"COMP3095"	"Web Application Development Using Java"	"Fri 13"
"COMP3078"	"Capstone Project II"	"Fri 15"

SELECT course_id, title, due_date
FROM assignments
WHERE due_date > CURRENT_DATE;
"COMP1168"	"Database Design Project"	"2025-02-10"
"COMP1168"	"SQL Optimization Assignment"	"2025-03-01"
"COMP1202"	"Java OOP Basics"	"2025-02-05"
"COMP1202"	"Inheritance and Polymorphism Task"	"2025-03-15"
"COMP1235"	"Frontend Development Exercise"	"2025-02-18"
"COMP1235"	"Backend API Development"	"2025-03-10"
"COMP3044"	"Linux Command Line Basics"	"2025-02-25"
"COMP3044"	"Shell Scripting Project"	"2025-03-20"
"GSSC1027"	"Budget Planning Assignment"	"2025-02-22"
"GSSC1027"	"Investment Strategies Essay"	"2025-03-12"
"MATH1172"	"Probability Problem Set"	"2025-02-15"
"MATH1172"	"Complex Numbers Quiz"	"2025-03-05"

SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;
"Completed"	"7"
"In Progress"	"8"
"Not Started"	"11"

SELECT course_id, course_name, LENGTH(course_name) AS name_length
FROM courses
ORDER BY name_length DESC
LIMIT 1;
"COMP1235"	"Introduction To Full-Stack Development"	"38"

SELECT UPPER(course_name) AS course_name_upper
FROM courses;
"IT ESSENTIALS"
"FUNDAMENTALS OF COMPUTING LOGIC"
"INTRODUCTION TO WEB DEVELOPMENT"
"INTRODUCTION TO DATA MANAGEMENT"
"MATHEMATICS FOR COMPUTER TECHNOLOGY I"
"COMMUNICATING ACROSS CONTEXTS"
"DATABASE MANAGEMENT"
"OBJECT-ORIENTED PROGRAMMING"
"INTRODUCTION TO FULL-STACK DEVELOPMENT"
"LINUX ESSENTIALS"
"PERSONAL FINANCE"
"MATHEMATICS FOR COMPUTER TECHNOLOGY II"
"ADVANCED WEB PROGRAMMING"
"APPLICATION DEVELOPMENT USING JAVA"
"SOFTWARE QUALITY ASSURANCE"
"WEB APPLICATION DEVELOPMENT"
"SYSTEM ANALYSIS, DESIGN AND TESTING"
"GENERAL EDUCATION ELECTIVE"
"DATA STRUCTURES AND ALGORITHMS"
"PROFESSIONAL WORKPLACE COMPETENCIES"
"AGILE SOFTWARE DEVELOPMENT"
"OPEN SOURCE DEVELOPMENT"
"SYSTEM DEVELOPMENT PROJECT"
"GENERAL EDUCATION ELECTIVE"
"CAPSTONE PROJECT I"
"MOBILE APPLICATION DEVELOPMENT I"
"WEB APPLICATION DEVELOPMENT USING JAVA"
"DEVOPS"
"APPLIED DATA SCIENCE"
"FULL STACK DEVELOPMENT I"
"CAPSTONE PROJECT II"
"INTRODUCTION TO CYBER SECURITY"
"MOBILE APPLICATION DEVELOPMENT II"
"APPLIED MACHINE LEARNING"
"FULL STACK DEVELOPMENT II"

SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';
"Network Setup Assignment"
"Logic Gates Exercise"
"HTML/CSS Basics"
"SQL Query Assignment"
"Calculus Problem Set"
"Communication Skills Essay"

SELECT *
FROM assignments
WHERE due_date IS NULL;
"25"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"
"26"	"COMP1238"	"Assignment with no date"	"Not Started"	"null"

--optional task
--Total Assignments per Course:
SELECT c.course_id, COUNT(a.course_id) AS total_assignments
FROM courses c
LEFT JOIN assignments a ON c.course_id = a.course_id
GROUP BY c.course_id;
"COMM2000"	"2"
"COMP1151"	"2"
"COMP1168"	"2"
"COMP1202"	"2"
"COMP1230"	"0"
"COMP1234"	"2"
"COMP1235"	"2"
"COMP1236"	"2"
"COMP1238"	"4"
"COMP2080"	"0"
"COMP2130"	"0"
"COMP2136"	"0"
"COMP2139"	"0"
"COMP2147"	"0"
"COMP2148"	"0"
"COMP2151"	"0"
"COMP2152"	"0"
"COMP2154"	"0"
"COMP3044"	"2"
"COMP3059"	"0"
"COMP3074"	"0"
"COMP3078"	"0"
"COMP3095"	"0"
"COMP3097"	"0"
"COMP3104"	"0"
"COMP3122"	"0"
"COMP3123"	"0"
"COMP3132"	"0"
"COMP3133"	"0"
"COMP3134"	"0"
"GNED"	"0"
"GNED1"	"0"
"GSSC1027"	"2"
"MATH1162"	"2"
"MATH1172"	"2"
SELECT c.course_id, c.course_name
FROM courses c
LEFT JOIN assignments a ON c.course_id = a.course_id
WHERE a.course_id IS NULL;
"COMP1230"	"Advanced Web Programming"
"COMP2130"	"Application Development using Java"
"COMP2136"	"Software Quality Assurance"
"COMP2139"	"Web Application Development"
"COMP2147"	"System Analysis, Design And Testing"
"GNED"	"General Education Elective"
"COMP2080"	"Data Structures and Algorithms"
"COMP2148"	"Professional Workplace Competencies"
"COMP2151"	"Agile Software Development"
"COMP2152"	"Open Source Development"
"COMP2154"	"System Development Project"
"GNED1"	"General Education Elective"
"COMP3059"	"Capstone Project I"
"COMP3074"	"Mobile Application Development I"
"COMP3095"	"Web Application Development Using Java"
"COMP3104"	"DevOps"
"COMP3122"	"Applied Data Science"
"COMP3123"	"Full Stack Development I"
"COMP3078"	"Capstone Project II"
"COMP3134"	"Introduction to Cyber Security"
"COMP3097"	"Mobile Application Development II"
"COMP3132"	"Applied Machine Learning"
"COMP3133"	"Full Stack Development II"



