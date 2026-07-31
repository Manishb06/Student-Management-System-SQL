USE StudentManagementSystem;

DELIMITER $$

CREATE PROCEDURE GetTopStudents(IN min_marks INT)
BEGIN
    SELECT
        s.first_name,
        s.last_name,
        c.course_name,
        e.marks
    FROM Students s
    JOIN Enrollments e
        ON s.student_id=e.student_id
    JOIN Courses c
        ON e.course_id=c.course_id
    WHERE e.marks>=min_marks
    ORDER BY e.marks DESC;
END $$

DELIMITER ;

-- Example
CALL GetTopStudents(80);