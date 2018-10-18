Bonus:

SELECT  News.newsId as newsId, News.date as newsDate, News.text as newsText, Comments.date as commentDate, Comments.text as commentText
FROM News 
    INNER JOIN Comments
        ON News.newsId = Comments.newsId
    INNER JOIN
    (
        SELECT newsId, MAX(date) maxDate
        FROM Comments
        GROUP BY newsId
    ) a ON Comments.newsId = a.newsId AND
            Comments.date = a.maxDate
ORDER BY News.date DESC
LIMIT 0, 10;