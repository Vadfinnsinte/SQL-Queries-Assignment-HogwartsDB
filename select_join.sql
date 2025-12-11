
USE Hogwarts;
--Show everything--
GO

SELECT 
    s.Name AS StudentName,
    c.Name AS CourseName
FROM Student s
LEFT JOIN Enrollment e ON s.Id = e.StudentId
LEFT JOIN Course c ON e.CourseId = c.Id
ORDER BY s.Name, c.Name;

-- Shows all courses and the number of enrolled students --
SELECT 
    c.Name AS CourseName,
    COUNT(e.StudentId) AS StudentCount
FROM Course c
LEFT JOIN Enrollment e ON c.Id = e.CourseId
GROUP BY c.Name
ORDER BY StudentCount DESC;