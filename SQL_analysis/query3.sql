-- Calculates median ride length for both user groups

SELECT
 usertype,
 APPROX_QUANTILES(tripduration_s_, 2)[OFFSET(1)] AS median_ride_length
FROM `gda-sandbox-1.cyclistic.cyclistic_trips_v1`
GROUP BY usertype;
