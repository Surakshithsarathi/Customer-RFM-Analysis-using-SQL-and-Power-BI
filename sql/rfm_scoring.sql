CREATE TABLE rfm_scores AS
SELECT
    CustomerID,
    Recency,
    Frequency,
    Monetary,

    NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,
    NTILE(5) OVER (ORDER BY Frequency ASC) AS F_Score,
    NTILE(5) OVER (ORDER BY Monetary ASC) AS M_Score

FROM customer_rfm;

SELECT *
FROM rfm_scores
LIMIT 10;

ALTER TABLE rfm_scores
ADD COLUMN RFM_Score VARCHAR(3);

UPDATE rfm_scores
SET RFM_Score =
    R_Score::TEXT ||
    F_Score::TEXT ||
    M_Score::TEXT;

SELECT
CustomerID,
R_Score,
F_Score,
M_Score,
RFM_Score
FROM rfm_scores
LIMIT 10;