SELECT 
    app_name,
    genres,
    rating,
    reviews
FROM 
    app
ORDER BY
    rating ASC,
    reviews ASC
LIMIT 10