SELECT 
    DISTINCT(genres),
    ROUND(AVG(rating) , 2) AS average_rating,
    COUNT(id) AS total_app
FROM 
    app
GROUP BY
    DISTINCT(genres)
ORDER BY
    average_rating DESC
LIMIT 10;