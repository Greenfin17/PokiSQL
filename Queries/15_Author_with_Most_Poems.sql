SELECT TOP(10) AU.Id AS [Author ID], AU.Name AS [Author], GR.Name AS [Grade], COUNT(PO.Title) AS [Number of Poems]
FROM Author AS AU
JOIN Poem PO
	ON PO.AuthorId = AU.Id
JOIN Grade AS GR
	ON GR.Id = AU.GradeId
GROUP BY AU.Id, AU.Name, GR.Name
ORDER BY [Number of Poems] DESC;
