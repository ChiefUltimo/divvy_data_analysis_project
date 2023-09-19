-- This query finds the day with the most trips for each user type

WITH RankedDays AS (
   SELECT
       usertype,
       day_of_week,
       COUNT(trip_id) AS number_of_rides,
       ROW_NUMBER() OVER(PARTITION BY usertype ORDER BY COUNT(trip_id) DESC) as rank
   FROM
       gda-sandbox-1.cyclistic.cyclistic_trips_v1
   GROUP BY
       usertype, day_of_week
)


SELECT
   usertype,
   day_of_week,
   number_of_rides
FROM
   RankedDays
WHERE
   rank = 1;
