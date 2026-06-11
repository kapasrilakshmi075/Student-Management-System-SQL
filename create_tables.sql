---student table---
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    dob DATE,
    department VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(100)
);
SELECT * FROM students;
---courses table---
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT,
    semester INT
);

SELECT * FROM courses;
---Faculty Table---
CREATE TABLE faculty (
    faculty_id SERIAL PRIMARY KEY,
    faculty_name VARCHAR(100),
    department VARCHAR(50),
    email VARCHAR(100)
);
SELECT * FROM faculty;
---Enrollments Table---
CREATE TABLE enrollments (
  enrollment_id SERIAL PRIMARY KEY,
  student_id INT,
  course_id INT,
  faculty_id INT,
  semester INT,
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id),
  FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
);
SELECT * FROM enrollments;
---Marks Table---
CREATE TABLE marks(
    mark_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    grade CHAR(1),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
SELECT * FROM marks;
