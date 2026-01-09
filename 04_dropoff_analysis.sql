-- Funnel drop-off analysis
WITH user_events AS (
    SELECT DISTINCT user_id, event_type
    FROM events
),
counts AS (
    SELECT
        COUNT(DISTINCT user_id) FILTER (WHERE event_type = 'page_view') AS page_view,
        COUNT(DISTINCT user_id) FILTER (WHERE event_type = 'view_product') AS view_product,
        COUNT(DISTINCT user_id) FILTER (WHERE event_type = 'add_to_cart') AS add_to_cart,
        COUNT(DISTINCT user_id) FILTER (WHERE event_type = 'checkout') AS checkout
    FROM user_events
)
SELECT
    'Page View → Product View' AS stage,
    ROUND(100 - view_product * 100.0 / page_view, 2) AS dropoff_pct
FROM counts
UNION ALL
SELECT
    'Product View → Add to Cart',
    ROUND(100 - add_to_cart * 100.0 / view_product, 2)
FROM counts
UNION ALL
SELECT
    'Add to Cart → Checkout',
    ROUND(100 - checkout * 100.0 / add_to_cart, 2)
FROM counts;
