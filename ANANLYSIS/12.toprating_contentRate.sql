SELECT 
    genres,
    ROUND(AVG(rating),2) AS average_rating,
    content_rate
FROM 
    app
GROUP BY
    genres,
    content_rate
ORDER BY
    AVG(rating) DESC
LIMIT 10;




