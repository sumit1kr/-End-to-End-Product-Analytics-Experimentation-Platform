# Overview
OVERVIEW_QUERY = """
SELECT
    (SELECT COUNT(DISTINCT user_id) FROM users) AS total_users,
    (SELECT COUNT(*) FROM events) AS total_events,
    (SELECT COUNT(DISTINCT user_id) FROM orders) AS total_orders
"""

# Funnel
FUNNEL_QUERY = """
SELECT event_type, COUNT(DISTINCT user_id) AS users
FROM events
WHERE event_type IN ('page_view', 'view_product', 'add_to_cart', 'checkout')
GROUP BY event_type
"""

# A/B Test
AB_QUERY = """
SELECT
    e.variant,
    COUNT(DISTINCT e.user_id) AS users,
    COUNT(DISTINCT o.user_id) AS purchasers
FROM experiments e
LEFT JOIN orders o ON e.user_id = o.user_id
GROUP BY e.variant
"""
