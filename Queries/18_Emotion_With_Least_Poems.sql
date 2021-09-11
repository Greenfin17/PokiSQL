SELECT TOP(1) EM.Name AS [Emotion], COUNT(DISTINCT PE.PoemId) AS [Number of Poems]
FROM Emotion EM
JOIN PoemEmotion PE
	ON PE.EmotionId = EM.Id
GROUP BY EM.Name
ORDER BY [Emotion] ASC;

