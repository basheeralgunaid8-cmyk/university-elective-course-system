
-- ============================================
-- 3. FOREIGN KEYS (Relationships)
-- ============================================

-- University to School relationship (one-to-many)
-- One university can have many schools
ALTER TABLE School
ADD CONSTRAINT FK_School_University
FOREIGN KEY (UniversityID) REFERENCES University(UniversityID);


-- One person can be assigned as dean of one school
ALTER TABLE School
ADD CONSTRAINT FK_School_Person
FOREIGN KEY (DeanPersonID) REFERENCES Person(PersonID);

-- School to Department relationship (one-to-many)
-- One school can have many departments
ALTER TABLE Department
ADD CONSTRAINT FK_Department_School
FOREIGN KEY (SchoolID) REFERENCES School(SchoolID);

-- Department to Major relationship (one-to-many)
-- One department can have many majors
ALTER TABLE Major
ADD CONSTRAINT FK_Major_Department
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID);

-- Person to Student relationship (one-to-one inheritance)
-- One person record corresponds to one student
ALTER TABLE Student
ADD CONSTRAINT FK_Student_Person
FOREIGN KEY (PersonID) REFERENCES Person(PersonID);

-- Major to Student relationship (one-to-many)
-- One major can have many students
ALTER TABLE Student
ADD CONSTRAINT FK_Student_Major
FOREIGN KEY (MajorID) REFERENCES Major(MajorID);

-- Person to Instructor relationship (one-to-one inheritance)
-- One person record corresponds to one instructor
ALTER TABLE Instructor
ADD CONSTRAINT FK_Instructor_Person
FOREIGN KEY (PersonID) REFERENCES Person(PersonID);

-- School to Instructor relationship (one-to-many)
-- One school can have many instructors
ALTER TABLE Instructor
ADD CONSTRAINT FK_Instructor_School
FOREIGN KEY (SchoolID) REFERENCES School(SchoolID);

-- Course to Section relationship (one-to-many)
-- One course can have many sections
ALTER TABLE Section
ADD CONSTRAINT FK_Section_Course
FOREIGN KEY (CourseID) REFERENCES Course(CourseID);

-- Semester to Section relationship (one-to-many)
-- One semester can have many sections
ALTER TABLE Section
ADD CONSTRAINT FK_Section_Semester
FOREIGN KEY (SemesterID) REFERENCES Semester(SemesterID);

-- Instructor to Section relationship (one-to-many)
-- One instructor can teach many sections
ALTER TABLE Section
ADD CONSTRAINT FK_Section_Instructor
FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID);

-- Student to Enrollment relationship (one-to-many)
-- One student can have many enrollments
ALTER TABLE Enrollment
ADD CONSTRAINT FK_Enrollment_Student
FOREIGN KEY (StudentID) REFERENCES Student(StudentID);

-- Section to Enrollment relationship (one-to-many)
-- One section can have many enrollments
ALTER TABLE Enrollment
ADD CONSTRAINT FK_Enrollment_Section
FOREIGN KEY (SectionID) REFERENCES Section(SectionID);

