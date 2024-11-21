
WITH DuplicateCheck AS (
    SELECT 
        COUNT(*) AS duplicate_count
    FROM 
        App
    GROUP BY 
           id,
           app_name,
           category,
           rating,
           reviews,
           app_type,
           content_rate,
           genres
    HAVING COUNT(*) > 1
)
SELECT 
    'id' AS column_name, 
    COUNT(*) AS total_rows, 
    SUM(CASE WHEN id IN (SELECT id FROM DuplicateCheck) THEN 1 ELSE 0 END) AS duplicate_values,
    COUNT(*) - SUM(CASE WHEN id IN (SELECT id FROM DuplicateCheck) THEN 1 ELSE 0 END) AS non_duplicate_values
FROM App
UNION ALL
SELECT 
    'app_name' AS column_name, 
    COUNT(*) AS total_rows, 
    SUM(CASE WHEN app_name IN (SELECT app_name FROM DuplicateCheck) THEN 1 ELSE 0 END) AS duplicate_values,
    COUNT(*) - SUM(CASE WHEN app_name IN (SELECT app_name FROM DuplicateCheck) THEN 1 ELSE 0 END) AS non_duplicate_values
FROM App
UNION ALL
SELECT 
    'category' AS column_name, 
    COUNT(*) AS total_rows, 
    SUM(CASE WHEN category IN (SELECT category FROM DuplicateCheck) THEN 1 ELSE 0 END) AS duplicate_values,
    COUNT(*) - SUM(CASE WHEN category IN (SELECT category FROM DuplicateCheck) THEN 1 ELSE 0 END) AS non_duplicate_values
FROM App
UNION ALL
SELECT 
    'rating' AS column_name, 
    COUNT(*) AS total_rows, 
    SUM(CASE WHEN rating IN (SELECT rating FROM DuplicateCheck) THEN 1 ELSE 0 END) AS duplicate_values,
    COUNT(*) - SUM(CASE WHEN rating IN (SELECT rating FROM DuplicateCheck) THEN 1 ELSE 0 END) AS non_duplicate_values
FROM App
UNION ALL
SELECT 
    'reviews' AS column_name, 
    COUNT(*) AS total_rows, 
    SUM(CASE WHEN reviews IN (SELECT reviews FROM DuplicateCheck) THEN 1 ELSE 0 END) AS duplicate_values,
    COUNT(*) - SUM(CASE WHEN reviews IN (SELECT reviews FROM DuplicateCheck) THEN 1 ELSE 0 END) AS non_duplicate_values
FROM App
UNION ALL
SELECT 
    'app_type' AS column_name, 
    COUNT(*) AS total_rows, 
    SUM(CASE WHEN app_type IN (SELECT app_type FROM DuplicateCheck) THEN 1 ELSE 0 END) AS duplicate_values,
    COUNT(*) - SUM(CASE WHEN app_type IN (SELECT app_type FROM DuplicateCheck) THEN 1 ELSE 0 END) AS non_duplicate_values
FROM App
UNION ALL
SELECT 
    'content_rate' AS column_name, 
    COUNT(*) AS total_rows, 
    SUM(CASE WHEN content_rate IN (SELECT content_rate FROM DuplicateCheck) THEN 1 ELSE 0 END) AS duplicate_values,
    COUNT(*) - SUM(CASE WHEN content_rate IN (SELECT content_rate FROM DuplicateCheck) THEN 1 ELSE 0 END) AS non_duplicate_values
FROM App
UNION ALL
SELECT 
    'genres' AS column_name, 
    COUNT(*) AS total_rows, 
    SUM(CASE WHEN genres IN (SELECT genres FROM DuplicateCheck) THEN 1 ELSE 0 END) AS duplicate_values,
    COUNT(*) - SUM(CASE WHEN genres IN (SELECT genres FROM DuplicateCheck) THEN 1 ELSE 0 END) AS non_duplicate_values
FROM App

