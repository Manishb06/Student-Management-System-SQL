-- ==========================================
-- Student Management System
-- Database Schema
-- ==========================================

DROP DATABASE IF EXISTS StudentManagementSystem;

CREATE DATABASE StudentManagementSystem;

USE StudentManagementSystem;

-- ==========================================
-- Students
-- ==========================================

CREATE TABLE Students
(
    student_id INT AUTO_INCREMENT PRIMARY KEY,

    first_name VARCHAR(50) NOT NULL,

    last_name VARCHAR(50) NOT NULL,

    gender ENUM('Male','Female','Other') NOT NULL,

    age INT NOT NULL CHECK(age>=16 AND age<=60),

    email VARCHAR(100) NOT NULL UNIQUE,

    phone VARCHAR(15) UNIQUE,

    department VARCHAR(50) NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ==========================================
-- Courses
-- ==========================================

CREATE TABLE Courses
(
    course_id INT AUTO_INCREMENT PRIMARY KEY,

    course_name VARCHAR(100) NOT NULL UNIQUE,

    credits INT NOT NULL CHECK(credits BETWEEN 1 AND 5)
);

-- ==========================================
-- Faculty
-- ==========================================

CREATE TABLE Faculty
(
    faculty_id INT AUTO_INCREMENT PRIMARY KEY,

    faculty_name VARCHAR(100) NOT NULL,

    department VARCHAR(50) NOT NULL
);

-- ==========================================
-- Enrollments
-- ==========================================

CREATE TABLE Enrollments
(
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,

    student_id INT NOT NULL,

    course_id INT NOT NULL,

    faculty_id INT NOT NULL,

    semester VARCHAR(20) NOT NULL,

    marks INT CHECK(marks BETWEEN 0 AND 100),

    FOREIGN KEY(student_id)
    REFERENCES Students(student_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

    FOREIGN KEY(course_id)
    REFERENCES Courses(course_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

    FOREIGN KEY(faculty_id)
    REFERENCES Faculty(faculty_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);