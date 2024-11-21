WITH NullCounts AS (
    SELECT
        'id' AS column_name,
        COUNT(*) AS total_rows,
        COUNT(id) AS non_null_values,
        COUNT(*) - COUNT(id) AS null_values
    FROM Reviews
    UNION ALL
    SELECT
        'app_name' AS column_name,
        COUNT(*) AS total_rows,
        COUNT(app_name) AS non_null_values,
        COUNT(*) - COUNT(app_name) AS null_values
    FROM Reviews
    UNION ALL
    SELECT
        'sentiment',
        COUNT(*),
        COUNT(sentiment),
        COUNT(*) - COUNT(sentiment)
    FROM Reviews
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