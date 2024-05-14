CREATE DATABASE SchoolManagementSystem;

USE SchoolManagementSystem;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    Title VARCHAR(50),
    Credits INT
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE OfficeAssignments (
    OfficeAssignmentID INT PRIMARY KEY,
    InstructorID INT,
    Location VARCHAR(50),
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);

CREATE TABLE Grades (
    GradeID INT PRIMARY KEY,
    EnrollmentID INT,
    GradeValue DECIMAL(3,2),
    FOREIGN KEY (EnrollmentID) REFERENCES Enrollments(EnrollmentID)
);

CREATE TABLE Attendances (
    AttendanceID INT PRIMARY KEY,
    EnrollmentID INT,
    AttendanceDate DATE,
    FOREIGN KEY (EnrollmentID) REFERENCES Enrollments(EnrollmentID)
);

CREATE TABLE Fees (
    FeeID INT PRIMARY KEY,
    StudentID INT,
    FeeAmount DECIMAL(10,2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
CREATE TABLE SecurityGuards(
SecurityGuardID INT PRIMARY KEY,
GuardName VARCHAR(50)
);
