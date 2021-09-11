SELECT TOP(10) Q1.AuthorId AS [Author ID],  Q1.Author, Q1.Grade, COUNT(Q1.Title) AS [Number of Poems]
FROM 
( SELECT AU.Name as [Author], PO.AuthorId, GR.Name AS [Grade], PO.Title
	FROM Author AU
	JOIN Poem PO
		ON AU.Id = PO.AuthorId
	JOIN Grade GR
		ON GR.Id = AU.GradeId
	) Q1
GROUP BY Q1.AuthorId, Q1.Author, Q1.Grade
ORDER BY [Number of Poems] DESC;

