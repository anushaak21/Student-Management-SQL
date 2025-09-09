-- queries.sql

-- 1. List all students with their enrolled courses
SELECT s.name, c.course_name
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- 2. Find average marks of each student
SELECT s.name, AVG(m.marks) AS average_marks
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Marks m ON e.enroll_id = m.enroll_id
GROUP BY s.name;

-- 3. Find top 3 students by average marks
SELECT s.name, AVG(m.marks) AS avg_marks
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Marks m ON e.enroll_id = m.enroll_id
GROUP BY s.name
ORDER BY avg_marks DESC
LIMIT 3;

-- 4. Find students who have not enrolled in any course
SELECT s.name
FROM Students s
LEFT JOIN Enrollment e ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

-- 5. Find highest scorer in each course
SELECT c.course_name, s.name, MAX(m.marks) AS highest_marks
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
JOIN Marks m ON e.enroll_id = m.enroll_id
GROUP BY c.course_name;
