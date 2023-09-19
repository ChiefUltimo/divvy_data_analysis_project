-- Top ten most frequented routes by subscribers

SELECT
 from_station_name,
 to_station_name,
 COUNT(trip_id) AS number_of_trips
FROM
 `gda-sandbox-1.cyclistic.cyclistic_trips_v1`
WHERE
usertype = 'Subscriber'
GROUP BY
 from_station_name,
 to_station_name
ORDER BY
 number_of_trips DESC
LIMIT 10;
