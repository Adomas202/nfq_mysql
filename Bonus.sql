SELECT
	News.newId as newsId,
	News.text as newsText,
	News.date as newsDate,
	Comments.date as commentDate,
	Comments.text as commentText
	FROM News LEFT JOIN Comments ON News.newsId = Comments.newsId 
	WHERE Comments.commentId = (
		SELECT MAX(Comments.commentId) 
		FROM comments 
		WHERE Comments.newsId = News.newsId
		)
	GROUP BY newsText
	ORDER BY newsDate DESC limit 10;