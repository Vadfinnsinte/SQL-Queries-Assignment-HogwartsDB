USE Hogwarts

-- Remove Ron from Potions --
DELETE FROM Enrollment
WHERE StudentId = 3     
  AND CourseId = 1;