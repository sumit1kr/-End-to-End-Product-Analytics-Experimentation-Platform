-- User-level funnel
WITH funnel AS (
    SELECT
        user_id,
        MAX(CASE WHEN event_type = 'page_view' THEN 1 ELSE 0 END) AS page_view,
        MAX(CASE WHEN event_type = 'view_product' THEN 1 ELSE 0 END) AS view_product,
        MAX(CASE WHEN event_type = 'add_to_cart' THEN 1 ELSE 0 END) AS add_to_cart,
        MAX(CASE WHEN event_type = 'checkout' THEN 1 ELSE 0 END) AS checkout
    FROM events
    GROUP BY user_id
),
purchase AS (
    SELECT DISTINCT user_id, 1 AS purchase
    FROM orders
)
SELECT
    COUNT(*) AS total_users,
    SUM(page_view) AS page_view_users,
    SUM(view_product) AS view_product_users,
    SUM(add_to_cart) AS add_to_cart_users,
    SUM(checkout) AS checkout_users,
    SUM(COALESCE(purchase,0)) AS purchase_users
FROM funnel
LEFT JOIN purchase USING (user_id);
