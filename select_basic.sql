
USE Hogwarts

GO
-- Shows students with names starting with H --
SELECT Id, Name
FROM Student
WHERE Name LIKE 'H%';

-- Shows classes in alfabetical order -- 
SELECT Id, Name
FROM Course
ORDER BY Name ASC;

-- Shows classes containing Dark --
SELECT Id, Name
FROM Course
WHERE Name LIKE '%Dark%'; 

-- Shows how many classes the students have --
SELECT 
    s.Name AS StudentName,
    (SELECT COUNT(*) 
     FROM Enrollment e 
     WHERE e.StudentId = s.Id) AS CourseCount
FROM Student s;

-- Show courses with 3 students --
SELECT 
    c.Name AS CourseName,
    (SELECT COUNT(*) 
     FROM Enrollment e 
     WHERE e.CourseId = c.Id) AS StudentCount
FROM Course c
WHERE (SELECT COUNT(*) 
       FROM Enrollment e 
       WHERE e.CourseId = c.Id) = 3;