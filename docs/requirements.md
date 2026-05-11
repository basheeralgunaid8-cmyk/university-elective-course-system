University Elective Course Management System Requirements
1. University Information

The system should store university information including:

University ID
University Name
Website
Address
Established Year
Business Rules:
Each university must have a unique identifier.
One university can contain multiple schools.
2. School Management

The system should store school information including:

School ID
School Name
University ID
Dean Person ID
Business Rules:
Each school belongs to exactly one university.
One university can have multiple schools.
Each school may have one assigned dean.
A dean is represented through the Person entity.
3. Department Management

The system should store department information including:

Department ID
Department Name
School ID
Business Rules:
Each department belongs to exactly one school.
One school can contain multiple departments.
4. Major Management

The system should store major information including:

Major ID
Major Name
Duration
Department ID
Business Rules:
Each major belongs to exactly one department.
One department can offer multiple majors.
Duration represents the academic length of the major (e.g., semesters or years).
5. Person Information

The system should store shared person data including:

Person ID
Full Name
Birth Date
Gender
Business Rules:
Person acts as a shared entity for students and instructors.
A person record stores common personal information to avoid duplication.
6. Student Information

The system should store student information including:

Student ID
Person ID
Major ID
Enrollment Year
Business Rules:
Each student is linked to exactly one person record.
Each student belongs to exactly one major.
One major can have many students.
7. Instructor Information

The system should store instructor information including:

Instructor ID
Person ID
School ID
Title
Business Rules:
Each instructor is linked to exactly one person record.
Each instructor belongs to exactly one school.
One school can have multiple instructors.
One instructor may teach multiple course sections.
8. Course Management

The system should store course information including:

Course ID
Course Name
Course Type
Credits
Business Rules:
A course can be compulsory or elective.
One course can be offered multiple times in different semesters.
9. Semester Management

The system should store semester information including:

Semester ID
Semester Name
Start Date
End Date
Examples:
Fall 2025
Spring 2026
Summer 2026
Business Rules:
A semester contains multiple course sections.
10. Section Management

The system should store course section information including:

Section ID
Section Name
Class Number
Class Location
Class Time
Enrollment Capacity
Course ID
Semester ID
Instructor ID
Business Rules:
Each section belongs to exactly one course.
Each section belongs to exactly one semester.
Each section is taught by exactly one instructor.
One course can have multiple sections.
One semester can contain multiple sections.
One instructor can teach multiple sections.
11. Enrollment Management

The system should store student enrollment data including:

Enrollment ID
Student ID
Section ID
Enrollment Date
Regular Grade
Final Exam Grade
Status
Business Rules:
Students can enroll in multiple sections.
Each section can have multiple students.
Enrollment resolves the many-to-many relationship between students and sections.
Grades may be NULL until assigned.
Enrollment status can represent values such as Active, Dropped, Completed.
Constraints

The system must enforce:

Primary Key constraints for unique identification
Foreign Key constraints for referential integrity
NOT NULL constraints for required fields
Proper data types for all attributes
Relationship Constraints
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
Inheritance Constraints
Person → Student (One-to-One)
Person → Instructor (One-to-One)
System Purpose

The University Elective Course Management System is designed to manage academic structure, course offerings, instructor assignments, and student enrollment in an organized relational database environment.
