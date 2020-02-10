/* 
* SchoolTranscript_Data.sql
*Mohamed Duale
*/

USE SchoolTranscript
GO

INSERT INTO Students(GivenName, Surname, DateOfBirth) --- notice no Enrolled column
VALUES  ( 'Dan', 'Gilleland', '19720514 10:34:09 AM'),
		('Charles', 'Kuhn', '19900806 00:00:00 AM'),
		('Kayle', 'Scott', '19780506 00:00:00 AM'),
		('Regina', 'Payne', '19570406 00:00:00 AM'),
		('Esther', 'Herrera', '19970211 00:00:00 AM')

SELECT * FROM Students

INSERT  INTO Courses(Number, [Name], Credits, [Hours], Cost)
Values  ('DMIT-1508', 'Database Fundamentals', 3.0, 60, 750),
		('CPSC-1012', 'Programming Fundamentals', 3.0, 60, 750),
		('DMIT-1720', 'OOP Fundamentals', 3.0, 60, 750),
		('DMIT-2210', 'Agile Development', 3.0, 60, 750),
		('DMIT-1718', 'Software Testing', 3.0, 60, 750)

SELECT * FROM Courses

/*
-- The following should fail, because of a check constraint
INSERT INTO Students(GivenName, Surname, DateOfBirth) -- notice no Enrolled column
VALUES ('Dan', 'G', '197207514 10:34:09 PM')

SELECT ---- the data/columns to retrieve
FROM	---- the table to search
WHERE	----- filters to apply in the search
GROUP BY ---- re-organizing results into groups
HAVING	---- filter for grouping
ORDER BY ---- Sorting results

*/

SELECT	Number, [Name], Credits, [Hours]
FROM	Courses 
WHERE   [Name] LIKE '%Fundamentals%'

--Write a query to get the first/last names of all students
--whose last name starts with a "G"
SELECT	Surname
FROM	Students 
WHERE   [Surname] LIKE '%G%'

--Removing all the data from the Students table
DELETE FROM Students