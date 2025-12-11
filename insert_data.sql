USE Hogwarts;
GO


INSERT INTO Student (Id, Name) VALUES
(1, 'Harry Potter'),
(2, 'Hermione Granger'),
(3, 'Ron Weasley'),
(4, 'Draco Malfoy'),
(5, 'Luna Lovegood');
GO


INSERT INTO Course (Id, Name) VALUES
(1, 'Potions'),
(2, 'Defense Against the Dark Arts'),
(3, 'Herbology');
GO


INSERT INTO Enrollment (StudentId, CourseId) VALUES
-- Harry
(1, 1),
(1, 2),
-- Hermione
(2, 1),
(2, 2),
(2, 3),
-- Ron
(3, 1),
(3, 3),
-- Draco
(4, 2),
-- Luna
(5, 3);
