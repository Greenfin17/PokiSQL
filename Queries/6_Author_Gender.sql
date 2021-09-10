SELECT AU.Name, AU.Id, GR.Name as [Grade], GE.Name as [Gender]
FROM Author AU
JOIN Grade GR
	ON GR.Id = AU.GradeId
JOIN Gender GE
	ON GE.Id = AU.GenderId
ORDER BY AU.Name