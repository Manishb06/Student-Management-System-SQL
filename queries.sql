USE StudentManagementSystem;

-- Display all students
SELECT * FROM Students;

-- Display all courses
SELECT * FROM Courses;

-- Display all faculty
SELECT * FROM Faculty;

-- Display all enrollments
SELECT * FROM Enrollments;

-- Students scoring above 80
SELECT
    s.first_name,
    s.last_name,
    c.course_name,
    e.marks
FROM Students s
JOIN Enrollments e
ON s.student_id=e.student_id
JOIN Courses c
ON c.course_id=e.course_id
WHERE e.marks>80;

-- Student Report
SELECT
    s.first_name,
    s.last_name,
    c.course_name,
    f.faculty_name,
    e.semester,
    e.marks
FROM Students s
INNER JOIN Enrollments e
ON s.student_id=e.student_id
INNER JOIN Courses c
ON e.course_id=c.course_id
INNER JOIN Faculty f
ON e.faculty_id=f.faculty_id;

-- Average marks per course
SELECT
    c.course_name,
    AVG(e.marks) AS AverageMarks
FROM Courses c
JOIN Enrollments e
ON c.course_id=e.course_id
GROUP BY c.course_name;

-- Courses with average marks above 80
SELECT
    c.course_name,
    AVG(e.marks) AS AverageMarks
FROM Courses c
JOIN Enrollments e
ON c.course_id=e.course_id
GROUP BY c.course_name
HAVING AVG(e.marks)>80;

-- Highest Marks
SELECT MAX(marks) AS HighestMarks
FROM Enrollments;

-- Count students department wise
SELECT
department,
COUNT(*) AS TotalStudents
FROM Students
GROUP BY department;

-- Students by age
SELECT *
FROM Students
ORDER BY age DESC;

-- Students in CSE Department
SELECT *
FROM Students
WHERE department = 'CSE';

-- Students older than 20
SELECT first_name,last_name,age
FROM Students
WHERE age > 20;

-- Students with marks between 80 and 90
SELECT
    s.first_name,
    c.course_name,
    e.marks
FROM Students s
JOIN Enrollments e
ON s.student_id=e.student_id
JOIN Courses c
ON e.course_id=c.course_id
WHERE e.marks BETWEEN 80 AND 90;

-- Total number of courses
SELECT COUNT(*) AS TotalCourses
FROM Courses;

-- Total faculty members
SELECT COUNT(*) AS TotalFaculty
FROM Faculty;

-- Student with highest marks
SELECT
    s.first_name,
    s.last_name,
    e.marks
FROM Students s
JOIN Enrollments e
ON s.student_id=e.student_id
ORDER BY e.marks DESC
LIMIT 1;

-- Student with lowest marks
SELECT
    s.first_name,
    s.last_name,
    e.marks
FROM Students s
JOIN Enrollments e
ON s.student_id=e.student_id
ORDER BY e.marks ASC
LIMIT 1;

-- Average marks of every student
SELECT
    s.first_name,
    s.last_name,
    AVG(e.marks) AS AverageMarks
FROM Students s
JOIN Enrollments e
ON s.student_id=e.student_id
GROUP BY s.student_id;

-- Courses having more than one student
SELECT
    c.course_name,
    COUNT(e.student_id) AS TotalStudents
FROM Courses c
JOIN Enrollments e
ON c.course_id=e.course_id
GROUP BY c.course_name
HAVING COUNT(e.student_id) > 1;

-- Search student by name
SELECT *
FROM Students
WHERE first_name LIKE 'R%';

-- Students without enrollments
SELECT
    s.student_id,
    s.first_name,
    s.last_name
FROM Students s
LEFT JOIN Enrollments e
ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

-- Highest marks in each course
SELECT
    c.course_name,
    MAX(e.marks) AS HighestMarks
FROM Courses c
JOIN Enrollments e
ON c.course_id = e.course_id
GROUP BY c.course_name;