-- Funnel conversion rates
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
),
purchase AS (
    SELECT COUNT(DISTINCT user_id) AS purchase
    FROM orders
)
SELECT
    page_view,
    view_product,
    add_to_cart,
    checkout,
    purchase,
    ROUND(view_product*100.0/page_view,2) AS view_rate,
    ROUND(add_to_cart*100.0/view_product,2) AS cart_rate,
    ROUND(checkout*100.0/add_to_cart,2) AS checkout_rate,
    ROUND(purchase*100.0/checkout,2) AS purchase_rate
FROM counts, purchase;
