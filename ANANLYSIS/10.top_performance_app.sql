SELECT 
    app_name,
    genres,
    rating,
    reviews
FROM 
    app
ORDER BY
    rating DESC,
    reviews DESC
LIMIT 10