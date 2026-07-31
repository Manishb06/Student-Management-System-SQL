USE StudentManagementSystem;

INSERT INTO Students(first_name,last_name,gender,age,email,phone,department)
VALUES
('Rahul','Sharma','Male',20,'rahul@gmail.com','9876543210','CSE'),
('Priya','Reddy','Female',21,'priya@gmail.com','9876543211','ECE'),
('Arjun','Kumar','Male',22,'arjun@gmail.com','9876543212','CSE'),
('Sneha','Patel','Female',20,'sneha@gmail.com','9876543213','IT'),
('Aman','Verma','Male',21,'aman@gmail.com','9876543214','EEE');

INSERT INTO Courses(course_name,credits)
VALUES
('Database Management Systems',4),
('Operating Systems',4),
('Computer Networks',3),
('Java Programming',4),
('Data Structures',4);

INSERT INTO Faculty(faculty_name,department)
VALUES
('Dr. Rao','CSE'),
('Dr. Mehta','ECE'),
('Dr. Singh','IT');

INSERT INTO Enrollments(student_id,course_id,faculty_id,semester,marks)
VALUES
(1,1,1,'Semester 4',89),
(2,2,2,'Semester 4',76),
(3,3,1,'Semester 4',92),
(4,4,3,'Semester 4',81),
(5,5,1,'Semester 4',68),
(1,5,1,'Semester 5',95);