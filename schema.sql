-- schema.sql
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 16),
    department VARCHAR(50)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    credits INT CHECK (credits > 0)
);

CREATE TABLE Enrollment (
    enroll_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    UNIQUE KEY uq_student_course (student_id, course_id)
);

CREATE TABLE Marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    enroll_id INT NOT NULL,
    marks INT CHECK (marks BETWEEN 0 AND 100),
    FOREIGN KEY (enroll_id) REFERENCES Enrollment(enroll_id)
);
