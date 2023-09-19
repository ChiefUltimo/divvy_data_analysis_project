-- This query displays the total trips for each user type, total trips regardless of user type and the percentage of total trips per user type 

WITH TotalRides AS (
 SELECT
   COUNT(trip_id) AS total_number_of_rides
 FROM
   gda-sandbox-1.cyclistic.cyclistic_trips_v1
)

SELECT
 usertype,
 COUNT(trip_id) AS number_of_rides,
 total_number_of_rides,
 ROUND((COUNT(trip_id) * 100.0 / total_number_of_rides), 2) AS percentage_of_total
FROM
 gda-sandbox-1.cyclistic.cyclistic_trips_v1,
 TotalRides
GROUP BY
 usertype, total_number_of_rides
ORDER BY
 usertype;
