University Elective Course Management System Requirements
1. University Information

The system should store university information including:

University Name
Website
Address
Country
City
Established Year
Contact Information
2. School Management

The system should store school information including:

School ID
School Name
Dean Name
Contact Phone
University

Business Rules:

Each school belongs to exactly one university.
One university can have multiple schools.
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

Business Rules:

Each major belongs to exactly one department.
One department can offer multiple majors.
5. Person Information

The system should store shared person data including:

Full Name
Birth Date
Gender
Contact Information
Address

Business Rules:

Person acts as a shared entity for students and instructors.
6. Student Information

The system should store student information including:

Student ID
Person ID
Major ID

Business Rules:

Each student is linked to exactly one person record.
Each student belongs to exactly one major.
One major can have many students.
7. Instructor Information

The system should store instructor information including:

Instructor ID
Person ID

Business Rules:

Each instructor is linked to exactly one person record.
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
10. Section Management

The system should store course section information including:

Section ID
Section Name
Class Number
Class Location
Class Time
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
Grade
Status

Business Rules:

Students can enroll in multiple sections each semester.
Each section can have many students.
Enrollment resolves the many-to-many relationship between students and sections.
Grade may be NULL until assigned.

Constraint:

A student cannot enroll in multiple sections of the same course within the same semester.
