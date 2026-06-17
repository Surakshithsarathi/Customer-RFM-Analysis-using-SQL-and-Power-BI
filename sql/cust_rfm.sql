ALTER TABLE online_retail
ADD COLUMN Revenue NUMERIC(12,2);

UPDATE online_retail
SET Revenue = Quantity * UnitPrice;

SELECT
MIN(Revenue),
MAX(Revenue),
SUM(Revenue)
FROM online_retail;

SELECT MAX(InvoiceDate)
FROM online_retail;

CREATE TABLE customer_rfm AS
SELECT
    CustomerID,
    DATE('2011-12-10') - DATE(MAX(InvoiceDate)) AS Recency,
    COUNT(DISTINCT InvoiceNo) AS Frequency,
    ROUND(SUM(Revenue), 2) AS Monetary
FROM online_retail
GROUP BY CustomerID;

SELECT COUNT(*)
FROM customer_rfm;

SELECT *
FROM customer_rfm
LIMIT 10;