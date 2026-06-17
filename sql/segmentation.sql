CREATE TABLE customer_segments AS
SELECT *,
CASE
    WHEN R_Score >= 4 AND F_Score >= 4 AND M_Score >= 4
        THEN 'Champions'

    WHEN R_Score >= 3 AND F_Score >= 4
        THEN 'Loyal Customers'

    WHEN R_Score >= 4 AND F_Score >= 2
        THEN 'Potential Loyalists'

    WHEN R_Score <= 2 AND F_Score >= 3
        THEN 'At Risk'

    WHEN R_Score <= 2 AND F_Score <= 2
        THEN 'Hibernating'

    ELSE 'Others'
END AS Segment
FROM rfm_scores;

SELECT
    Segment,
    COUNT(*) AS Customers
FROM customer_segments
GROUP BY Segment
ORDER BY Customers DESC;

SELECT
    Segment,
    ROUND(SUM(Monetary),2) AS Revenue
FROM customer_segments
GROUP BY Segment
ORDER BY Revenue DESC;