SELECT GR.Name as [Grade], count(PO.Title) AS [Number of Poems]
FROM Poem AS PO
JOIN Author AU
	ON AU.Id = PO.AuthorId
JOIN Grade GR
	ON GR.Id = AU.GradeId
GROUP BY GR.Name
