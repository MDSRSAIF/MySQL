create database scholarship_details;

use scholarship_details;

CREATE TABLE student (
STUDENT_ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
GPA FLOAT,
ENROLLMENT_DATE DATETIME,
MAJOR VARCHAR(100)
);


INSERT INTO student (STUDENT_ID, FIRST_NAME, LAST_NAME, GPA, ENROLLMENT_DATE, MAJOR)
VALUES
(201, 'Shivansh', 'Mahajan', 8.79, '2021-09-01 09:30', 'Computer Science'),
(202, 'Umesh', 'Sharma', 8.44, '2021-09-01 08:30', 'Mathematics'),
(203, 'Rakesh', 'Kumar', 5.6, '2021-09-01 10:00', 'Biology'),
(204, 'Radha', 'Sharma', 9.2, '2021-09-01 12:45', 'Chemistry'),
(205, 'Kush', 'Kumar', 7.85, '2021-09-01 08:30', 'Physics'),
(206, 'Prem', 'Chopra', 9.56, '2021-09-01 09:24', 'History'),
(207, 'Pankaj', 'Vats', 9.78, '2021-09-01 02:30', 'English'),
(208, 'Navleen', 'Kaur', 7, '2021-09-01 06:30', 'Mathematics');



CREATE TABLE program (
STUDENT_REF_ID INT PRIMARY KEY,
PROGRAM_NAME VARCHAR(100),
PROGRAM_START_DATE DATETIME,
FOREIGN KEY (STUDENT_REF_ID) REFERENCES student(STUDENT_ID)
);


INSERT INTO program (STUDENT_REF_ID, PROGRAM_NAME, PROGRAM_START_DATE)
VALUES
(201, 'Computer Science', '2021-09-01 00:00:00'),
(202, 'Mathematics', '2021-09-01 00:00:00'),
(208, 'Mathematics', '2021-09-01 00:00:00'),
(205, 'Physics', '2021-09-01 00:00:00'),
(204, 'Chemistry', '2021-09-01 00:00:00'),
(207, 'Psychology', '2021-09-01 00:00:00'),
(206, 'History', '2021-09-01 00:00:00'),
(203, 'Biology', '2021-09-01 00:00:00');




CREATE TABLE scholarship (
STUDENT_REF_ID INT PRIMARY KEY,
SCHOLARSHIP_AMOUNT DECIMAL(10, 2),
SCHOLARSHIP_DATE DATETIME,
FOREIGN KEY (STUDENT_REF_ID) REFERENCES student(STUDENT_ID)
);


INSERT INTO scholarship (STUDENT_REF_ID, SCHOLARSHIP_AMOUNT, SCHOLARSHIP_DATE)
VALUES
(201, 5000, '2021-10-15 00:00:00'),
(202, 4500, '2022-08-18 00:00:00'),
(203, 3000, '2022-01-25 00:00:00'),
(204, 4000, '2021-10-15 00:00:00');



select * from student;
select * from program;
select * from scholarship;

#question 3 ans:
SELECT SUBSTRING(FIRST_NAME, 1, 3) FROM Student;

#question 4 ans:
SELECT INSTR(LOWER(FIRST_NAME), 'a') FROM Student WHERE FIRST_NAME = 'Shivansh';

#question 5 ans:
SELECT DISTINCT MAJOR, LENGTH(MAJOR) FROM Student;

#question 6 ans:
SELECT REPLACE(FIRST_NAME, 'a', 'A') FROM Student;

#question 7 ans:
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS COMPLETE_NAME FROM Student;

#question 8 ans:
SELECT * FROM Student ORDER BY FIRST_NAME ASC, MAJOR DESC;

#question 9 ans:
SELECT * FROM Student WHERE FIRST_NAME IN ('Prem', 'Shivansh');

#question 10 ans:
SELECT * FROM Student WHERE FIRST_NAME NOT IN ('Prem', 'Shivansh');

#question 11 ans:
SELECT * FROM Student WHERE FIRST_NAME LIKE '%a';

#question 12 ans:
SELECT * FROM Student WHERE FIRST_NAME LIKE '____a';

#question 13 ans:
SELECT * FROM Student WHERE GPA BETWEEN 9.00 AND 9.99;

#question 14 ans:
SELECT Major, COUNT(*) AS TOTAL_COUNT FROM Student WHERE MAJOR = 'Computer Science';

#question 15 ans:
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME FROM Student WHERE GPA BETWEEN 8.5 AND 9.5;

#question 16 ans:
SELECT MAJOR, COUNT(MAJOR) FROM Student GROUP BY MAJOR ORDER BY COUNT(MAJOR) DESC;

#question 17 ans:
SELECT Student.FIRST_NAME, Student.LAST_NAME, Scholarship.SCHOLARSHIP_AMOUNT, Scholarship.SCHOLARSHIP_DATE
FROM Student
INNER JOIN Scholarship ON Student.STUDENT_ID = Scholarship.STUDENT_REF_ID;

#question 18 ans:
SELECT * FROM Student WHERE student_id % 2 != 0;

#question 19 ans:
SELECT * FROM Student WHERE student_id % 2 = 0;

 #question 20 ans:
SELECT Student.FIRST_NAME, Student.LAST_NAME, 
       Scholarship.SCHOLARSHIP_AMOUNT, 
       Scholarship.SCHOLARSHIP_DATE 
FROM Student 
LEFT JOIN Scholarship 
ON Student.STUDENT_ID = Scholarship.STUDENT_REF_ID;

#question 21 ans:
SELECT * FROM Student 
ORDER BY GPA DESC 
LIMIT 5;

#question 22 ans:
SELECT * FROM Student 
ORDER BY GPA DESC 
LIMIT 4, 1;

#question 23 ans:
SELECT * FROM Student s1 
WHERE 4 = (
    SELECT COUNT(DISTINCT s2.GPA) 
    FROM Student s2 
    WHERE s2.GPA >= s1.GPA
);

#question 24 ans:
SELECT s1.* 
FROM Student s1, Student s2 
WHERE s1.GPA = s2.GPA 
  AND s1.Student_id != s2.Student_id;

#question 25 ans:
SELECT MAX(GPA) 
FROM Student 
WHERE GPA NOT IN (
    SELECT MAX(GPA) FROM Student
);

#question 26 ans:
SELECT * FROM Student
UNION ALL
SELECT * FROM Student ORDER BY STUDENT_ID;

 #question 27 ans:
SELECT STUDENT_ID 
FROM Student 
WHERE STUDENT_ID NOT IN (
    SELECT STUDENT_REF_ID FROM Scholarship
);

#question 28 ans:
SELECT * FROM Student 
LIMIT (SELECT FLOOR(COUNT(*)/2) FROM Student);



#question 29 ans:
SELECT MAJOR, COUNT(MAJOR) AS MAJOR_COUNT 
FROM Student 
GROUP BY MAJOR 
HAVING COUNT(MAJOR) < 4;

#question 30 ans:
SELECT MAJOR, COUNT(MAJOR) AS ALL_MAJOR 
FROM Student 
GROUP BY MAJOR;

#question 31 ans:
SELECT * FROM Student 
WHERE STUDENT_ID = (SELECT MAX(STUDENT_ID) FROM Student);

#question 32 ans:
SELECT * FROM Student 
WHERE STUDENT_ID = (SELECT MIN(STUDENT_ID) FROM Student);

#question 33 ans:
SELECT * FROM
    (SELECT * FROM Student
    ORDER BY STUDENT_ID DESC
    LIMIT 5) AS subquery
ORDER BY STUDENT_ID;


 #question 34 ans:
SELECT DISTINCT GPA 
FROM Student S1 
WHERE 3 >= (SELECT COUNT(DISTINCT GPA) FROM Student S2 WHERE S1.GPA <= S2.GPA)
ORDER BY S1.GPA DESC;

 #question 35 ans:
SELECT DISTINCT GPA 
FROM Student S1 
WHERE 3 <= (SELECT COUNT(DISTINCT GPA) FROM Student S2 WHERE S1.GPA >= S2.GPA)
ORDER BY S1.GPA DESC;

#question 36 ans:
SELECT DISTINCT GPA 
FROM Student S1 
WHERE 3 >= (SELECT COUNT(DISTINCT GPA) FROM Student S2 WHERE S1.GPA <= S2.GPA)
ORDER BY S1.GPA DESC;

#question 37 ans:
SELECT MAJOR, MAX(GPA) AS MAXGPA 
FROM Student GROUP BY MAJOR;

#question 38 ans:
SELECT FIRST_NAME, LAST_NAME, GPA 
FROM Student WHERE GPA = (SELECT MAX(GPA) FROM Student);

#question 39 ans:
SELECT CURDATE();  #To get the current date
SELECT NOW();     -#To get the current date and time

#question 40 ans:
CREATE TABLE CloneTable AS SELECT * FROM Student;

#question 41 ans:
UPDATE Student SET GPA = 7.5 WHERE MAJOR = "Computer Science";




#question 42 ans:
SELECT MAJOR, AVG(GPA) AS AVERAGE_GPA 
FROM Student 
GROUP BY MAJOR;

#question 43 ans:
SELECT * FROM Student 
ORDER BY GPA DESC 
LIMIT 3;

#question 44 ans:
SELECT MAJOR, COUNT(STUDENT_ID) AS HIGH_GPA_COUNT 
FROM Student 
WHERE GPA > 7.5 
GROUP BY MAJOR;

#question 45 ans:
SELECT * FROM Student 
WHERE GPA = (SELECT GPA FROM Student WHERE STUDENT_ID = 20);
