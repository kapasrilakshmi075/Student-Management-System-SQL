---data queries---
---students in CSE---
SELECT * FROM students
WHERE department = 'CSE'
---students with marks above 70---
SELECT * FROM marks
WHERE marks > 70;
---students with Grade A---
SELECT * FROM marks
WHERE grade = 'A';
---updating student phone---
UPDATE students
SET phone = '9999999999'
WHERE student_id=1;
SELECT * FROM students;
---updating student mail---
UPDATE students
SET email ='newemail@example.com'
WHERE student_id=2;
SELECT * FROM students;
---updating student department---
UPDATE students
SET department = 'AI'
WHERE student_id=5;
SELECT * FROM students;
---Delete related enrollments---
DELETE FROM enrollments
WHERE student_id = 5;
---Delete related marks---
DELETE FROM marks
WHERE student_id = 5;
---Delete the student---
DELETE FROM students
WHERE student_id = 5;
---total Students---
SELECT COUNT(*) AS total_students
FROM students;
---Average Marks---
SELECT AVG(marks) AS average_marks
FROM marks;
---Highest Marks---
SELECT MAX(marks) AS highest_marks
FROM marks;
---Lowest Marks---
SELECT MIN(marks) AS lowest_marks
FROM marks;
---Students per Department---
SELECT department, COUNT(*)
FROM students
GROUP BY department;
---sorting names---
SELECT * FROM Students
ORDER BY name ASC;
---sorting marks---
SELECT * FROM Marks
ORDER BY marks DESC;
---sorting courses---
SELECT * FROM Courses
ORDER BY semester;
---students with courses---
SELECT s.name, c.course_name
FROM students s
JOIN enrollments e
ON s.student_id = e.student_id
JOIN courses c
ON e.course_id = c.course_id;
---students with marks---
SELECT s.name, m.marks, m.grade
FROM students s
JOIN marks m
ON s.student_id = m.student_id;
---faculty teaching courses---
SELECT f.faculty_name, c.course_name
FROM faculty f
JOIN enrollments e
ON f.faculty_id = e.faculty_id
JOIN courses c
ON e.course_id = c.course_id;
---group by---
SELECT department, COUNT(*)
FROM students
GROUP BY department;
---group by---
SELECT course_id, AVG(marks)
FROM marks
GROUP BY course_id;
---group by---
SELECT course_id, COUNT(*)
FROM enrollments
GROUP BY course_id;
---top 5 students---
SELECT s.name, m.marks
FROM students s
JOIN marks m
ON s.student_id = m.student_id
ORDER BY m.marks DESC
LIMIT 5;
---students above avg---
SELECT * FROM marks
WHERE marks > (SELECT AVG(marks)
FROM marks
);
---students enrolled in mul courses---
SELECT student_id, COUNT(course_id)
FROM Enrollments
GROUP BY student_id
HAVING COUNT(course_id) > 1;
