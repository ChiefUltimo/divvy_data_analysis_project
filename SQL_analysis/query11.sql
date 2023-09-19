-- Most popular destinations for casual customers

SELECT
 to_station_name,
 COUNT(trip_id) AS number_of_trips
FROM
 `gda-sandbox-1.cyclistic.cyclistic_trips_v1`
WHERE
 usertype = 'Customer'
GROUP BY
 to_station_name
ORDER BY
 number_of_trips DESC
LIMIT 5;
