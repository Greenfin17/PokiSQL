SELECT top(10) AU.Id as [Author ID], AU.Name AS [Author], GR.Name AS [Grade], COUNT(PO.Title) AS [Number of Poems]
FROM Author as AU
JOIN Poem PO
	ON PO.AuthorId = AU.Id
JOIN Grade as GR
	ON GR.Id = AU.GradeId

GROUP BY AU.Id, AU.Name, GR.Name
ORDER BY [Number of Poems] desc;
