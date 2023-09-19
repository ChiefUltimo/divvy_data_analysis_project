-- Rides by day of week per user type and total 

SELECT
 day_of_week,
 SUM(CASE WHEN usertype = 'Subscriber' THEN 1 ELSE 0 END) AS subscriber_rides,
 SUM(CASE WHEN usertype = 'Customer' THEN 1 ELSE 0 END) AS customer_rides,
 COUNT(trip_id) AS total_rides
FROM
 `gda-sandbox-1.cyclistic.cyclistic_trips_v1`
GROUP BY
 day_of_week
ORDER BY
 day_of_week;
