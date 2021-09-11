SELECT COUNT(PO.Id) AS [Poems with no Emotion]
FROM Poem PO
WHERE PO.Id NOT IN
	( SELECT PE.Poemid 
		FROM PoemEmotion PE )


