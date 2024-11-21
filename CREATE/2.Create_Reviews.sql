CREATE TABLE Reviews (id INTEGER PRIMARY KEY,
                      app_name VARCHAR(255),
                      sentiment VARCHAR(255)
                      );
COPY Reviews(id,app_name,sentiment)
FROM 'C:\Users\sarin\Desktop\AppDatabase\Reviews.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM reviews;
            


