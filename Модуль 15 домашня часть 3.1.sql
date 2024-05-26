-- CREATE TABLE Curators (
--     Id SERIAL PRIMARY KEY,
--     Name VARCHAR(255) NOT NULL,
--     Surname VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE Faculties (
--     Id SERIAL PRIMARY KEY,
--     Financing DECIMAL(10, 2) NOT NULL CHECK (Financing >= 0) DEFAULT 0,
--     Name VARCHAR(100) NOT NULL UNIQUE
-- );

-- CREATE TABLE Groups (
--     Id SERIAL PRIMARY KEY,
--     Name VARCHAR(10) NOT NULL UNIQUE,
--     Year INT NOT NULL CHECK (Year BETWEEN 1 AND 5),
--     DepartmentId INT NOT NULL,
--     FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
-- );

-- CREATE TABLE GroupsCurators (
--     Id SERIAL PRIMARY KEY,
--     CuratorId INT NOT NULL,
--     GroupId INT NOT NULL,
--     FOREIGN KEY (CuratorId) REFERENCES Curators(Id),
--     FOREIGN KEY (GroupId) REFERENCES Groups(Id)
-- );

-- CREATE TABLE Subjects (
--     Id SERIAL PRIMARY KEY,
--     Name VARCHAR(100) NOT NULL UNIQUE
-- );

-- CREATE TABLE Teachers (
--     Id SERIAL PRIMARY KEY,
--     Name VARCHAR(255) NOT NULL,
--     Surname VARCHAR(255) NOT NULL,
--     Salary DECIMAL(10, 2) NOT NULL CHECK (Salary > 0)
--);
--ALTER TABLE Departments ADD COLUMN FacultyId INT NOT NULL;

-- ALTER TABLE Departments
-- ADD CONSTRAINT fk_faculty
-- FOREIGN KEY (FacultyId) REFERENCES Faculties(Id);


-- CREATE TABLE Lectures (
--     Id SERIAL PRIMARY KEY,
--     LectureRoom TEXT NOT NULL,
--     SubjectId INT NOT NULL,
--     TeacherId INT NOT NULL,
--     FOREIGN KEY (SubjectId) REFERENCES Subjects(Id),
--     FOREIGN KEY (TeacherId) REFERENCES Teachers(Id)
-- );


-- CREATE TABLE GroupsLectures (
--     Id SERIAL PRIMARY KEY,
--     GroupId INT NOT NULL,
--     LectureId INT NOT NULL,
--     FOREIGN KEY (GroupId) REFERENCES Groups(Id),
--     FOREIGN KEY (LectureId) REFERENCES Lectures(Id)
-- );

-- ALTER TABLE Subjects
-- ADD COLUMN DepartmentId INT NOT NULL;

