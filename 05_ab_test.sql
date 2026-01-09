-- A/B test conversion comparison
SELECT
    e.variant,
    COUNT(DISTINCT e.user_id) AS users,
    COUNT(DISTINCT o.user_id) AS purchasers,
    ROUND(
        COUNT(DISTINCT o.user_id)*100.0 /
        COUNT(DISTINCT e.user_id), 2
    ) AS conversion_rate
FROM experiments e
LEFT JOIN orders o ON e.user_id = o.user_id
GROUP BY e.variant;
