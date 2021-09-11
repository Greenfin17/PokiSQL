SELECT TOP(1) GE.Name AS [Gender], EM.Name [Emotion], COUNT(DISTINCT PE.PoemId) AS [Number of Poems]
FROM Emotion EM
JOIN PoemEmotion PE
	ON PE.EmotionId = EM.Id
JOIN POEM PO
	ON PO.Id = PE.PoemId
JOIN Author AU
	ON AU.Id = PO.AuthorId
JOIN Gender GE
	ON GE.Id = AU.GenderId
WHERE EM.Name = 'Fear'
GROUP BY GE.Name, EM.Name
ORDER BY [Number of Poems] ASC;


