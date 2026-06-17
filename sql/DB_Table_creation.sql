CREATE DATABASE rfm_project;

\c rfm_project

SELECT current_database();

CREATE TABLE online_retail (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INTEGER,
    InvoiceDate TIMESTAMP,
    UnitPrice NUMERIC(10,2),
    CustomerID VARCHAR(20),
    Country VARCHAR(100)
);

\d online_retail

\copy online_retail
FROM 'C:/Users/P Surakshith/Downloads/Online Retail (1).csv'
DELIMITER ','
CSV HEADER;

SELECT COUNT(*) FROM online_retail;