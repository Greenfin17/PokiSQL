SELECT GR.Name as [Grade], count(PO.Id) AS [Number of Poems]
FROM Poem AS PO
JOIN Author AU
	ON AU.Id = PO.AuthorId
JOIN Grade GR
	ON GR.Id = AU.GradeId
WHERE GR.Name = '4th Grade'
GROUP BY GR.Name
