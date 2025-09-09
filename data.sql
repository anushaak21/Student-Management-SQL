-- data.sql
INSERT INTO Students (name, age, department) VALUES
('Raj Kumar', 20, 'CSE'),
('Anusha Kolli', 21, 'ECE'),
('Priya Sharma', 19, 'IT'),
('Arjun Rao', 22, 'EEE');

INSERT INTO Courses (course_name, credits) VALUES
('Database Systems', 4),
('Operating Systems', 3),
('Computer Networks', 3),
('Software Engineering', 2);

INSERT INTO Enrollment (student_id, course_id) VALUES
(1, 1), (1, 2),
(2, 1), (2, 3),
(3, 2), (3, 4),
(4, 1), (4, 2), (4, 3);

INSERT INTO Marks (enroll_id, marks) VALUES
(1, 85), (2, 78),
(3, 90), (4, 88),
(5, 70), (6, 95),
(7, 60), (8, 72), (9, 80);
