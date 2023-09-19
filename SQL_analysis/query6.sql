-- Peak riding hours for casual customers

SELECT
 EXTRACT(HOUR FROM start_time) AS hour_of_day,
 COUNT(trip_id) AS number_of_trips
FROM
 `gda-sandbox-1.cyclistic.cyclistic_trips_v1`
WHERE
usertype = 'Customer'
GROUP BY
 hour_of_day
ORDER BY
 number_of_trips DESC,
 hour_of_day
LIMIT 5;
