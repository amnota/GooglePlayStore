SELECT 
    genres,
    ROUND(AVG(reviews), 0) AS avrage_review,
    content_rate
FROM 
    app
GROUP BY
    genres,
    content_rate
ORDER BY
    AVG(reviews) DESC
LIMIT 10;