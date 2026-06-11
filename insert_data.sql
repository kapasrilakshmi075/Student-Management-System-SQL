---inserting student data---
INSERT INTO students (name, gender, dob, department, phone, email) VALUES
('Aarav Kumar', 'Male', '2004-01-10', 'CSE', '9876543210', 'aarav@gmail.com'),
('Priya Sharma', 'Female', '2003-08-15', 'ECE', '9876543211', 'priya@gmail.com'),
('Rahul Reddy', 'Male', '2004-03-21', 'CSE', '9876543212', 'rahul@gmail.com'),
('Sneha Patel', 'Female', '2003-11-30', 'EEE', '9876543213', 'sneha@gmail.com'),
('Kiran Rao', 'Male', '2004-06-18', 'IT', '9876543214', 'kiran@gmail.com'),
('Anjali Verma', 'Female', '2004-02-14', 'CSE', '9876543215', 'anjali@gmail.com'),
('Rohit Singh', 'Male', '2003-09-12', 'ECE', '9876543216', 'rohit@gmail.com'),
('Pooja Nair', 'Female', '2004-04-05', 'IT', '9876543217', 'pooja@gmail.com'),
('Vikram Das', 'Male', '2003-12-20', 'EEE', '9876543218', 'vikram@gmail.com'),
('Divya Joshi', 'Female', '2004-05-25', 'CSE', '9876543219', 'divya@gmail.com'),
('Manoj Kumar', 'Male', '2003-07-11', 'MECH', '9876543220', 'manoj@gmail.com'),
('Keerthi Rani', 'Female', '2004-10-02', 'IT', '9876543221', 'keerthi@gmail.com'),
('Sandeep Rao', 'Male', '2004-01-28', 'ECE', '9876543222', 'sandeep@gmail.com'),
('Nisha Gupta', 'Female', '2003-06-17', 'CSE', '9876543223', 'nisha@gmail.com'),
('Harsha Vardhan', 'Male', '2004-08-08', 'EEE', '9876543224', 'harsha@gmail.com');
SELECT * FROM students;
---inserting courses data---
INSERT INTO courses (course_name, credits, semester) VALUES
('Database Management Systems', 4, 5),
('Operating Systems', 4, 5),
('Computer Networks', 3, 5),
('Python Programming', 3, 4),
('Machine Learning', 4, 6),
('Data Structures', 4, 3),
('Web Development', 3, 5),
('Artificial Intelligence', 4, 6);
SELECT * FROM courses;
---inserting faculty data---
INSERT INTO faculty (faculty_name, department, email) VALUES
('Dr. Anil Kumar', 'CSE', 'anil@college.edu'),
('Dr. Meena Rao', 'ECE', 'meena@college.edu'),
('Dr. Suresh Babu', 'IT', 'suresh@college.edu'),
('Dr. Kavitha Devi', 'EEE', 'kavitha@college.edu'),
('Dr. Rajesh Sharma', 'MECH', 'rajesh@college.edu');
SELECT * FROM faculty;
---Enrollments Table---
INSERT INTO enrollments (student_id, course_id, faculty_id, semester) VALUES
(1,1,1,5),
(2,2,2,5),
(3,3,1,5),
(4,4,4,4),
(5,5,3,6),
(6,6,1,3),
(7,7,2,5),
(8,8,3,6),
(9,1,4,5),
(10,2,1,5),
(11,3,5,5),
(12,4,3,4),
(13,5,2,6),
(14,6,1,3),
(15,7,4,5),
(1,8,1,6),
(2,3,2,5),
(3,5,1,6),
(4,7,4,5),
(5,2,3,5);
SELECT * FROM enrollments;
---Marks Table---
INSERT INTO marks (student_id, course_id, marks, grade) VALUES
(1,1,92,'A'),
(2,2,84,'B'),
(3,3,76,'C'),
(4,4,88,'B'),
(5,5,95,'A'),
(6,6,81,'B'),
(7,7,69,'C'),
(8,8,90,'A'),
(9,1,73,'C'),
(10,2,85,'B'),
(11,3,91,'A'),
(12,4,79,'C'),
(13,5,87,'B'),
(14,6,93,'A'),
(15,7,82,'B'),
(1,8,96,'A'),
(2,3,77,'C'),
(3,5,89,'B'),
(4,7,80,'B'),
(5,2,94,'A');
SELECT * FROM marks;
