SELECT COUNT(*) FROM online_retail
WHERE CustomerID IS NULL;

SELECT COUNT(*) FROM online_retail
WHERE Quantity <= 0;

SELECT COUNT(*) FROM online_retail
WHERE UnitPrice <= 0;

SELECT COUNT(*) FROM online_retail
WHERE InvoiceNo LIKE 'C%';

CREATE TABLE online_retail_raw AS
SELECT *
FROM online_retail;

DELETE FROM online_retail
WHERE CustomerID IS NULL;

DELETE FROM online_retail
WHERE InvoiceNo LIKE 'C%';

DELETE FROM online_retail
WHERE Quantity <= 0;

DELETE FROM online_retail
WHERE UnitPrice <= 0;

SELECT COUNT(*)
FROM online_retail;