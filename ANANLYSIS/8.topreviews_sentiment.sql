SELECT 
    DISTINCT(genres),
    ROUND(AVG(reviews) , 0) AS average_reviews,
    COUNT(CASE WHEN sentiment = 'Positive' THEN 1 END) AS positive,
    COUNT(CASE WHEN sentiment = 'Negative' THEN 1 END) AS negative,
    COUNT(CASE WHEN sentiment = 'Neutral' THEN 1 END) AS neutral
FROM 
    app JOIN reviews ON app.id = reviews.id
GROUP BY
    genres
ORDER BY
    average_reviews DESC
LIMIT 10