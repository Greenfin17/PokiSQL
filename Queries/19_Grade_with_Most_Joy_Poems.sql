SELECT TOP(1) GR.Name AS [Grade], EM.Name [Emotion], COUNT(DISTINCT PE.PoemId) AS [Number of Poems]
FROM Emotion EM
JOIN PoemEmotion PE
	ON PE.EmotionId = EM.Id
JOIN POEM PO
	ON PO.Id = PE.PoemId
JOIN Author AU
	ON AU.Id = PO.AuthorId
JOIN Grade GR
	ON GR.Id = AU.GradeId
WHERE EM.Name = 'Joy'
GROUP BY GR.Name, EM.Name
ORDER BY [Number of Poems] DESC;


