SELECT GR.Name AS [Grade], COUNT(GR.Name) FROM
Author AU
JOIN Grade GR
	ON GR.Id = AU.GradeId
WHERE GR.Name = '3rd Grade'
GROUP BY GR.Name
		