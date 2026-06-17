CREATE VIEW powerbi_rfm AS
SELECT
    CustomerID,
    Recency,
    Frequency,
    Monetary,
    R_Score,
    F_Score,
    M_Score,
    RFM_Score,
    Segment
FROM customer_segments;

SELECT *
FROM powerbi_rfm
LIMIT 10;

\copy (
    SELECT *
    FROM powerbi_rfm
) TO 'C:/Users/P Surakshith/Downloads/powerbi_rfm.csv'
WITH CSV HEADER