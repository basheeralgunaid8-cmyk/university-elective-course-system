
CREATE DATABASE Universtiy; 
GO 
USE Universtiy;
GO
CREATE TABLE University
(
    UniversityID INT PRIMARY KEY NOT NULL,
    UniverstiyName NVARCHAR(100) NOT NULL,
    Website NVARCHAR(50) NOT NULL,
    Address NVARCHAR(100) NOT NULL,
    EstablishedYear INT NOT NULL
);


CREATE TABLE School 
(
SchoolID INT PRIMARY KEY NOT NULL,
SchoolName NVARCHAR(100) NOT NULL,
 UniversityID INT NOT NULL,
DeanPersonID INT NOT NULL
)



CREATE TABLE Department
(
    DepartmentID INT PRIMARY KEY NOT NULL,
    DepartmentName NVARCHAR(100) NOT NULL,
    SchoolID INT NOT NULL
);



CREATE TABLE Major
(
    MajorID INT PRIMARY KEY NOT NULL,
    MajorName NVARCHAR(50) NOT NULL,
    Duration INT NOT NULL,--semester=8
    DepartmentID INT NOT NULL
);

CREATE TABLE Person
(
 PersonID INT PRIMARY KEY NOT NULL,
 PersonName NVARCHAR(100) NOT NULL,
 Birthdate DATE NOT NULL,
 Gender NVARCHAR(20) NOT NULL 
)



CREATE TABLE  Instructor
(
 InstructorID INT PRIMARY KEY NOT NULL,
 Title NVARCHAR(200) NOT NULL,
 SchoolID INT NOT NULL,
 PersonID INT NOT NULL
)



CREATE TABLE Student 
(
StudentID INT PRIMARY KEY,
EnrollmentYear INT NOT NULL,
PersonID INT NOT NULL,
MajorID INT NOT NULL
)


CREATE TABLE  Course 
(
  CourseID INT PRIMARY KEY NOT NULL ,
  CourseName NVARCHAR(50) NOT NULL,
  CourseType NVARCHAR(50),
  Credits tinyint
)


CREATE TABLE  Section
(
  SectionID INT PRIMARY KEY NOT NULL,
  SectionName NVARCHAR(200) NOT NULL,
  ClassNo INT  NOT NULL,
  ClassLocation NVARCHAR(100),
  ClassTime TIME NOT NULL,
  EnrollmentCapacity INT  NOT NULL,
  CourseID INT NOT NULL,
 SemesterID INT NOT NULL,
 InstructorID INT NOT NULL
)


CREATE TABLE Semester 
(
  SemesterID INT PRIMARY KEY NOT NULL,
  SemesterName nvarchar(100) NOT NULL,
  StartDate DATE,
  EndDate DATE
)


CREATE TABLE Enrollment
(
  EnrollmentID INT PRIMARY KEY NOT NULL ,
  EnrollDate DATE,
  RegularGrade DECIMAL(5,2) ,
  FinalExamGrade DECIMAL(5,2),
  Status NVARCHAR(100),
  StudentID INT NOT NULL,
  SectionID INT NOT NULL
)


