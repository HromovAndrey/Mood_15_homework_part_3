--Виведіть усі можливі пари рядків викладачів і груп
--SELECT T.Name AS Teacher_Name, T.Surname AS Teacher_Surname, G.Name AS Group_Name
--FROM Teachers T, Groups G;

-- Виведіть назви факультетів, фонд фінансування кафедр яких перевищує фонд фінансування факультету
-- SELECT DISTINCT F.Name AS Faculty_Name
-- FROM Faculties F
-- JOIN Departments D ON F.Id = D.FacultyId
-- WHERE D.Financing > F.Financing;

-- --Виведіть прізвища кураторів груп і назви груп, які вони курирують
-- SELECT *
-- FROM Curators C
-- JOIN GroupsCurators GC ON C.Id = GC.CuratorId
-- JOIN Groups G ON GC.GroupId = G.Id;

--Виведіть імена та прізвища викладачів, які читають лекції у групі «P107»
-- SELECT T.Name AS Teacher_Name, T.Surname AS Teacher_Surname
-- FROM Teachers T
-- JOIN Lectures L ON T.Id = L.TeacherId
-- JOIN GroupsLectures GL ON L.Id = GL.LectureId
-- JOIN Groups G ON GL.GroupId = G.Id
-- WHERE G.Name = 'P107';

--Виведіть прізвища викладачів і назви факультетів, на яких вони читають лекції
-- SELECT DISTINCT T.Surname AS Teacher_Surname, F.Name AS Faculty_Name
-- FROM Teachers T
-- JOIN Lectures L ON T.Id = L.TeacherId
-- JOIN Subjects S ON L.SubjectId = S.Id
-- JOIN Departments D ON S.DepartmentId = D.Id
-- JOIN Faculties F ON D.FacultyId = F.Id;

--Виведіть назви кафедр і назви груп, які до них належать
-- SELECT *
-- FROM Departments D
-- JOIN Groups G ON D.Id = G.DepartmentId;
-- SELECT D.Name AS Department_Name, G.Name AS Group_Name
-- FROM Departments D
-- JOIN Groups G ON D.Id = G.DepartmentId;

--Виведіть назви предметів, які викладає викладач «Samantha Adams
-- SELECT DISTINCT S.Name AS Subject_Name
-- FROM Subjects S
-- JOIN Lectures L ON S.Id = L.SubjectId
-- JOIN Teachers T ON L.TeacherId = T.Id
-- WHERE T.Name = 'Samantha' AND T.Surname = 'Adams';

--Виведіть назви кафедр, на яких викладається дисципліна «Database Theory»
-- SELECT DISTINCT D.Name AS Department_Name
-- FROM Departments D
-- JOIN Subjects S ON D.Id = S.DepartmentId
-- WHERE S.Name = 'Database Theory';

--Виведіть назви груп, що належать до факультету «Computer Science»
-- SELECT G.Name AS Group_Name
-- FROM Groups G
-- JOIN Departments D ON G.DepartmentId = D.Id
-- JOIN Faculties F ON D.FacultyId = F.Id
-- WHERE F.Name = 'Computer Science';

-- Виведіть назви груп 5-го курсу, а також назви факультетів, до яких вони належать
-- SELECT G.Name AS Group_Name, F.Name AS Faculty_Name
-- FROM Groups G
-- JOIN Departments D ON G.DepartmentId = D.Id
-- JOIN Faculties F ON D.FacultyId = F.Id
-- WHERE G.Year = 5;

--Виведіть повні імена викладачів і лекції, які вони читають (назви предметів та груп). 
-- --Зробіть відбір по тим лекціям, які проходять в аудиторії «B103»
-- SELECT T.Name AS Teacher_Name, T.Surname AS Teacher_Surname, S.Name AS Subject_Name, G.Name AS Group_Name
-- FROM Teachers T
-- JOIN Lectures L ON T.Id = L.TeacherId
-- JOIN Subjects S ON L.SubjectId = S.Id
-- JOIN GroupsLectures GL ON L.Id = GL.LectureId
-- JOIN Groups G ON GL.GroupId = G.Id
-- WHERE L.LectureRoom = 'B103';




