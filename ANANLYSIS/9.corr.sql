WITH ReviewRatings AS (
    SELECT 
        app_name, 
        rating, 
        reviews
    FROM 
        app
    WHERE 
        rating IS NOT NULL AND reviews IS NOT NULL
)
SELECT 
    ROUND(CAST(CORR(rating, reviews) AS NUMERIC), 4) AS correlation_coefficient
FROM 
    ReviewRatings;