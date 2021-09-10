SELECT EM.Name AS [Emotion], COUNT(PO.Title) [Number of Poems]
FROM PoemEmotion PE
JOIN Emotion EM
	ON EM.Id = PE.EmotionId
JOIN Poem PO
	ON PO.Id = PE.PoemId
WHERE EM.Name = 'Sadness'
GROUP BY EM.Name;
