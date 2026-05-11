
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
)

CREATE TABLE School 
(
SchoolID INT PRIMARY KEY NOT NULL,
SchoolName NVARCHAR(100) NOT NULL
)



CREATE TABLE Department
(
DepartmentID INT PRIMARY KEY NOT NULL,
DepartmentName NVARCHAR(100) NOT NULL
)



CREATE TABLE Major
(
MajorID  INT PRIMARY KEY NOT NULL,
MajorName NVARCHAR(50) NOT NULL,
Duration INT NOT NULL-- I choose int type because it is a time to use datetime type 

)



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
 Title NVARCHAR(200) NOT NULL
)



CREATE TABLE Student 
(
StudentID INT PRIMARY KEY,
EnrollmentYear INT NOT NULL
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
  ClassTime DATETIME NOT NULL,
  EnrollmentCapacity INT  NOT NULL
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
  Status NVARCHAR(100)
)


