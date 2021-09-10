SELECT GR.Name as [Grade], count(distinct PO.AuthorId) AS [Number of Authors]
FROM Poem AS PO
JOIN Author AU
	ON AU.Id = PO.AuthorId
JOIN Grade GR
	ON GR.Id = AU.GradeId
GROUP BY GR.Name
ORDER BY GR.Name asc;
