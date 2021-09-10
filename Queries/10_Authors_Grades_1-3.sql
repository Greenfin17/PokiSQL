SELECT COUNT(GR.Name) as [Authors in Grades 1-3] FROM
Author AU
JOIN Grade GR
	ON GR.Id = AU.GradeId
WHERE GR.Name = '1st Grade' 
	OR GR.Name = '2nd Grade'
	OR GR.Name = '3rd Grade'

		