CREATE TABLE App(id INTEGER PRIMARY KEY,
                app_name VARCHAR(255) ,
                category VARCHAR(255),
                rating DECIMAL(10, 2),
                reviews INTEGER,
                app_type VARCHAR(255),
                content_rate VARCHAR(255),
                genres VARCHAR(255)
                );
COPY App(id,app_name,category,rating,reviews,app_type,content_rate,genres)
FROM 'C:\Users\sarin\Desktop\AppDatabase\App.csv'
DELIMITER ','
CSV HEADER;


SELECT * FROM App;