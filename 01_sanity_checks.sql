-- Sanity check: event distribution
SELECT event_type, COUNT(*)
FROM events
GROUP BY event_type
ORDER BY COUNT(*) DESC;
