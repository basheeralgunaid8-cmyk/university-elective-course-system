University Elective Management System
Project Overview

The University Elective Management System is a relational database project designed to manage university academic data, including universities, schools, departments, majors, students, instructors, courses, sections, semesters, and enrollments.

This database system helps organize academic information and maintain relationships between different entities using primary keys and foreign keys.

Objectives

This project aims to:

Design a normalized relational database for a university environment
Implement entity relationships using SQL Server
Apply database constraints such as:
Primary Key (PK)
Foreign Key (FK)
NOT NULL
Data type validation
Manage student enrollment in course sections
Track instructor assignments
Organize academic hierarchy from university to majors
Database Entities

The project includes the following tables:

Core Academic Structure
University – stores university information
School – stores schools within a university
Department – stores departments within schools
Major – stores academic majors
People Management
Person – stores shared personal information
Student – stores student-specific data
Instructor – stores instructor-specific data
Course Management
Course – stores course information
Section – stores course sections
Semester – stores semester details
Enrollment Management
Enrollment – stores student enrollment records and grades
Entity Relationships

The database includes these relationships:

University → School (One-to-Many)
School → Department (One-to-Many)
Department → Major (One-to-Many)
Major → Student (One-to-Many)
School → Instructor (One-to-Many)
Course → Section (One-to-Many)
Semester → Section (One-to-Many)
Instructor → Section (One-to-Many)
Student → Enrollment (One-to-Many)
Section → Enrollment (One-to-Many)

Inheritance relationships:

Person → Student (One-to-One)
Person → Instructor (One-to-One)
Person → School Dean (Reference relationship)
Technologies Used
SQL Server
T-SQL
dbdiagram.io (for ERD design)
Features
University hierarchy management
Student and instructor data management
Course and semester organization
Section scheduling
Student enrollment tracking
Grade recording
Relationship enforcement through foreign keys
Database Design Concepts Used

This project demonstrates:

Relational database modeling,
Entity Relationship Diagram (ERD),
Normalization principles,
Referential integrity,
Constraint management,
Schema design

This system can be used to:

Register students in academic majors,
Assign instructors to sections,
Track course offerings by semester,
Record student grades,
Manage university academic structur

Author:
Basheer Mohammed 


Future Improvements

Possible enhancements:

Add classroom table,
Add prerequisite course relationships,
Add attendance tracking,
Add authentication for system users,
Add stored procedures and views,
Add triggers for automated validation,
