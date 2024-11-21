WITH DuplicateCheck AS (
    SELECT 
        COUNT(*) AS duplicate_count
    FROM 
        Reviews
    GROUP BY 
           id,
           app_name,
           sentiment 
    HAVING COUNT(*) > 1
)
SELECT 
    'id' AS column_name, 
    COUNT(*) AS total_rows, 
    SUM(CASE WHEN id IN (SELECT id FROM DuplicateCheck) THEN 1 ELSE 0 END) AS duplicate_values,
    COUNT(*) - SUM(CASE WHEN id IN (SELECT id FROM DuplicateCheck) THEN 1 ELSE 0 END) AS non_duplicate_values
FROM Reviews
UNION ALL
SELECT 
    'app_name' AS column_name, 
    COUNT(*) AS total_rows, 
    SUM(CASE WHEN app_name IN (SELECT app_name FROM DuplicateCheck) THEN 1 ELSE 0 END) AS duplicate_values,
    COUNT(*) - SUM(CASE WHEN app_name IN (SELECT app_name FROM DuplicateCheck) THEN 1 ELSE 0 END) AS non_duplicate_values
FROM Reviews
UNION ALL
SELECT 
    'sentiment' AS column_name, 
    COUNT(*) AS total_rows, 
    SUM(CASE WHEN sentiment IN (SELECT sentiment FROM DuplicateCheck) THEN 1 ELSE 0 END) AS duplicate_values,
    COUNT(*) - SUM(CASE WHEN sentiment IN (SELECT sentiment FROM DuplicateCheck) THEN 1 ELSE 0 END) AS non_duplicate_values
FROM Reviews
