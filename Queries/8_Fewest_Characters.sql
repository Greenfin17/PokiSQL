SELECT top(10) DATALENGTH(PO.TEXT) [Number of Characters], PO.TEXT, PO.Title, AU.Name AS [Author]
FROM Poem AS PO
JOIN Author AU
	ON AU.Id = PO.AuthorId
order by [Number of Characters];