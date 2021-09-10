SELECT AU.Name, AU.Id, GR.Name as [Grade]
FROM Author AU
JOIN Grade GR
	ON GR.Id = AU.GradeId
ORDER BY AU.Name