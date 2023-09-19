-- This query creates a table for basic descriptive statistics for the dataset

SELECT
 AVG(tripduration_s_) AS avg_ride_length,
 MAX(tripduration_s_) AS max_ride_length,
 MIN(tripduration_s_) AS min_ride_length
FROM `gda-sandbox-1.cyclistic.cyclistic_trips_v1`
