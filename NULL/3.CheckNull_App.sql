WITH NullCounts AS (
    SELECT
        'id' AS column_name,
        COUNT(*) AS total_rows,
        COUNT(id) AS non_null_values,
        COUNT(*) - COUNT(id) AS null_values
    FROM App
    UNION ALL
    SELECT
        'app_name' AS column_name,
        COUNT(*) AS total_rows,
        COUNT(app_name) AS non_null_values,
        COUNT(*) - COUNT(app_name) AS null_values
    FROM App
    UNION ALL
    SELECT
        'category',
        COUNT(*),
        COUNT(category),
        COUNT(*) - COUNT(category)
    FROM App
    UNION ALL
    SELECT
        'rating',
        COUNT(*),
        COUNT(rating),
        COUNT(*) - COUNT(rating)
    FROM App
    UNION ALL
    SELECT
        'reviews',
        COUNT(*),
        COUNT(reviews),
        COUNT(*) - COUNT(reviews)
    FROM App
    UNION ALL
    SELECT
        'app_type',
        COUNT(*),
        COUNT(app_type),
        COUNT(*) - COUNT(app_type)
    FROM App
    UNION ALL
    SELECT
        'content_rate',
        COUNT(*),
        COUNT(content_rate),
        COUNT(*) - COUNT(content_rate)
    FROM App
    UNION ALL
     SELECT
        'genres',
        COUNT(*),
        COUNT(genres),
        COUNT(*) - COUNT(genres)
    FROM App
)

SELECT 
    column_name,
    total_rows,
    non_null_values,
    null_values
FROM 
    NullCounts
ORDER BY 
    column_name;

